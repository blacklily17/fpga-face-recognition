#include "face_store.h"
#include "tinyface_classify.h"
#include "cnn_template_bank.h"

#include <stddef.h>
#include <string.h>

static void (*service_hook)(void *);
static void *service_context;

void face_store_bind_service(void (*service)(void *),void *context)
{service_hook=service;service_context=context;}

#if defined(__arm__)
#include "ff.h"

#define CNN_DB_MAGIC           0x314E4E43U
#define CNN_DB_VERSION_LEGACY  1U
#define CNN_DB_VERSION         2U
#define CNN_DB_HEADER_WORDS    10U
#define CNN_DB_V1_RECORD_WORDS 4U
#define CNN_DB_RECORD_WORDS    5U
#define CNN_DB_PRIMARY         "0:/face_cnn.db"
#define CNN_DB_BACKUP          "0:/face_cnn.bak"
#define CNN_DB_TEMP            "0:/face_cnn.tmp"

#ifdef CNN_PL_ACCEL
#define CNN_ACTIVE_BANK CNN_TEMPLATE_BANK_PL
#else
#define CNN_ACTIVE_BANK CNN_TEMPLATE_BANK_PS
#endif

static FATFS filesystem;
static int8_t feature_buffer[TINYFACE_MAX_PROTOTYPES][TINYFACE_EMBEDDING_SIZE]
    __attribute__((aligned(32)));
static int8_t staged_features[TINYFACE_MAX_PROTOTYPES][TINYFACE_EMBEDDING_SIZE]
    __attribute__((aligned(32)));
static cnn_template_bank_t bank_state,bank_next;
static uint32_t current_generation;
static uint32_t staged_bank,staged_slot,staged_label,staged_count;
static uint32_t active_slot,delete_slot;
static int staged_valid,active_valid,delete_valid,servicing;

static void clear_pending(void)
{staged_valid=active_valid=delete_valid=0;}

static void service_point(void)
{if(service_hook && !servicing){servicing=1;service_hook(service_context);servicing=0;}}
static FRESULT serviced_open(FIL *f,const char *p,BYTE a){FRESULT r;service_point();r=f_open(f,p,a);service_point();return r;}
static FRESULT serviced_close(FIL *f){FRESULT r;service_point();r=f_close(f);service_point();return r;}
static FRESULT serviced_seek(FIL *f,uint32_t p){FRESULT r;service_point();r=f_lseek(f,p);service_point();return r;}
static FRESULT serviced_sync(FIL *f){FRESULT r;service_point();r=f_sync(f);service_point();return r;}
static FRESULT serviced_unlink(const char *p){FRESULT r;service_point();r=f_unlink(p);service_point();return r;}
static FRESULT serviced_rename(const char *a,const char *b){FRESULT r;service_point();r=f_rename(a,b);service_point();return r;}
static FRESULT serviced_mount(FATFS *f,const char *p,BYTE a){FRESULT r;service_point();r=f_mount(f,p,a);service_point();return r;}
#define f_open serviced_open
#define f_close serviced_close
#define f_lseek serviced_seek
#define f_sync serviced_sync
#define f_unlink serviced_unlink
#define f_rename serviced_rename
#define f_mount serviced_mount

static uint32_t crc32_update(uint32_t crc,const void *data,size_t length)
{
    const uint8_t *bytes=(const uint8_t *)data;size_t i,budget=0U;
    while(length--!=0U){
        crc^=*bytes++;for(i=0U;i<8U;++i)crc=(crc>>1)^((crc&1U)?0xEDB88320U:0U);
        if(++budget==512U){service_point();budget=0U;}
    }
    return crc;
}

static int read_exact(FIL *file,void *data,UINT length)
{
    uint8_t *p=data;
    while(length){UINT n=length>512U?512U:length,got=0U;FRESULT rc;
        service_point();rc=f_read(file,p,n,&got);service_point();
        if(rc!=FR_OK || got!=n)return -1;
        p+=n;length-=n;
    }
    return 0;
}

static int write_exact(FIL *file,const void *data,UINT length)
{
    const uint8_t *p=data;
    while(length){UINT n=length>512U?512U:length,written=0U;FRESULT rc;
        service_point();rc=f_write(file,p,n,&written);service_point();
        if(rc!=FR_OK || written!=n)return -1;
        p+=n;length-=n;
    }
    return 0;
}

static int mount_media(void)
{return f_mount(&filesystem,"0:/",1U)==FR_OK?0:-560;}

