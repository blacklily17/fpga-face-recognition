#ifdef LIVE_USE_CNN
#include "face_store_cnn.inc"
#else
#include "face_store.h"
#include "wp4_classify.h"

#include <stddef.h>
#include <string.h>
static void (*service_hook)(void *);
static void *service_context;
void face_store_bind_service(void (*service)(void *),void *context)
{
    service_hook=service;service_context=context;
}

#if defined(__arm__)
#include "ff.h"
static int servicing;
static void service_point(void)
{
    if(service_hook && !servicing){servicing=1;service_hook(service_context);servicing=0;}
}
/* Do not replace FATFS, retry a transaction, or reinterpret cancellation here. */
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

#define FACE_DB_MAGIC       0x34424446U /* "FDB4", little endian */
#define FACE_DB_VERSION     1U
#define FACE_DB_HEADER_WORDS 10U
#define FACE_DB_RECORD_WORDS 4U
#define FACE_DB_PRIMARY     "0:/face.db"
#define FACE_DB_BACKUP      "0:/face.bak"
#define FACE_DB_TEMP        "0:/face.tmp"

static FATFS filesystem;
static uint16_t feature_buffer[WP4_MATCH_MAX_PROTOTYPES]
                               [WP4_MATCH_FEATURE_COUNT]
    __attribute__((aligned(32)));
static uint32_t current_generation;

static uint32_t crc32_update(uint32_t crc, const void *data, size_t length)
{
    const uint8_t *bytes=(const uint8_t *)data;
    size_t i;
    size_t budget=0;
    while(length--!=0U){
        crc^=*bytes++;
        for(i=0U;i<8U;++i)
            crc=(crc>>1)^((crc&1U)?0xEDB88320U:0U);
        if(++budget==512U){service_point();budget=0;}
    }
    return crc;
}

static int read_exact(FIL *file, void *data, UINT length)
{
    uint8_t *p=data;
    while(length){
        UINT n=length>512U?512U:length,read_count=0;FRESULT rc;
        service_point();rc=f_read(file,p,n,&read_count);service_point();
        if(rc!=FR_OK || read_count!=n)return -1;
        p+=n;length-=n;
    }
    return 0;
}

static int write_exact(FIL *file, const void *data, UINT length)
{
    const uint8_t *p=data;
    while(length){
        UINT n=length>512U?512U:length,write_count=0;FRESULT rc;
        service_point();rc=f_write(file,p,n,&write_count);service_point();
        if(rc!=FR_OK || write_count!=n)return -1;
        p+=n;length-=n;
    }
    return 0;
}

static int mount_media(void)
{
    return (f_mount(&filesystem,"0:/",1U)==FR_OK)?0:-560;
}

static int read_header(const char *path, uint32_t header[FACE_DB_HEADER_WORDS])
{
    FIL file;
    int rc=-561;
    if(f_open(&file,path,FA_READ)!=FR_OK)return 0;
    if(read_exact(&file,header,sizeof(uint32_t)*FACE_DB_HEADER_WORDS)==0 &&
       header[0]==FACE_DB_MAGIC && header[1]==FACE_DB_VERSION &&
       header[4]==WP4_MATCH_FEATURE_COUNT &&
       header[5]==WP4_MATCH_MAX_PROTOTYPES &&
       header[3]<=WP4_MATCH_MAX_IDENTITIES &&
       (crc32_update(0xFFFFFFFFU,header,
                     sizeof(uint32_t)*(FACE_DB_HEADER_WORDS-1U))^
                     0xFFFFFFFFU)==header[9])
        rc=1;
    (void)f_close(&file);
    return rc;
}

static int validate_file(const char *path,
                         uint32_t header[FACE_DB_HEADER_WORDS])
{
    FIL file;
    uint32_t record[FACE_DB_RECORD_WORDS],crc=0xFFFFFFFFU,seen=0U;
    uint32_t index,expected_payload=0U;
    int header_rc=read_header(path,header);
    if(header_rc<=0)return header_rc;
    if(f_open(&file,path,FA_READ)!=FR_OK)return -561;
    if(f_lseek(&file,sizeof(uint32_t)*FACE_DB_HEADER_WORDS)!=FR_OK){
        (void)f_close(&file);return -561;
    }
    for(index=0U;index<header[3];++index){
        uint32_t bytes;
        if(read_exact(&file,record,sizeof(record))!=0){
            (void)f_close(&file);return -562;
        }
        bytes=record[2]*WP4_MATCH_FEATURE_COUNT*sizeof(uint16_t);
        if(record[0]>=WP4_MATCH_MAX_IDENTITIES || record[1]==0U ||
           record[1]>255U || record[2]==0U ||
           record[2]>WP4_MATCH_MAX_PROTOTYPES || record[3]!=bytes ||
           (seen&(1U<<record[0]))!=0U ||
           read_exact(&file,feature_buffer,bytes)!=0){
            (void)f_close(&file);return -562;
        }
        seen|=1U<<record[0];
        expected_payload+=sizeof(record)+bytes;
        crc=crc32_update(crc,record,sizeof(record));
        crc=crc32_update(crc,feature_buffer,bytes);
    }
    (void)f_close(&file);
    crc^=0xFFFFFFFFU;
    return (expected_payload==header[6] && crc==header[7])?1:-563;
}

