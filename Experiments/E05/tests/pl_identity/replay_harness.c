#include "tinyface_cnn.h"
#include <stdio.h>
#include <string.h>
static FILE *inputs,*outputs;
static unsigned calls;
static int backend(void *ctx,const int8_t *input,uint32_t h,uint32_t w,uint32_t ic,int8_t *output,uint32_t oc,const int8_t *weights,const int32_t *bias,const int32_t *mult,uint32_t shift){
 (void)ctx;(void)weights;(void)bias;(void)mult;
 static const unsigned dims[4][4]={{48,48,1,8},{24,24,8,12},{12,12,12,16},{6,6,16,16}};
 unsigned i,layer=calls%4,v;
 if(calls>=8||h!=dims[layer][0]||w!=dims[layer][1]||ic!=dims[layer][2]||oc!=dims[layer][3]||shift!=20)return -1;
 for(i=0;i<h*w*ic;i++){int e=fgetc(inputs);if(e<0 || (unsigned char)input[i]!=(unsigned)e){fprintf(stderr,"input mismatch call=%u byte=%u expected=%d actual=%u\n",calls,i,e,(unsigned char)input[i]);return -2;}}
 for(i=0;i<h*w*oc;i++){if(fscanf(outputs,"%x",&v)!=1)return -3;output[i]=(int8_t)v;}
 ++calls;return 0;
}
int main(void){
 unsigned i;uint8_t image[2304];int8_t pl[32],cpu[32];FILE *f=fopen("image.bin","rb");
 if(!f||fread(image,1,sizeof image,f)!=sizeof image)return 1;
fclose(f);
 inputs=fopen("replay_inputs.bin","rb");outputs=fopen("actual_outputs.hex","r");if(!inputs||!outputs)return 2;
 tinyface_cnn_set_conv_backend(backend,0);if(tinyface_cnn_infer(image,48,pl)||calls!=8)return 3;
 tinyface_cnn_set_conv_backend(0,0);if(tinyface_cnn_infer(image,48,cpu))return 4;
 for(i=0;i<32;i++)if(pl[i]!=cpu[i]){fprintf(stderr,"feature coord=%u expected=%d actual=%d\n",i,cpu[i],pl[i]);return 5;}
 puts("RTL_REPLAY_FULL_FEATURE_PASS dimensions=32 calls=8 input_elements_checked=18432");
 for(i=0;i<32;i++)printf("%d%c",pl[i],i==31?'\n':' ');
 fclose(inputs);fclose(outputs);return 0;
}