static int read_header(const char *path,uint32_t header[CNN_DB_HEADER_WORDS])
{
    FIL file;uint32_t max_records;int rc=-561;
    if(f_open(&file,path,FA_READ)!=FR_OK)return 0;
    if(read_exact(&file,header,sizeof(uint32_t)*CNN_DB_HEADER_WORDS)==0){
        max_records=header[1]==CNN_DB_VERSION_LEGACY?TINYFACE_MAX_IDENTITIES:
                    TINYFACE_MAX_IDENTITIES*CNN_TEMPLATE_BANK_COUNT;
        if(header[0]==CNN_DB_MAGIC &&
           (header[1]==CNN_DB_VERSION_LEGACY || header[1]==CNN_DB_VERSION) &&
           header[4]==TINYFACE_EMBEDDING_SIZE &&
           header[5]==TINYFACE_MAX_PROTOTYPES && header[3]<=max_records &&
           (crc32_update(0xFFFFFFFFU,header,
                         sizeof(uint32_t)*(CNN_DB_HEADER_WORDS-1U))^
            0xFFFFFFFFU)==header[9])rc=1;
    }
    (void)f_close(&file);return rc;
}

static int decode_record(const uint32_t *record,uint32_t version,
                         uint32_t *slot,uint32_t *label,uint32_t *bank,
                         uint32_t *count,uint32_t *bytes)
{
    if(version==CNN_DB_VERSION_LEGACY){
        *slot=record[0];*label=record[1];*bank=CNN_TEMPLATE_BANK_LEGACY;
        *count=record[2];*bytes=record[3];
    }else{
        *slot=record[0];*label=record[1];*bank=record[2];
        *count=record[3];*bytes=record[4];
    }
    if(*slot>=TINYFACE_MAX_IDENTITIES || *label==0U || *label>255U ||
       *bank>=CNN_TEMPLATE_BANK_COUNT || *count==0U ||
       *count>TINYFACE_MAX_PROTOTYPES ||
       *bytes!=*count*TINYFACE_EMBEDDING_SIZE)return -1;
    return 0;
}

static int validate_file(const char *path,uint32_t header[CNN_DB_HEADER_WORDS])
{
    FIL file;uint32_t record[CNN_DB_RECORD_WORDS],crc=0xFFFFFFFFU;
    uint32_t seen[CNN_TEMPLATE_BANK_COUNT]={0U,0U,0U};
    uint32_t labels[TINYFACE_MAX_IDENTITIES]={0U};
    uint32_t index,expected=0U,record_words;int header_rc=read_header(path,header);
    if(header_rc<=0)return header_rc;
    record_words=header[1]==CNN_DB_VERSION_LEGACY?CNN_DB_V1_RECORD_WORDS:CNN_DB_RECORD_WORDS;
    if(f_open(&file,path,FA_READ)!=FR_OK)return -561;
    if(f_lseek(&file,sizeof(uint32_t)*CNN_DB_HEADER_WORDS)!=FR_OK){(void)f_close(&file);return -561;}
    for(index=0U;index<header[3];++index){
        uint32_t slot,label,bank,count,bytes;
        if(read_exact(&file,record,record_words*sizeof(uint32_t))!=0 ||
           decode_record(record,header[1],&slot,&label,&bank,&count,&bytes)!=0 ||
           (seen[bank]&(1U<<slot))!=0U ||
           (labels[slot]!=0U && labels[slot]!=label) ||
           read_exact(&file,feature_buffer,bytes)!=0){(void)f_close(&file);return -562;}
        seen[bank]|=1U<<slot;labels[slot]=label;
        expected+=record_words*sizeof(uint32_t)+bytes;
        crc=crc32_update(crc,record,record_words*sizeof(uint32_t));
        crc=crc32_update(crc,feature_buffer,bytes);
    }
    (void)f_close(&file);crc^=0xFFFFFFFFU;
    return expected==header[6] && crc==header[7]?1:-563;
}

static int apply_active_bank(void)
{
    uint32_t slot;
    for(slot=0U;slot<TINYFACE_MAX_IDENTITIES;++slot){
        const int8_t *features;uint32_t bank,label,count;
        (void)tinyface_classify_remove(slot);
        features=cnn_template_bank_select(&bank_state,CNN_ACTIVE_BANK,slot,
                                          &bank,&label,&count);
        if(features && tinyface_classify_enroll_multi(slot,label,features,count)!=0)
            return -564;
    }
    return 0;
}