static int apply_file(const char *path,
                      const uint32_t header[FACE_DB_HEADER_WORDS])
{
    FIL file;
    uint32_t record[FACE_DB_RECORD_WORDS],slot,index;
    if(f_open(&file,path,FA_READ)!=FR_OK)return -561;
    if(f_lseek(&file,sizeof(uint32_t)*FACE_DB_HEADER_WORDS)!=FR_OK){
        (void)f_close(&file);return -561;
    }
    for(slot=0U;slot<WP4_MATCH_MAX_IDENTITIES;++slot)
        (void)wp4_classify_remove(slot);
    for(index=0U;index<header[3];++index){
        uint32_t bytes;
        if(read_exact(&file,record,sizeof(record))!=0){
            (void)f_close(&file);return -562;
        }
        bytes=record[3];
        if(read_exact(&file,feature_buffer,bytes)!=0 ||
           wp4_classify_enroll_multi(record[0],record[1],
              &feature_buffer[0][0],record[2])!=0){
            (void)f_close(&file);return -564;
        }
    }
    (void)f_close(&file);
    current_generation=header[2];
    return 0;
}

int face_store_load(void)
{
    uint32_t primary[FACE_DB_HEADER_WORDS],backup[FACE_DB_HEADER_WORDS];
    int p,b,use_backup=0,rc;
    if(mount_media()!=0)return -560;
    p=validate_file(FACE_DB_PRIMARY,primary);
    b=validate_file(FACE_DB_BACKUP,backup);
    if(p<=0 && b<=0)return (p==0 && b==0)?0:-563;
    if(b>0 && (p<=0 || (int32_t)(backup[2]-primary[2])>0))use_backup=1;
    rc=apply_file(use_backup?FACE_DB_BACKUP:FACE_DB_PRIMARY,
                  use_backup?backup:primary);
    return (rc==0)?(use_backup?2:1):rc;
}

static int database_stats(uint32_t *record_count,uint32_t *payload_bytes,
                          uint32_t *payload_crc)
{
    uint32_t slot,label,count,record[FACE_DB_RECORD_WORDS];
    uint32_t crc=0xFFFFFFFFU,records=0U,bytes=0U;
    for(slot=0U;slot<WP4_MATCH_MAX_IDENTITIES;++slot){
        count=wp4_classify_template_count(slot);
        if(count==0U)continue;
        if(wp4_classify_export_identity(slot,&label,&feature_buffer[0][0],
             WP4_MATCH_MAX_PROTOTYPES,&count)!=0)return -565;
        record[0]=slot;record[1]=label;record[2]=count;
        record[3]=count*WP4_MATCH_FEATURE_COUNT*sizeof(uint16_t);
        crc=crc32_update(crc,record,sizeof(record));
        crc=crc32_update(crc,feature_buffer,record[3]);
        bytes+=sizeof(record)+record[3];++records;
    }
    *record_count=records;*payload_bytes=bytes;*payload_crc=crc^0xFFFFFFFFU;
    return 0;
}

static int write_database(const char *path,uint32_t generation)
{
    FIL file;
    uint32_t header[FACE_DB_HEADER_WORDS]={0U};
    uint32_t record[FACE_DB_RECORD_WORDS],slot,label,count;
    int rc=database_stats(&header[3],&header[6],&header[7]);
    if(rc!=0)return rc;
    header[0]=FACE_DB_MAGIC;header[1]=FACE_DB_VERSION;header[2]=generation;
    header[4]=WP4_MATCH_FEATURE_COUNT;header[5]=WP4_MATCH_MAX_PROTOTYPES;
    header[8]=0U;
    header[9]=crc32_update(0xFFFFFFFFU,header,
                           sizeof(uint32_t)*(FACE_DB_HEADER_WORDS-1U))^
                           0xFFFFFFFFU;
    if(f_open(&file,path,FA_CREATE_ALWAYS|FA_WRITE)!=FR_OK)return -566;
    if(write_exact(&file,header,sizeof(header))!=0){
        (void)f_close(&file);return -566;
    }
    for(slot=0U;slot<WP4_MATCH_MAX_IDENTITIES;++slot){
        count=wp4_classify_template_count(slot);
        if(count==0U)continue;
        if(wp4_classify_export_identity(slot,&label,&feature_buffer[0][0],
             WP4_MATCH_MAX_PROTOTYPES,&count)!=0){
            (void)f_close(&file);return -565;
        }
        record[0]=slot;record[1]=label;record[2]=count;
        record[3]=count*WP4_MATCH_FEATURE_COUNT*sizeof(uint16_t);
        if(write_exact(&file,record,sizeof(record))!=0 ||
           write_exact(&file,feature_buffer,record[3])!=0){
            (void)f_close(&file);return -566;
        }
    }
    rc=(f_sync(&file)==FR_OK)?0:-566;
    if(f_close(&file)!=FR_OK)rc=-566;
    if(rc!=0)return rc;
    return 0;
}

int face_store_save(void)
{
#ifdef FACEBOX_AB
    // 双重保护：测试程序任何路径均不得写人脸库。
    return -734;
#endif
    uint32_t next=current_generation+1U;
    int rc;
    if(next==0U)next=1U;
    if(mount_media()!=0)return -560;
    (void)f_unlink(FACE_DB_TEMP);
    rc=write_database(FACE_DB_TEMP,next);
    if(rc!=0){(void)f_unlink(FACE_DB_TEMP);return rc;}
    (void)f_unlink(FACE_DB_BACKUP);
    (void)f_rename(FACE_DB_PRIMARY,FACE_DB_BACKUP);
    if(f_rename(FACE_DB_TEMP,FACE_DB_PRIMARY)!=FR_OK){
        (void)f_rename(FACE_DB_BACKUP,FACE_DB_PRIMARY);
        return -567;
    }
    current_generation=next;
    return 0;
}

uint32_t face_store_generation(void)
{
    return current_generation;
}

#else

int face_store_load(void){return 0;}
int face_store_save(void){return 0;}
uint32_t face_store_generation(void){return 0U;}

#endif
#endif
