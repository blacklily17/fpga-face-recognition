#ifndef E02_PS_CONV_H
#define E02_PS_CONV_H

#include <stdint.h>
#include <stddef.h>

/* Private engine kernel. The validated model supplies channels=1 or16,
 * HWC input, OIYX weights (one output channel here), same padding, stride1.
 * Caller supplies a valid (x,y) and immutable, adequately sized buffers.
 *
 * <=144 signed int8 products, each |product|<=16384: every partial dot sum
 * has magnitude<=2359296, so signed32 is exact, independent of sum order.
 * Bias is NOT added here: INT32 bias+dot must first widen to signed64 in
 * the caller, then use the unchanged40-bit-contract quantizer.
 * No pointers before the object are formed, including at padded borders.
 */
static inline int32_t e02_ps_conv_dot3x3(const int8_t *src,
    uint32_t width,uint32_t height,uint32_t x,uint32_t y,
    const int8_t *weights,uint32_t channels)
{
    int32_t sum=0;
    uint32_t i,ky,kx;
    if(x>0 && y>0 && x+1<width && y+1<height){
        const int8_t *a=src+((size_t)(y-1)*width+x-1)*channels;
        const int8_t *b=a+(size_t)width*channels;
        const int8_t *c=b+(size_t)width*channels;
        if(channels==1){
            return a[0]*weights[0]+a[1]*weights[1]+a[2]*weights[2]
                  +b[0]*weights[3]+b[1]*weights[4]+b[2]*weights[5]
                  +c[0]*weights[6]+c[1]*weights[7]+c[2]*weights[8];
        }
        for(i=0;i<16;++i,++a,++b,++c,weights+=9){
            sum+=a[0]*weights[0]+a[16]*weights[1]+a[32]*weights[2]
                +b[0]*weights[3]+b[16]*weights[4]+b[32]*weights[5]
                +c[0]*weights[6]+c[16]*weights[7]+c[32]*weights[8];
        }
    }else{
        for(ky=0;ky<3;++ky){
            int32_t sy=(int32_t)y+(int32_t)ky-1;
            if(sy<0 || sy>=(int32_t)height)continue;
            for(kx=0;kx<3;++kx){
                int32_t sx=(int32_t)x+(int32_t)kx-1;
                const int8_t *pixel,*weight;
                if(sx<0 || sx>=(int32_t)width)continue;
                pixel=src+((size_t)(uint32_t)sy*width+(uint32_t)sx)*channels;
                weight=weights+ky*3+kx;
                for(i=0;i<channels;++i)sum+=(int32_t)pixel[i]*weight[i*9];
            }
        }
    }
    return sum;
}
#endif