static int apply_file(const char *path,const uint32_t header[CNN_DB_HEADER_WORDS])
{
    FIL file;uint32_t record[CNN_DB_RECORD_WORDS],index,record_words;
    cnn_template_bank_init(&bank_next);
    record_words=header[1]==CNN_DB_VERSION_LEGACY?CNN_DB_V1_RECORD_WORDS:CNN_DB_RECORD_WORDS;
    if(f_open(&file,path,FA_READ)!=FR_OK)return -561;
    if(f_lseek(&file,sizeof(uint32_t)*CNN_DB_HEADER_WORDS)!=FR_OK){(void)f_close(&file);return -561;}
    for(index=0U;index<header[3];++index){
        uint32_t slot,label,bank,count,bytes;
        if(read_exact(&file,record,record_words*sizeof(uint32_t))!=0 ||
           decode_record(record,header[1],&slot,&label,&bank,&count,&bytes)!=0 ||
           read_exact(&file,feature_buffer,bytes)!=0 ||
           cnn_template_bank_set(&bank_next,bank,slot,label,
                                 &feature_buffer[0][0],count)!=0){
            (void)f_close(&file);return -564;}
    }
    (void)f_close(&file);bank_state=bank_next;clear_pending();
    if(apply_active_bank()!=0)return -564;
    current_generation=header[2];return 0;
}

int face_store_load(void)
{
    uint32_t primary[CNN_DB_HEADER_WORDS],backup[CNN_DB_HEADER_WORDS];
    int p,b,use_backup=0,rc;
    if(mount_media()!=0)return -560;
    p=validate_file(CNN_DB_PRIMARY,primary);b=validate_file(CNN_DB_BACKUP,backup);
    if(p<=0 && b<=0){cnn_template_bank_init(&bank_state);clear_pending();
        return p==0 && b==0?0:-563;}
    if(b>0 && (p<=0 || (int32_t)(backup[2]-primary[2])>0))use_backup=1;
    rc=apply_file(use_backup?CNN_DB_BACKUP:CNN_DB_PRIMARY,use_backup?backup:primary);
    return rc==0?(use_backup?2:1):rc;
}

int face_store_stage_active_identity(uint32_t slot)
{
    if(slot>=TINYFACE_MAX_IDENTITIES || active_valid || delete_valid)return -568;
    active_slot=slot;active_valid=1;return 0;
}

int face_store_stage_cnn_bank(uint32_t bank,uint32_t slot,uint32_t label,
                              const int8_t *features,uint32_t count)
{
    size_t bytes;
    if((bank!=CNN_TEMPLATE_BANK_PS && bank!=CNN_TEMPLATE_BANK_PL) ||
       slot>=TINYFACE_MAX_IDENTITIES || label==0U || label>255U || !features ||
       count==0U || count>TINYFACE_MAX_PROTOTYPES || staged_valid || delete_valid)
        return -568;
    bytes=(size_t)count*TINYFACE_EMBEDDING_SIZE;
    memcpy(&staged_features[0][0],features,bytes);
    staged_bank=bank;staged_slot=slot;staged_label=label;staged_count=count;
    staged_valid=1;return 0;
}

int face_store_stage_delete_identity(uint32_t slot)
{
    if(slot>=TINYFACE_MAX_IDENTITIES || active_valid || staged_valid || delete_valid)
        return -568;
    delete_slot=slot;delete_valid=1;return 0;
}

static int prepare_next(void)
{
    bank_next=bank_state;
    if(delete_valid && cnn_template_bank_remove(&bank_next,delete_slot)!=0)return -568;
    if(active_valid){
        uint32_t label,count=tinyface_classify_template_count(active_slot);
        if(count==0U || tinyface_classify_export_identity(active_slot,&label,
           &feature_buffer[0][0],TINYFACE_MAX_PROTOTYPES,&count)!=0 ||
           cnn_template_bank_set(&bank_next,CNN_ACTIVE_BANK,active_slot,label,
                                 &feature_buffer[0][0],count)!=0)return -565;
    }
    if(staged_valid && cnn_template_bank_set(&bank_next,staged_bank,staged_slot,
       staged_label,&staged_features[0][0],staged_count)!=0)return -565;
    if(active_valid && staged_valid && active_slot==staged_slot &&
       CNN_ACTIVE_BANK!=staged_bank)
        (void)cnn_template_bank_clear(&bank_next,CNN_TEMPLATE_BANK_LEGACY,active_slot);
    return 0;
}

