#include "cnn16_dma.h"
#include <string.h>
static uint32_t rd(c16_dma_t *d,unsigned bank,uint32_t off){return d->io.read(d->io.context,bank,off);}
static void wr(c16_dma_t *d,unsigned bank,uint32_t off,uint32_t v){d->io.write(d->io.context,bank,off,v);}
static void fence(c16_dma_t *d){d->io.barrier(d->io.context);}
static uint64_t now(c16_dma_t *d){return d->io.now_us(d->io.context);}
int c16_dma_safe(const c16_dma_t *d){return d && (d->phase==CNN_IDLE || d->phase==CNN_DONE);}
static void stop(c16_dma_t *d,int status){
    /* Quiesce the stream producer before resetting its receiver. Otherwise
     * S2MM can retain beats emitted after reset and corrupt the next packet. */
    d->status=status;wr(d,CNN_REG,CN_COMMAND,CN_ABORT);fence(d);
    wr(d,CNN_DMA,CD_TXCR,4);fence(d);
    d->deadline_us=now(d)+CNN_RESET_TIMEOUT_US;d->phase=CNN_CANCELLING;
}
int c16_dma_init(c16_dma_t *d,const cnn_io_t *io,int8_t *input,size_t in_cap,int8_t *output,size_t out_cap){
    uintptr_t a=(uintptr_t)input,b=(uintptr_t)output;
    if(!d || !io || !input || !output || !io->read || !io->write || !io->clean || !io->invalidate ||
       !io->barrier || !io->now_us || !io->physical || in_cap<16384 || out_cap<14400 ||
       (a&31u) || (b&31u) || (a<=b?b-a<16384:a-b<14400))return CNN_BAD_ARG;
    memset(d,0,sizeof *d);d->io=*io;d->input=input;d->output=output;
    if(rd(d,CNN_REG,CN_ID)!=C16_HW_ID){d->phase=CNN_LOCKED;d->status=CNN_HW_ID;return d->status;}
    return 0;
}
int c16_dma_begin(c16_dma_t *d,const c16_conv_params_t *p){
    if(!d)return CNN_BAD_ARG;
    if(!c16_dma_safe(d))return 1;
    if(p && ((p->in_channels!=1 && p->in_channels!=16) || p->out_channels!=16 ||
       !p->weights || !p->bias || p->weights_count!=16*9*p->in_channels || p->bias_count!=16 ||
       p->shift>63 || p->relu!=1))return CNN_BAD_ARG;
    if(d->token==UINT32_MAX)return C5_EXHAUSTED;
    d->conv=p;d->index=0;d->status=0;d->cycles=0;
    d->config=p?(p->in_channels==16?5u:4u)|(p->shift<<8):7u;
    d->input_bytes=p && p->in_channels==1?1024:16384;d->output_bytes=p?14400:4096;
    d->started_us=now(d);d->deadline_us=d->started_us+CNN_LAYER_TIMEOUT_US;
    ++d->token;d->phase=CNN_LOAD;return 0;
}
void c16_dma_cancel(c16_dma_t *d){
    if(!d || d->phase==CNN_LOCKED || d->phase==CNN_CANCELLING)return;
    if(c16_dma_safe(d)){d->phase=CNN_IDLE;d->status=0;return;}
    stop(d,CNN_CANCELLED);
}
int c16_dma_step(c16_dma_t *d){
    uint64_t t;uint32_t tx,rx,core,src,dst,words,i,n;
    if(!d)return CNN_BAD_ARG;
    t=now(d);
    if(d->phase==CNN_CANCELLING){
        tx=rd(d,CNN_DMA,CD_TXCR);rx=rd(d,CNN_DMA,CD_RXCR);core=rd(d,CNN_REG,CN_STATUS);
        if(!(tx&4u) && !(rx&4u) && (rd(d,CNN_DMA,CD_TXSR)&1u) && (rd(d,CNN_DMA,CD_RXSR)&1u) &&
           !(core&(CN_BUSY|CN_FAULT)) && (core&CN_READY)){fence(d);d->phase=CNN_IDLE;return d->status;}
        if(t>=d->deadline_us){d->status=CNN_RESET_FAILED;d->phase=CNN_LOCKED;return d->status;}
        return 1;
    }
    if(c16_dma_safe(d) || d->phase==CNN_LOCKED)return d->status;
    if(t>=d->deadline_us){stop(d,CNN_TIMEOUT);return 1;}
    switch(d->phase){
    case CNN_LOAD:
        words=d->conv?(uint32_t)d->conv->weights_count/4u:0;
        if(d->index==0){
            if((rd(d,CNN_REG,CN_STATUS)&(CN_READY|CN_BUSY|CN_FAULT))!=CN_READY){stop(d,CNN_HW_FAULT);return 1;}
            wr(d,CNN_REG,CN_CONFIG,d->config);wr(d,CNN_REG,CN_JOB,d->token);
            wr(d,CNN_REG,CN_WADDR,0);wr(d,CNN_REG,CN_BADDR,0);
        }
        for(n=0;d->conv && n<32 && d->index<words+16;++n){
            i=d->index++;
            if(i<words){
                const int8_t *w=d->conv->weights+i*4;
                uint32_t v=(uint8_t)w[0]|((uint32_t)(uint8_t)w[1]<<8)|((uint32_t)(uint8_t)w[2]<<16)|((uint32_t)(uint8_t)w[3]<<24);
                wr(d,CNN_REG,CN_WDATA,v);
            }else wr(d,CNN_REG,CN_BDATA,(uint32_t)d->conv->bias[i-words]);
        }
        if(!d->conv || d->index==words+16){fence(d);d->phase=CNN_ARM;}return 1;
    case CNN_ARM:
        src=d->io.physical(d->io.context,d->input);dst=d->io.physical(d->io.context,d->output);
        if(!src || !dst || (src&31u) || (dst&31u)){stop(d,CNN_BAD_ARG);return 1;}
        d->io.clean(d->io.context,d->input,16384);d->io.clean(d->io.context,d->output,14400);
        d->io.invalidate(d->io.context,d->output,14400);fence(d);
        wr(d,CNN_DMA,CD_TXSR,0x7000u);wr(d,CNN_DMA,CD_RXSR,0x7000u);
        wr(d,CNN_DMA,CD_RXCR,1);wr(d,CNN_DMA,CD_RXADDR,dst);wr(d,CNN_DMA,CD_RXLEN,d->output_bytes);fence(d);
        wr(d,CNN_REG,CN_COMMAND,CN_START);fence(d);
        if(rd(d,CNN_REG,CN_STATUS)&CN_FAULT){stop(d,CNN_HW_FAULT);return 1;}
        wr(d,CNN_DMA,CD_TXCR,1);wr(d,CNN_DMA,CD_TXADDR,src);wr(d,CNN_DMA,CD_TXLEN,d->input_bytes);fence(d);
        d->phase=CNN_WAIT;return 1;
    case CNN_WAIT:
        tx=rd(d,CNN_DMA,CD_TXSR);rx=rd(d,CNN_DMA,CD_RXSR);core=rd(d,CNN_REG,CN_STATUS);
        if((tx|rx)&CD_ERROR_MASK){stop(d,CNN_DMA_FAULT);return 1;}
        if(core&CN_FAULT){stop(d,CNN_HW_FAULT);return 1;}
        if((tx&CD_COMPLETE_MASK)!=CD_COMPLETE_MASK || (rx&CD_COMPLETE_MASK)!=CD_COMPLETE_MASK || (core&(CN_DONE|CN_BUSY))!=CN_DONE)return 1;
        if(rd(d,CNN_REG,CN_DONE_JOB)!=d->token){stop(d,CNN_STALE_JOB);return 1;}
        if(rd(d,CNN_DMA,CD_RXLEN)!=d->output_bytes || rd(d,CNN_REG,CN_INPUT_BYTES)!=d->input_bytes ||
           rd(d,CNN_REG,CN_OUTPUT_BYTES)!=d->output_bytes){stop(d,CNN_LENGTH);return 1;}
        fence(d);d->io.invalidate(d->io.context,d->output,14400);fence(d);
        d->cycles=rd(d,CNN_REG,CN_CYCLES);d->total_us=t-d->started_us;d->phase=CNN_DONE;return 0;
    default:stop(d,CNN_HW_FAULT);return 1;
    }
}
