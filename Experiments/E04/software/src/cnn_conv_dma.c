#include "cnn_conv_dma.h"

#include <string.h>

#ifdef _MSC_VER
#define CNN_DMA_ALIGN __declspec(align(32))
#else
#define CNN_DMA_ALIGN __attribute__((aligned(32)))
#endif

#define CNN_MAX_INPUT_BYTES  36864U
#define CNN_MAX_WEIGHT_BYTES 2304U
#define CNN_MAX_OUTPUT_BYTES 36864U
#define CNN_MAX_CHANNELS     16U
#define CNN_HEADER_BYTES     16U
#define CNN_TX_MAX_BYTES (CNN_HEADER_BYTES+CNN_MAX_INPUT_BYTES+CNN_MAX_WEIGHT_BYTES+128U)
#define DMA_ERRORS 0x770U

static CNN_DMA_ALIGN uint8_t tx_buffer[CNN_TX_MAX_BYTES];
static CNN_DMA_ALIGN uint8_t rx_buffer[CNN_MAX_OUTPUT_BYTES];
volatile CNN_DMA_ALIGN cnn_conv_dma_diagnostics g_cnn_conv_dma_diag;

#define RD(off) io->read(io->user,CNN_CONV_DMA_REGS,(off))
#define WR(off,value) io->write(io->user,CNN_CONV_DMA_REGS,(off),(value))

static int expired(cnn_conv_dma_io *io,uint64_t start)
{return io->ticks(io->user)-start>=io->timeout_ticks;}

static int valid(const cnn_conv_dma_io *io)
{
    return io && io->read && io->write && io->ticks && io->flush &&
        io->invalidate && io->timeout_ticks && !io->fault;
}

static int address_ok(const void *data,size_t bytes)
{
    uintptr_t address=(uintptr_t)data;
    return data && bytes && address<=UINT32_MAX && bytes-1U<=UINT32_MAX-address;
}

static void store_u32(uint8_t *target,uint32_t value)
{memcpy(target,&value,sizeof value);}

static int stop(cnn_conv_dma_io *io)
{
    uint64_t start=io->ticks(io->user);
    WR(0U,0U);WR(0x30U,0U);
    while(!(RD(4U)&1U) || !(RD(0x34U)&1U) ||
          (RD(0U)&5U) || (RD(0x30U)&5U)){
        if(expired(io,start)){io->fault=1U;io->stopped=0U;return -749;}
    }
    io->stopped=1U;return 0;
}

static int reset(cnn_conv_dma_io *io)
{
    uint64_t start;
    io->write(io->user,CNN_CONV_CONTROL,0U,0U);
    WR(0U,4U);start=io->ticks(io->user);
    while((RD(0U)|RD(0x30U))&4U)if(expired(io,start))return -742;
    if(stop(io))return -749;
    io->write(io->user,CNN_CONV_CONTROL,0U,1U);
    if(io->read(io->user,CNN_CONV_CONTROL,8U)&1U)return -743;
    return 0;
}