static int database_stats(const cnn_template_bank_t *store,uint32_t *records,
                          uint32_t *payload,uint32_t *payload_crc)
{
    uint32_t bank,slot,record[CNN_DB_RECORD_WORDS];
    uint32_t crc=0xFFFFFFFFU,nrecords=0U,bytes=0U;
    for(bank=0U;bank<CNN_TEMPLATE_BANK_COUNT;++bank){
        for(slot=0U;slot<TINYFACE_MAX_IDENTITIES;++slot){
            const int8_t *features;uint32_t label,count,data_bytes;
            features=cnn_template_bank_get(store,bank,slot,&label,&count);
            if(!features)continue;
            data_bytes=count*TINYFACE_EMBEDDING_SIZE;
            record[0]=slot;record[1]=label;record[2]=bank;
            record[3]=count;record[4]=data_bytes;
            crc=crc32_update(crc,record,sizeof record);
            crc=crc32_update(crc,features,data_bytes);
            bytes+=sizeof record+data_bytes;++nrecords;
        }
    }
    *records=nrecords;*payload=bytes;*payload_crc=crc^0xFFFFFFFFU;return 0;
}

static int write_database(const char *path,uint32_t generation,
                          const cnn_template_bank_t *store)
{
    FIL file;uint32_t header[CNN_DB_HEADER_WORDS]={0U};
    uint32_t record[CNN_DB_RECORD_WORDS],bank,slot;int rc;
    rc=database_stats(store,&header[3],&header[6],&header[7]);if(rc)return rc;
    header[0]=CNN_DB_MAGIC;header[1]=CNN_DB_VERSION;header[2]=generation;
    header[4]=TINYFACE_EMBEDDING_SIZE;header[5]=TINYFACE_MAX_PROTOTYPES;
    header[8]=CNN_ACTIVE_BANK;
    header[9]=crc32_update(0xFFFFFFFFU,header,
                           sizeof(uint32_t)*(CNN_DB_HEADER_WORDS-1U))^0xFFFFFFFFU;
    if(f_open(&file,path,FA_CREATE_ALWAYS|FA_WRITE)!=FR_OK)return -566;
    if(write_exact(&file,header,sizeof header)!=0){(void)f_close(&file);return -566;}
    for(bank=0U;bank<CNN_TEMPLATE_BANK_COUNT;++bank){
        for(slot=0U;slot<TINYFACE_MAX_IDENTITIES;++slot){
            const int8_t *features;uint32_t label,count,data_bytes;
            features=cnn_template_bank_get(store,bank,slot,&label,&count);
            if(!features)continue;
            data_bytes=count*TINYFACE_EMBEDDING_SIZE;
            record[0]=slot;record[1]=label;record[2]=bank;
            record[3]=count;record[4]=data_bytes;
            if(write_exact(&file,record,sizeof record)!=0 ||
               write_exact(&file,features,data_bytes)!=0){
                (void)f_close(&file);return -566;}
        }
    }
    rc=f_sync(&file)==FR_OK?0:-566;if(f_close(&file)!=FR_OK)rc=-566;return rc;
}

int face_store_save(void)
{
#ifdef FACEBOX_AB
    return -734;
#endif
    uint32_t next=current_generation+1U;int rc;if(next==0U)next=1U;
    if(mount_media()!=0){clear_pending();return -560;}
    rc=prepare_next();if(rc){clear_pending();return rc;}
    (void)f_unlink(CNN_DB_TEMP);
    rc=write_database(CNN_DB_TEMP,next,&bank_next);
    if(rc){(void)f_unlink(CNN_DB_TEMP);clear_pending();return rc;}
    (void)f_unlink(CNN_DB_BACKUP);(void)f_rename(CNN_DB_PRIMARY,CNN_DB_BACKUP);
    if(f_rename(CNN_DB_TEMP,CNN_DB_PRIMARY)!=FR_OK){
        (void)f_rename(CNN_DB_BACKUP,CNN_DB_PRIMARY);clear_pending();return -567;}
    bank_state=bank_next;current_generation=next;clear_pending();return 0;
}

uint32_t face_store_generation(void){return current_generation;}

#else
int face_store_load(void){return 0;}
int face_store_save(void){return 0;}
uint32_t face_store_generation(void){return 0U;}
int face_store_stage_active_identity(uint32_t slot){(void)slot;return 0;}
int face_store_stage_cnn_bank(uint32_t bank,uint32_t slot,uint32_t label,
                              const int8_t *features,uint32_t count)
{(void)bank;(void)slot;(void)label;(void)features;(void)count;return 0;}
int face_store_stage_delete_identity(uint32_t slot){(void)slot;return 0;}
#endif
