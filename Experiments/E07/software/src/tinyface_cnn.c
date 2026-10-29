#include "tinyface_cnn.h"
#include "tinyface_weights.h"
#include "haar_resize.h"

#include <math.h>
#include <stddef.h>

#define TF_MAX_ACTIVATIONS (8U * 48U * 48U)

static uint8_t resized[TINYFACE_INPUT_SIZE*TINYFACE_INPUT_SIZE]
    __attribute__((aligned(32)));
static int8_t buffer_a[TF_MAX_ACTIVATIONS] __attribute__((aligned(32)));
static int8_t buffer_b[TF_MAX_ACTIVATIONS] __attribute__((aligned(32)));
static tinyface_conv_backend_fn conv_backend;
static void *conv_backend_context;

void tinyface_cnn_set_conv_backend(tinyface_conv_backend_fn backend,
                                   void *context)
{
    conv_backend=backend;
    conv_backend_context=context;
}

static int32_t requantize(int32_t accumulator, int32_t multiplier)
{
    int64_t product=(int64_t)accumulator*(int64_t)multiplier;
    int64_t value;
    if(product>=0)
        value=(product+(1LL<<(TINYFACE_REQUANT_SHIFT-1)))>>TINYFACE_REQUANT_SHIFT;
    else
        value=-(((-product)+(1LL<<(TINYFACE_REQUANT_SHIFT-1)))>>TINYFACE_REQUANT_SHIFT);
    if(value<0)return 0;
    if(value>127)return 127;
    return (int32_t)value;
}

static int conv3x3_cpu(const int8_t *input,uint32_t height,uint32_t width,
                       uint32_t in_channels,int8_t *output,uint32_t out_channels,
                       const int8_t *weight,const int32_t *bias,
                       const int32_t *multiplier)
{
    uint32_t oc,oy,ox,ic,ky,kx;
    for(oc=0U;oc<out_channels;++oc){
        for(oy=0U;oy<height;++oy){
            for(ox=0U;ox<width;++ox){
                int32_t acc=bias[oc];
                for(ic=0U;ic<in_channels;++ic){
                    for(ky=0U;ky<3U;++ky){
                        int32_t iy=(int32_t)oy+(int32_t)ky-1;
                        if(iy<0 || iy>=(int32_t)height)continue;
                        for(kx=0U;kx<3U;++kx){
                            int32_t ix=(int32_t)ox+(int32_t)kx-1;
                            size_t wi,ii;
                            if(ix<0 || ix>=(int32_t)width)continue;
                            wi=((((size_t)oc*in_channels+ic)*3U+ky)*3U+kx);
                            ii=((size_t)ic*height+(uint32_t)iy)*width+(uint32_t)ix;
                            acc+=(int32_t)input[ii]*(int32_t)weight[wi];
                        }
                    }
                }
                output[((size_t)oc*height+oy)*width+ox]=
                    (int8_t)requantize(acc,multiplier[oc]);
            }
        }
    }
    return 0;
}

static int conv3x3(const int8_t *input,uint32_t height,uint32_t width,
                   uint32_t in_channels,int8_t *output,uint32_t out_channels,
                   const int8_t *weight,const int32_t *bias,
                   const int32_t *multiplier)
{
    if(conv_backend)
        return conv_backend(conv_backend_context,input,height,width,in_channels,
                            output,out_channels,weight,bias,multiplier,
                            TINYFACE_REQUANT_SHIFT);
    return conv3x3_cpu(input,height,width,in_channels,output,out_channels,
                       weight,bias,multiplier);
}

static void maxpool2(const int8_t *input,uint32_t channels,
                     uint32_t height,uint32_t width,int8_t *output)
{
    uint32_t c,y,x,oh=height/2U,ow=width/2U;
    for(c=0U;c<channels;++c){
        for(y=0U;y<oh;++y){
            for(x=0U;x<ow;++x){
                size_t base=((size_t)c*height+2U*y)*width+2U*x;
                int8_t value=input[base];
                if(input[base+1U]>value)value=input[base+1U];
                if(input[base+width]>value)value=input[base+width];
                if(input[base+width+1U]>value)value=input[base+width+1U];
                output[((size_t)c*oh+y)*ow+x]=value;
            }
        }
    }
}

