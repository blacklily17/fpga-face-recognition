#include "cnn16_reference.h"
#include <string.h>
#include <math.h>

int c16_infer_reference(const int8_t *input,size_t bytes,const c16_model_t *model,
                       c16_workspace_t *work,int tiled,c16_stage_fn callback,
                       void *context,c5_detection_t *output,size_t capacity,
                       size_t *out_count,c16_stats_t *stats){
    c16_tensor_t source;
    c16_numeric_workspace_t tile;
    c5_decode_config_t decode;
    size_t i,count,n=0,part=0;
    uint32_t stage=0;
    int rc;
    if(out_count)*out_count=0;
    if(stats)memset(stats,0,sizeof *stats);
    if(!input || bytes!=C16_INPUT_BYTES || !model || !work || !output ||
       !out_count || !stats || capacity<C5_MAX_DETECTIONS || (tiled!=0 && tiled!=1))return C5_BAD_ARG;
    source.shape.width=160;source.shape.height=96;source.shape.channels=1;
    source.data=input;source.capacity=bytes;
    tile.input=work->tile_input;tile.input_capacity=sizeof work->tile_input;
    tile.output=work->tile_output;tile.output_capacity=sizeof work->tile_output;
    for(i=0;i<5;++i){
        if(model->conv[i].in_channels!=(i==0?1u:16u) || model->conv[i].out_channels!=16u ||
           model->conv[i].relu!=1u)return C5_BAD_ARG;
        if(tiled)rc=c16_conv3x3_tiled(&source,&model->conv[i],30,tile,work->feature_a,
                                   sizeof work->feature_a,&stats->conv_tiles[i]);
        else{rc=c16_conv3x3_same(&source,&model->conv[i],work->feature_a,sizeof work->feature_a);
             stats->conv_tiles[i]=1;}
        if(rc)return rc;
        source.shape.channels=16;source.data=work->feature_a;source.capacity=sizeof work->feature_a;
        rc=c16_shape_bytes(source.shape,&count);if(rc)return rc;
        if(callback && (rc=callback(context,stage++,source.data,count,source.shape))!=0)return rc;
        if(i==3){
            if(count!=sizeof work->f8)return C5_BAD_ARG;
            memcpy(work->f8,source.data,count);
        }
        if(i<4){
            if(tiled)rc=c16_maxpool2x2_tiled(&source,tile,work->feature_b,sizeof work->feature_b,
                                         &stats->pool_tiles[i]);
            else{rc=c16_maxpool2x2(&source,work->feature_b,sizeof work->feature_b);stats->pool_tiles[i]=1;}
            if(rc)return rc;
            source.shape.width/=2;source.shape.height/=2;
            source.data=work->feature_b;source.capacity=sizeof work->feature_b;
            rc=c16_shape_bytes(source.shape,&count);if(rc)return rc;
            if(callback && (rc=callback(context,stage++,source.data,count,source.shape))!=0)return rc;
        }
    }
    rc=c16_linear_head(work->f8,sizeof work->f8,240,&model->head[0],work->rows,300);
    if(rc)return rc;
    rc=c16_linear_head(work->feature_a,960,60,&model->head[1],work->rows+240,60);
    if(rc)return rc;
    decode.stride=8;decode.grid_width=20;decode.index_offset=0;decode.exp_limit=6;
    decode.anchor_width=model->anchors[0][0];decode.anchor_height=model->anchors[0][1];
    rc=c5_decode_head(work->rows,240,&decode,work->candidates,300,&part,&stats->decode[0]);
    if(rc)return rc;
    n=part;
    decode.stride=16;decode.grid_width=10;decode.index_offset=240;
    decode.anchor_width=model->anchors[1][0];decode.anchor_height=model->anchors[1][1];
    rc=c5_decode_head(work->rows+240,60,&decode,work->candidates+n,300-n,&part,&stats->decode[1]);
    if(rc)return rc;
    n+=part;
    rc=c5_postprocess(work->candidates,n,&model->post,&work->post,output,capacity,out_count,&stats->post);
    if(rc){*out_count=0;return rc;}
    stats->detections=*out_count;return C5_OK;
}

int c16_linear_head(const int8_t *features,size_t bytes,size_t count,
                    const c16_head_params_t *p,c5_head_row_t *rows,size_t capacity){
    size_t i,j,k;
    if(!p || count>300 || bytes!=count*16 || (count && (!features || !rows)))return C5_BAD_ARG;
    if(capacity<count)return C5_EXHAUSTED;
    for(j=0;j<5;++j)if(!isfinite(p->scales[j]) || p->scales[j]<=0)return C5_BAD_ARG;
    for(i=0;i<count;++i)for(j=0;j<5;++j){
        int64_t v=p->bias[j];
        for(k=0;k<16;++k)v+=(int64_t)features[i*16+k]*p->weights[j][k];
        rows[i].value[j]=(double)v*p->scales[j];
        if(!isfinite(rows[i].value[j]))return C5_BAD_ARG;
    }
    return C5_OK;
}
