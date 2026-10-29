#include "distance_stream.h"
#include <string.h>
#ifdef _MSC_VER
#define STREAM_ALIGN __declspec(align(32))
#else
#define STREAM_ALIGN __attribute__((aligned(32)))
#endif
static STREAM_ALIGN u32 command_line[8];
static STREAM_ALIGN u32 result_line[8];
volatile STREAM_ALIGN distance_stream_diagnostics g_distance_stream_diag;
#define RD(off) io->read(io->user,DISTANCE_DMA_REGS,(off))
#define WR(off,v) io->write(io->user,DISTANCE_DMA_REGS,(off),(v))
#define ERRORS 0x770U
static int valid(const distance_dma_io *io)
{
    return io && io->read && io->write && io->ticks && io->flush &&
        io->invalidate && io->timeout_ticks && !io->fault;
}
static int expired(distance_dma_io *io,uint64_t start)
{
    return io->ticks(io->user)-start>=io->timeout_ticks;
}
static int status(distance_dma_io *io)
{
    u32 value=io->read(io->user,DISTANCE_CONTROL,8U);
    return (value&1U)?-733:0;
}
static int stop(distance_dma_io *io)
{
    uint64_t start=io->ticks(io->user);
    WR(0,0);WR(0x30,0);
    while(!(RD(4)&1U) || !(RD(0x34)&1U) || (RD(0)&5U) || (RD(0x30)&5U)) {
        if(expired(io,start)){io->fault=1;io->stopped=0;return -736;}
    }
    io->stopped=1;return 0;
}
static int address_ok(const void *p,size_t bytes)
{
    uintptr_t address=(uintptr_t)p;
    return p && bytes && address<=UINT32_MAX && bytes-1U<=UINT32_MAX-address;
}
static int tx(distance_dma_io *io,const void *data,size_t bytes)
{
    uint64_t start;
    int rc;
    if(!address_ok(data,bytes) || bytes>0x7fffffU)return -731;
    if(io->flush(io->user,(uintptr_t)data,bytes))return -732;
    WR(4,0x7000U);
    if(RD(4)&(ERRORS|0x7000U))return -734;
    io->stopped=0;WR(0,1U);WR(0x18,(u32)(uintptr_t)data);WR(0x1c,0);
    WR(0x28,(u32)bytes);start=io->ticks(io->user);
    for(;;) {
        u32 s=RD(4);
        if((s|RD(0x34))&ERRORS)return -734;
        rc=status(io);if(rc)return rc;
        if((s&0x1002U)==0x1002U)return 0;
        if(expired(io,start))return -735;
    }
}
static int command(distance_dma_io *io,u32 value)
{
    command_line[0]=value;return tx(io,command_line,4U);
}
static int begin(distance_dma_io *io,const u16 *query)
{
    uint64_t start;
    int rc=status(io);
    if(rc)return rc;
    rc=stop(io);if(rc)return rc;
    io->write(io->user,DISTANCE_CONTROL,0,0);
    WR(0,4);start=io->ticks(io->user);
    while((RD(0)|RD(0x30))&4U)if(expired(io,start))return -735;
    io->write(io->user,DISTANCE_CONTROL,0,1);
    rc=status(io);if(rc)return rc;
    rc=command(io,DISTANCE_STREAM_QUERY);if(rc)return rc;
    rc=tx(io,query,WP4_MATCH_FEATURE_COUNT*sizeof(u16));if(rc)return rc;
    ++g_distance_stream_diag.queries;
    g_distance_stream_diag.query_bytes+=WP4_MATCH_FEATURE_COUNT*sizeof(u16);
    return 0;
}
static int batch(distance_dma_io *io,const u16 *templates,u32 count)
{
    uint64_t start;
    int rc;
    if(!address_ok(result_line,sizeof(result_line)))return -731;
    if(io->flush(io->user,(uintptr_t)result_line,sizeof(result_line)))return -732;
    WR(0x34,0x7000U);
    if(RD(0x34)&(ERRORS|0x7000U))return -734;
    WR(0x30,1);WR(0x48,(u32)(uintptr_t)result_line);WR(0x4c,0);
    WR(0x58,count*sizeof(u32));
    rc=command(io,DISTANCE_STREAM_BATCH|count);if(rc)return rc;
    rc=tx(io,templates,count*WP4_MATCH_FEATURE_COUNT*sizeof(u16));if(rc)return rc;
    start=io->ticks(io->user);
    for(;;) {
        u32 s=RD(0x34);
        if(s&ERRORS)return -734;
        rc=status(io);if(rc)return rc;
        if((s&0x1002U)==0x1002U)break;
        if(expired(io,start))return -735;
    }
    if(io->invalidate(io->user,(uintptr_t)result_line,sizeof(result_line)))return -732;
    ++g_distance_stream_diag.batches;g_distance_stream_diag.templates+=count;
    g_distance_stream_diag.template_bytes+=count*WP4_MATCH_FEATURE_COUNT*sizeof(u16);
    return 0;
}
int distance_stream_match(void *context,const wp4_matcher_t *gallery,
                           const u16 *query,wp4_match_result_t *out)
{
    distance_dma_io *io=(distance_dma_io *)context;
    wp4_match_result_t result={WP4_MATCH_UNKNOWN,0xffffffffU,0xffffffffU,0U,0U};
    u32 identity,total=0;
    uint64_t start;
    int rc;
    if(!valid(io) || !gallery || !query || !out ||
       gallery->identity_count>WP4_MATCH_MAX_IDENTITIES)return -731;
    for(identity=0;identity<gallery->identity_count;++identity) {
        if(gallery->prototype_count[identity]>WP4_MATCH_MAX_PROTOTYPES)return -731;
        total+=gallery->prototype_count[identity];
    }
    if(!total){*out=result;return 0;}
    start=io->ticks(io->user);
    rc=begin(io,query);if(rc)goto failed;
    for(identity=0;identity<gallery->identity_count;++identity) {
        u32 count=gallery->prototype_count[identity],index,best=0xffffffffU;
        if(!count)continue;
        rc=batch(io,&gallery->templates[identity][0][0],count);if(rc)goto failed;
        for(index=0;index<count;++index)if(result_line[index]<best)best=result_line[index];
        if(best<result.best_distance) {
            result.second_distance=result.best_distance;result.best_distance=best;
            result.identity=identity;
        } else if(best<result.second_distance)result.second_distance=best;
    }
    result.margin=result.second_distance-result.best_distance;
    result.accepted=result.identity!=WP4_MATCH_UNKNOWN &&
        (!gallery->max_distance || result.best_distance<=gallery->max_distance) &&
        result.margin>=gallery->min_margin;
    rc=stop(io);if(rc)goto failed;
    g_distance_stream_diag.error=0;g_distance_stream_diag.stopped=io->stopped;
    g_distance_stream_diag.elapsed_ticks=io->ticks(io->user)-start;
    *out=result;return 0;
failed:
    if(rc!=-730) {
        if(!io->fault && stop(io))rc=-736;
        io->write(io->user,DISTANCE_CONTROL,0,0);
    }
    g_distance_stream_diag.error=(u32)rc;
    g_distance_stream_diag.stopped=io->stopped;
    g_distance_stream_diag.elapsed_ticks=io->ticks(io->user)-start;
    return rc;
}
int distance_stream_verify(distance_dma_io *io)
{
    static STREAM_ALIGN u16 query[WP4_MATCH_FEATURE_COUNT];
    static STREAM_ALIGN wp4_matcher_t gallery;
    u32 identity,prototype,bin,test;
    int rc;
    g_distance_stream_diag.selftest_passed=0;
    if(!valid(io))return -731;
    wp4_matcher_init(&gallery,2,0,0);
    gallery.prototype_count[0]=3;gallery.prototype_count[1]=2;
    for(bin=0;bin<WP4_MATCH_FEATURE_COUNT;++bin)query[bin]=(u16)(bin%226U);
    for(identity=0;identity<2;++identity)
        for(prototype=0;prototype<gallery.prototype_count[identity];++prototype)
            for(bin=0;bin<WP4_MATCH_FEATURE_COUNT;++bin)
                gallery.templates[identity][prototype][bin]=(u16)((bin*(prototype+1)+identity*31)%226);
    for(test=0;test<2;++test) {
        if(test)for(bin=0;bin<WP4_MATCH_FEATURE_COUNT;++bin)query[bin]=14400;
        rc=begin(io,query);if(rc)goto failed;
        for(identity=0;identity<2;++identity) {
            rc=batch(io,&gallery.templates[identity][0][0],gallery.prototype_count[identity]);
            if(rc)goto failed;
            for(prototype=0;prototype<gallery.prototype_count[identity];++prototype)
                if(result_line[prototype]!=wp4_match_distance(query,gallery.templates[identity][prototype])) {
                    rc=-738;goto failed;
                }
        }
        rc=stop(io);if(rc)goto failed;
    }
    g_distance_stream_diag.error=0;g_distance_stream_diag.stopped=io->stopped;
    g_distance_stream_diag.selftest_passed=1;return 0;
failed:
    if(rc!=-730) {
        if(!io->fault && stop(io))rc=-736;
        io->write(io->user,DISTANCE_CONTROL,0,0);
    }
    g_distance_stream_diag.error=(u32)rc;g_distance_stream_diag.stopped=io->stopped;
    return rc;
}