int cnn_conv_dma_run(void *context,const int8_t *input,uint32_t height,
                     uint32_t width,uint32_t in_channels,int8_t *output,
                     uint32_t out_channels,const int8_t *weight,
                     const int32_t *bias,const int32_t *multiplier,
                     uint32_t requant_shift)
{
    cnn_conv_dma_io *io=(cnn_conv_dma_io *)context;
    uint32_t input_bytes,weight_bytes,output_bytes,tx_bytes,offset,index;
    uint64_t start;
    int rc=-741;
    if(!valid(io) || !input || !output || !weight || !bias || !multiplier ||
       !height || height>48U || !width || width>48U || !in_channels ||
       in_channels>CNN_MAX_CHANNELS || !out_channels ||
       out_channels>CNN_MAX_CHANNELS || !requant_shift || requant_shift>31U)
        return -740;
    input_bytes=height*width*in_channels;
    weight_bytes=9U*in_channels*out_channels;
    output_bytes=height*width*out_channels;
    if(input_bytes>CNN_MAX_INPUT_BYTES || weight_bytes>CNN_MAX_WEIGHT_BYTES ||
       output_bytes>CNN_MAX_OUTPUT_BYTES)return -740;
    tx_bytes=CNN_HEADER_BYTES+input_bytes+weight_bytes+8U*out_channels;
    if(tx_bytes>sizeof tx_buffer || !address_ok(tx_buffer,tx_bytes) ||
       !address_ok(rx_buffer,output_bytes))return -740;

    store_u32(tx_buffer,0x314e4e43U);
    store_u32(tx_buffer+4U,(height<<16)|width);
    store_u32(tx_buffer+8U,(out_channels<<16)|in_channels);
    store_u32(tx_buffer+12U,requant_shift);
    offset=CNN_HEADER_BYTES;
    memcpy(tx_buffer+offset,input,input_bytes);offset+=input_bytes;
    memcpy(tx_buffer+offset,weight,weight_bytes);offset+=weight_bytes;
    for(index=0U;index<out_channels;++index,offset+=4U)
        store_u32(tx_buffer+offset,(uint32_t)bias[index]);
    for(index=0U;index<out_channels;++index,offset+=4U)
        store_u32(tx_buffer+offset,(uint32_t)multiplier[index]);
    if(offset!=tx_bytes)return -740;

    start=io->ticks(io->user);
    rc=reset(io);if(rc)goto failed;
    if(io->flush(io->user,(uintptr_t)tx_buffer,tx_bytes) ||
       io->flush(io->user,(uintptr_t)rx_buffer,output_bytes)){rc=-744;goto failed;}
    WR(4U,0x7000U);WR(0x34U,0x7000U);
    if((RD(4U)|RD(0x34U))&(DMA_ERRORS|0x7000U)){rc=-745;goto failed;}
    io->stopped=0U;
    WR(0x30U,1U);WR(0x48U,(uint32_t)(uintptr_t)rx_buffer);WR(0x4cU,0U);
    WR(0x58U,output_bytes);
    WR(0U,1U);WR(0x18U,(uint32_t)(uintptr_t)tx_buffer);WR(0x1cU,0U);
    WR(0x28U,tx_bytes);
    for(;;){
        uint32_t tx=RD(4U),rx=RD(0x34U),status;
        if((tx|rx)&DMA_ERRORS){rc=-745;goto failed;}
        status=io->read(io->user,CNN_CONV_CONTROL,8U);
        if(status&1U){rc=-743;goto failed;}
        if((tx&0x1002U)==0x1002U && (rx&0x1002U)==0x1002U)break;
        if(expired(io,start)){rc=-746;goto failed;}
    }
    if(stop(io)){rc=-749;goto failed_locked;}
    if(io->invalidate(io->user,(uintptr_t)rx_buffer,output_bytes)){
        rc=-744;goto failed;
    }
    memcpy(output,rx_buffer,output_bytes);
    g_cnn_conv_dma_diag.magic=0x434e4e44U;
    ++g_cnn_conv_dma_diag.calls;
    g_cnn_conv_dma_diag.last_error=0U;
    g_cnn_conv_dma_diag.last_tx_bytes=tx_bytes;
    g_cnn_conv_dma_diag.last_rx_bytes=output_bytes;
    g_cnn_conv_dma_diag.last_ticks=io->ticks(io->user)-start;
    return 0;
failed:
    if(!io->fault && stop(io))rc=-749;
    io->write(io->user,CNN_CONV_CONTROL,0U,0U);
failed_locked:
    g_cnn_conv_dma_diag.magic=0x434e4e44U;
    ++g_cnn_conv_dma_diag.calls;++g_cnn_conv_dma_diag.errors;
    g_cnn_conv_dma_diag.last_error=(uint32_t)rc;
    g_cnn_conv_dma_diag.last_ticks=io->ticks(io->user)-start;
    return rc;
}

int cnn_conv_dma_selftest(cnn_conv_dma_io *io)
{
    static const int8_t input[9]={-3,2,4,5,-6,7,8,9,-10};
    static const int8_t weight[9]={0,0,0,0,2,0,0,0,0};
    static const int8_t expected[9]={0,5,9,11,0,15,17,19,0};
    static const int32_t bias[1]={1};
    static const int32_t multiplier[1]={1<<20};
    int8_t output[9];int rc;
    if(!valid(io))return -740;
    g_cnn_conv_dma_diag.selftest_passed=0U;
    rc=cnn_conv_dma_run(io,input,3U,3U,1U,output,1U,weight,bias,multiplier,20U);
    if(rc)return rc;
    if(memcmp(output,expected,sizeof output)!=0)return -748;
    g_cnn_conv_dma_diag.selftest_passed=1U;return 0;
}
