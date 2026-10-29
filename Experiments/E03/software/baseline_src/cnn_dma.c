#include "cnn_dma.h"
#include <string.h>
static uint32_t rd(cnn_dma_t *d,unsigned bank,uint32_t off){return d->io.read(d->io.context,bank,off);}
static void wr(cnn_dma_t *d,unsigned bank,uint32_t off,uint32_t value){d->io.write(d->io.context,bank,off,value);}
static void fence(cnn_dma_t *d){d->io.barrier(d->io.context);}
static uint64_t now(cnn_dma_t *d){return d->io.now_us(d->io.context);}
int cnn_dma_safe(const cnn_dma_t *d){return d && (d->phase==CNN_IDLE || d->phase==CNN_DONE);}
static void stop(cnn_dma_t *d,int status,cnn_phase_t phase){
    d->status=status;d->result_valid=0;
    /* Stop the producer first, then clear both DMA channels and buffered beats. */
    wr(d,CNN_REG,CN_COMMAND,CN_ABORT);fence(d);wr(d,CNN_DMA,CD_TXCR,4);fence(d);
    d->deadline_us=now(d)+CNN_RESET_TIMEOUT_US;d->phase=phase;
}
int cnn_dma_init(cnn_dma_t *d,const cnn_io_t *io,cnn_buffers_t *buffers,const cnn_model_t *model){
    if(!d || !io || !buffers || !model || !io->read || !io->write || !io->clean || !io->invalidate ||
       !io->barrier || !io->now_us || !io->physical || !model->conv1_w || !model->conv2_w ||
       !model->conv1_b || !model->conv2_b || !model->head_w || !model->head_b ||
       model->shift1>63 || model->shift2>63 || model->head_features!=288 ||
       ((uintptr_t)buffers->input&31u) || ((uintptr_t)buffers->pool1&31u) || ((uintptr_t)buffers->pool2&31u))return CNN_BAD_ARG;
    memset(d,0,sizeof *d);d->io=*io;d->buffers=buffers;d->model=model;
    if(rd(d,CNN_REG,CN_ID)!=0x434e0012u){d->phase=CNN_LOCKED;d->status=CNN_HW_ID;return d->status;}
    stop(d,0,CNN_RESETTING);return 0;
}
int cnn_dma_begin(cnn_dma_t *d,const uint8_t gray[96000],int x,int y,int w,int h){
    if(!d || !gray)return CNN_BAD_ARG;
    if(!cnn_dma_safe(d))return 1;
    if(cnn_crop32(gray,400,240,400,x,y,w,h,d->buffers->input))return CNN_BAD_ARG;
    d->result_valid=0;d->status=0;d->margin=0;d->face=0;d->layer=0;d->parameter_index=0;
    d->layer_cycles[0]=d->layer_cycles[1]=0;d->layer_us[0]=d->layer_us[1]=0;
    d->started_us=now(d);d->layer_started_us=d->started_us;
    d->deadline_us=d->started_us+CNN_LAYER_TIMEOUT_US;d->phase=CNN_LOAD;
    return 0;
}
void cnn_dma_cancel(cnn_dma_t *d){
    if(!d || d->phase==CNN_LOCKED)return;
    if(d->phase==CNN_CANCELLING || d->phase==CNN_RESETTING)return;
    if(cnn_dma_safe(d)){d->result_valid=0;d->phase=CNN_IDLE;return;}
    stop(d,CNN_CANCELLED,CNN_CANCELLING);
}
static int pending_reset(cnn_dma_t *d,uint64_t time){
    uint32_t tx=rd(d,CNN_DMA,CD_TXCR),rx=rd(d,CNN_DMA,CD_RXCR);
    d->tx_status=rd(d,CNN_DMA,CD_TXSR);d->rx_status=rd(d,CNN_DMA,CD_RXSR);
    d->core_status=rd(d,CNN_REG,CN_STATUS);
    if(!(tx&4u) && !(rx&4u) && (d->tx_status&1u) && (d->rx_status&1u) &&
       !(d->core_status&(CN_BUSY|CN_FAULT)) && (d->core_status&CN_READY)){
        fence(d);d->phase=CNN_IDLE;return d->status;
    }
    if(time>=d->deadline_us){d->phase=CNN_LOCKED;d->status=CNN_RESET_FAILED;return d->status;}
    return 1;
}
static uint32_t packed(const int8_t *w,unsigned i){
    return (uint32_t)(uint8_t)w[i] | ((uint32_t)(uint8_t)w[i+1]<<8) |
           ((uint32_t)(uint8_t)w[i+2]<<16) | ((uint32_t)(uint8_t)w[i+3]<<24);
}
int cnn_dma_step(cnn_dma_t *d){
    uint64_t time;
    unsigned words,n,index;
    const int8_t *weights;const int32_t *bias;
    int8_t *input,*output;size_t input_size,output_size,input_capacity,output_capacity;
    uint32_t src,dst;
    if(!d)return CNN_BAD_ARG;
    time=now(d);
    if(d->phase==CNN_RESETTING || d->phase==CNN_CANCELLING)return pending_reset(d,time);
    if(d->phase==CNN_IDLE || d->phase==CNN_DONE || d->phase==CNN_LOCKED)return d->status;
    if(time>=d->deadline_us){stop(d,CNN_TIMEOUT,CNN_CANCELLING);return 1;}
    switch(d->phase){
    case CNN_LOAD:
        words=d->layer?144u:18u;weights=d->layer?d->model->conv2_w:d->model->conv1_w;
        bias=d->layer?d->model->conv2_b:d->model->conv1_b;
        if(d->parameter_index==0){
            if((rd(d,CNN_REG,CN_STATUS)&(CN_READY|CN_BUSY|CN_FAULT))!=CN_READY){stop(d,CNN_HW_FAULT,CNN_CANCELLING);return 1;}
            wr(d,CNN_REG,CN_CONFIG,(d->layer?1u:0u)|((uint32_t)(d->layer?d->model->shift2:d->model->shift1)<<8));
            wr(d,CNN_REG,CN_WADDR,0);wr(d,CNN_REG,CN_BADDR,0);
            ++d->token;if(!d->token)++d->token;wr(d,CNN_REG,CN_JOB,d->token);
        }
        for(n=0;n<8 && d->parameter_index<words+8;n++){
            index=d->parameter_index++;
            if(index<words)wr(d,CNN_REG,CN_WDATA,packed(weights,index*4));
            else wr(d,CNN_REG,CN_BDATA,(uint32_t)bias[index-words]);
        }
        if(d->parameter_index==words+8){fence(d);d->phase=CNN_ARM;}
        return 1;
    case CNN_ARM:
        input=d->layer?d->buffers->pool1:d->buffers->input;output=d->layer?d->buffers->pool2:d->buffers->pool1;
        input_size=d->layer?1800u:1024u;output_size=d->layer?288u:1800u;
        input_capacity=d->layer?1824u:1024u;output_capacity=d->layer?288u:1824u;
        src=d->io.physical(d->io.context,input);dst=d->io.physical(d->io.context,output);
        if(!src || !dst || (src&31u) || (dst&31u)){stop(d,CNN_BAD_ARG,CNN_CANCELLING);return 1;}
        d->io.clean(d->io.context,input,input_capacity);
        d->io.clean(d->io.context,output,output_capacity);
        d->io.invalidate(d->io.context,output,output_capacity);fence(d);
        wr(d,CNN_DMA,CD_TXSR,0x7000u);wr(d,CNN_DMA,CD_RXSR,0x7000u);
        wr(d,CNN_DMA,CD_RXCR,1);wr(d,CNN_DMA,CD_RXADDR,dst);
        wr(d,CNN_DMA,CD_RXLEN,(uint32_t)output_size);fence(d);
        wr(d,CNN_REG,CN_COMMAND,CN_START);fence(d);
        if(rd(d,CNN_REG,CN_STATUS)&CN_FAULT){stop(d,CNN_HW_FAULT,CNN_CANCELLING);return 1;}
        wr(d,CNN_DMA,CD_TXCR,1);wr(d,CNN_DMA,CD_TXADDR,src);
        wr(d,CNN_DMA,CD_TXLEN,(uint32_t)input_size);fence(d);
        d->phase=CNN_WAIT;return 1;
    case CNN_WAIT:
        d->tx_status=rd(d,CNN_DMA,CD_TXSR);d->rx_status=rd(d,CNN_DMA,CD_RXSR);d->core_status=rd(d,CNN_REG,CN_STATUS);
        if((d->tx_status|d->rx_status)&CD_ERROR_MASK){stop(d,CNN_DMA_FAULT,CNN_CANCELLING);return 1;}
        if(d->core_status&CN_FAULT){stop(d,CNN_HW_FAULT,CNN_CANCELLING);return 1;}
        if((d->tx_status&CD_COMPLETE_MASK)!=CD_COMPLETE_MASK || (d->rx_status&CD_COMPLETE_MASK)!=CD_COMPLETE_MASK ||
           (d->core_status&(CN_DONE|CN_BUSY))!=CN_DONE)return 1;
        if(rd(d,CNN_REG,CN_DONE_JOB)!=d->token){stop(d,CNN_STALE_JOB,CNN_CANCELLING);return 1;}
        input_size=d->layer?1800u:1024u;output_size=d->layer?288u:1800u;
        if(rd(d,CNN_DMA,CD_RXLEN)!=output_size || rd(d,CNN_REG,CN_INPUT_BYTES)!=input_size ||
           rd(d,CNN_REG,CN_OUTPUT_BYTES)!=output_size){stop(d,CNN_LENGTH,CNN_CANCELLING);return 1;}
        output=d->layer?d->buffers->pool2:d->buffers->pool1;output_capacity=d->layer?288u:1824u;
        fence(d);d->io.invalidate(d->io.context,output,output_capacity);fence(d);
        d->layer_cycles[d->layer]=rd(d,CNN_REG,CN_CYCLES);d->layer_us[d->layer]=time-d->layer_started_us;
        if(!d->layer){d->layer=1;d->parameter_index=0;d->layer_started_us=time;d->deadline_us=time+CNN_LAYER_TIMEOUT_US;d->phase=CNN_LOAD;}
        else d->phase=CNN_CLASSIFY;
        return 1;
    case CNN_CLASSIFY:
        if(cnn_classify(d->buffers->pool2,d->model,&d->margin,&d->face)){stop(d,CNN_HW_FAULT,CNN_CANCELLING);return 1;}
        d->total_us=time-d->started_us;d->result_valid=1;d->phase=CNN_DONE;return 0;
    default:stop(d,CNN_HW_FAULT,CNN_CANCELLING);return 1;
    }
}
