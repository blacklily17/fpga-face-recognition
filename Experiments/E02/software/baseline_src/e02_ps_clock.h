#ifndef E02_PS_CLOCK_H
#define E02_PS_CLOCK_H
#include <stdint.h>

/* Exact replacement for ticks/ticks_per_us; caller's compile-time scale must
 * be positive, as in the original BSP conversion. It deliberately preserves
 * floor(COUNTS_PER_SECOND/1000000), not an alternative Hz/time calibration.
 *
 * The current333 scale otherwise emits __aeabi_uldivmod in every A9 work-unit
 * timestamp. Base2^16 long division uses three constant32-bit divisions:
 * high32 = qh*333+r, r<333; each lower limb partial<=333*65536-1<2^25,
 * hence qmid/qlo<=65535 and the quotient limbs cannot overlap. This is exact
 * over ALL uint64 inputs; no reciprocal approximation or elapsed-time cache.
 * Other positive scales retain the original division. Timer read frequency,
 * monotonicity/deadline checks and clock source are unchanged.
 */
static inline uint64_t e02_ps_ticks_to_us(uint64_t ticks,uint64_t ticks_per_us)
{
    uint32_t high,low,qh,rem,part,qmid,qlo;
    if(ticks_per_us!=333u)return ticks/ticks_per_us;
    high=(uint32_t)(ticks>>32);low=(uint32_t)ticks;
    qh=high/333u;rem=high-qh*333u;
    part=(rem<<16)|(low>>16);
    qmid=part/333u;rem=part-qmid*333u;
    part=(rem<<16)|(low&65535u);
    qlo=part/333u;
    return ((uint64_t)qh<<32)|((uint64_t)qmid<<16)|qlo;
}
#endif