static int infer_resized(int8_t embedding[TINYFACE_EMBEDDING_SIZE])
{
    uint32_t i,o;
    float raw[TINYFACE_EMBEDDING_SIZE],norm=0.0f;
    for(i=0U;i<TINYFACE_INPUT_SIZE*TINYFACE_INPUT_SIZE;++i)
        buffer_b[i]=(int8_t)((int32_t)resized[i]-128);

    if(conv3x3(buffer_b,48U,48U,1U,buffer_a,8U,tinyface_conv1_weight,
               tinyface_conv1_bias,tinyface_conv1_multiplier)!=0)return -583;
    maxpool2(buffer_a,8U,48U,48U,buffer_b);
    if(conv3x3(buffer_b,24U,24U,8U,buffer_a,12U,tinyface_conv2_weight,
               tinyface_conv2_bias,tinyface_conv2_multiplier)!=0)return -583;
    maxpool2(buffer_a,12U,24U,24U,buffer_b);
    if(conv3x3(buffer_b,12U,12U,12U,buffer_a,16U,tinyface_conv3_weight,
               tinyface_conv3_bias,tinyface_conv3_multiplier)!=0)return -583;
    maxpool2(buffer_a,16U,12U,12U,buffer_b);
    if(conv3x3(buffer_b,6U,6U,16U,buffer_a,16U,tinyface_conv4_weight,
               tinyface_conv4_bias,tinyface_conv4_multiplier)!=0)return -583;

    for(o=0U;o<TINYFACE_EMBEDDING_SIZE;++o){
        int32_t acc=tinyface_fc_bias[o];
        const int8_t *weights=&tinyface_fc_weight[o*576U];
        for(i=0U;i<576U;++i)acc+=(int32_t)buffer_a[i]*(int32_t)weights[i];
        raw[o]=(float)acc*tinyface_fc_scale[o];
        norm+=raw[o]*raw[o];
    }
    if(norm<=1.0e-20f)return -582;
    norm=127.0f/sqrtf(norm);
    for(o=0U;o<TINYFACE_EMBEDDING_SIZE;++o){
        float value=raw[o]*norm;
        int32_t quantized=(int32_t)(value+(value>=0.0f?0.5f:-0.5f));
        if(quantized>127)quantized=127;
        if(quantized< -127)quantized=-127;
        embedding[o]=(int8_t)quantized;
    }
    return 0;
}

int tinyface_cnn_infer(const uint8_t *square,uint32_t side,
                       int8_t embedding[TINYFACE_EMBEDDING_SIZE])
{
    int8_t first[TINYFACE_EMBEDDING_SIZE];
    uint32_t x,y,o;
    float norm=0.0f;
    if(square==0 || embedding==0 || side==0U || side>240U)return -580;
    if(haar_resize(square,(int32_t)side,(int32_t)side,resized,
                   (int32_t)TINYFACE_INPUT_SIZE,(int32_t)TINYFACE_INPUT_SIZE)!=0)
        return -581;
    if(infer_resized(first)!=0)return -583;
    for(y=0U;y<TINYFACE_INPUT_SIZE;++y){
        for(x=0U;x<TINYFACE_INPUT_SIZE/2U;++x){
            uint8_t value=resized[y*TINYFACE_INPUT_SIZE+x];
            resized[y*TINYFACE_INPUT_SIZE+x]=
                resized[y*TINYFACE_INPUT_SIZE+TINYFACE_INPUT_SIZE-1U-x];
            resized[y*TINYFACE_INPUT_SIZE+TINYFACE_INPUT_SIZE-1U-x]=value;
        }
    }
    if(infer_resized(embedding)!=0)return -583;
    for(o=0U;o<TINYFACE_EMBEDDING_SIZE;++o){
        float value=(float)first[o]+(float)embedding[o];
        norm+=value*value;
    }
    if(norm<=1.0e-20f)return -582;
    norm=127.0f/sqrtf(norm);
    for(o=0U;o<TINYFACE_EMBEDDING_SIZE;++o){
        float value=((float)first[o]+(float)embedding[o])*norm;
        int32_t quantized=(int32_t)(value+(value>=0.0f?0.5f:-0.5f));
        if(quantized>127)quantized=127;
        if(quantized< -127)quantized=-127;
        embedding[o]=(int8_t)quantized;
    }
    return 0;
}

int tinyface_cnn_infer_cpu(const uint8_t *square,uint32_t side,
                           int8_t embedding[TINYFACE_EMBEDDING_SIZE])
{
    tinyface_conv_backend_fn saved_backend=conv_backend;
    void *saved_context=conv_backend_context;
    int rc;
    conv_backend=0;conv_backend_context=0;
    rc=tinyface_cnn_infer(square,side,embedding);
    conv_backend=saved_backend;conv_backend_context=saved_context;
    return rc;
}
