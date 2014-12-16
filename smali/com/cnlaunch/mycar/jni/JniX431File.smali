.class public Lcom/cnlaunch/mycar/jni/JniX431File;
.super Ljava/lang/Object;
.source "JniX431File.java"


# static fields
.field public static final DSUNIT_DTCS:Ljava/lang/String; = "dtcs"

.field public static final DSUNIT_TIME:Ljava/lang/String; = "dstime"

.field public static final DS_TYPE_UNKNOWN:I = 0x0

.field public static final LSX_ERR_ALLOC_MEMORY:I = -0x6

.field public static final LSX_ERR_FILE_NOTFOUND:I = -0x3

.field public static final LSX_ERR_HIGH_FILEVERSION:I = -0x2

.field public static final LSX_ERR_INCORRECT_FORMAT:I = -0x4

.field public static final LSX_ERR_INVALID_PARAMETER:I = -0x5

.field public static final LSX_ERR_LOW_FILEVERSION:I = -0x1

.field public static final LSX_ERR_OK:I = 0x0

.field public static final LSX_FILE_READABLE:I = 0x1

.field public static final LSX_FILE_V2:I = 0x1000

.field public static final LSX_FILE_V3:I = 0x2000

.field public static final LSX_FILE_WRITABLE:I = 0x2

.field public static final MAX_DS_COLNUMBER:I = 0x12c

.field public static final MODE_READ:I = 0x1

.field public static final MODE_WRITE:I = 0x2

.field public static final PRODUCT_ADM:I = 0x13

.field public static final PRODUCT_CRECORDER:I = 0x15

.field public static final PRODUCT_PCCENTER:I = 0x12

.field public static final PRODUCT_PCLINK:I = 0x11

.field public static final PRODUCT_RECORDER:I = 0x14

.field public static final PRODUCT_UNKNOWN:I = 0x0

.field public static final PRODUCT_X431:I = 0x1

.field public static final PRODUCT_X431INFINITE:I = 0x2

.field public static final PRODUCT_X431PC:I = 0x5

.field public static final PRODUCT_X431TOOL:I = 0x4

.field public static final PRODUCT_X431TOP:I = 0x3

.field public static final RECORD_DATASTREAM:I = 0x2

.field public static final RECORD_DSBASICS:I = 0x20

.field public static final RECORD_DTC:I = 0x1

.field public static final RECORD_FREEZEFRAME:I = 0x8

.field public static final RECORD_READINESS:I = 0x10

.field public static final RECORD_VERSIONINFO:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "x431file"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native lsx_checkfile(Lcom/cnlaunch/mycar/jni/X431String;)I
.end method

.method public native lsx_close(I)I
.end method

.method public native lsx_deinit(I)I
.end method

.method public native lsx_init()I
.end method

.method public native lsx_open(ILcom/cnlaunch/mycar/jni/X431String;ILcom/cnlaunch/mycar/jni/X431Integer;)I
.end method

.method public native lsx_read_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I
.end method

.method public native lsx_read_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I
.end method

.method public native lsx_read_fileversion(I)S
.end method

.method public native lsx_read_langcode(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I
.end method

.method public native lsx_read_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I
.end method

.method public native lsx_read_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I
.end method

.method public native lsx_rec_finishnewgroup(ILjava/lang/String;)I
.end method

.method public native lsx_rec_readalltype(I)I
.end method

.method public native lsx_rec_readds(I[Ljava/lang/String;I)I
.end method

.method public native lsx_rec_readdscolcount(I)I
.end method

.method public native lsx_rec_readdsitemcount(I)I
.end method

.method public native lsx_rec_readdsname(I[Ljava/lang/String;I)I
.end method

.method public native lsx_rec_readdstype(I[SI)I
.end method

.method public native lsx_rec_readdsunit(I[Ljava/lang/String;I)I
.end method

.method public native lsx_rec_readdtc(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I
.end method

.method public native lsx_rec_readdtccount(I)I
.end method

.method public native lsx_rec_readdtcinfo(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;)I
.end method

.method public native lsx_rec_readffcolcount(I)I
.end method

.method public native lsx_rec_readffitemcount(I)I
.end method

.method public native lsx_rec_readfirstdsitem(I)I
.end method

.method public native lsx_rec_readfirstdtcitem(I)I
.end method

.method public native lsx_rec_readfirstffitem(I)I
.end method

.method public native lsx_rec_readfirstitem(I)I
.end method

.method public native lsx_rec_readfreezeframe(ILcom/cnlaunch/mycar/jni/X431String;[Ljava/lang/String;I)I
.end method

.method public native lsx_rec_readgroupcount(I)I
.end method

.method public native lsx_rec_readgroupid(II)I
.end method

.method public native lsx_rec_readgroupinfo(ILcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431String;Lcom/cnlaunch/mycar/jni/X431Integer;)I
.end method

.method public native lsx_rec_readitemtype(I)I
.end method

.method public native lsx_rec_readlastdsitem(I)I
.end method

.method public native lsx_rec_readlastdtcitem(I)I
.end method

.method public native lsx_rec_readlastffitem(I)I
.end method

.method public native lsx_rec_readlastitem(I)I
.end method

.method public native lsx_rec_readnextdtcitem(I)I
.end method

.method public native lsx_rec_readnextffitem(I)I
.end method

.method public native lsx_rec_readnextitem(I)I
.end method

.method public native lsx_rec_readprevdtcitem(I)I
.end method

.method public native lsx_rec_readprevffitem(I)I
.end method

.method public native lsx_rec_readprevitem(I)I
.end method

.method public native lsx_rec_readrelndsitem(II)I
.end method

.method public native lsx_rec_writeds(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I
.end method

.method public native lsx_rec_writedsbasics(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[II)I
.end method

.method public native lsx_rec_writedtc(ILjava/lang/String;Lcom/cnlaunch/mycar/jni/LSX_STRING;Lcom/cnlaunch/mycar/jni/LSX_STRING;Ljava/lang/String;)I
.end method

.method public native lsx_rec_writefreezeframe(ILjava/lang/String;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;[I[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I
.end method

.method public native lsx_rec_writenewgroup(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native lsx_rec_writereadiness(I[Lcom/cnlaunch/mycar/jni/LSX_STRING;[Lcom/cnlaunch/mycar/jni/LSX_STRING;I)I
.end method

.method public native lsx_rec_writevi(ILcom/cnlaunch/mycar/jni/LSX_STRING;)I
.end method

.method public native lsx_selectreadtextlang(ILjava/lang/String;)I
.end method

.method public native lsx_write_autoinfo(ILcom/cnlaunch/mycar/jni/LSX_AUTOINFO;)I
.end method

.method public native lsx_write_baseinfo(ILcom/cnlaunch/mycar/jni/LSX_BASEINFO;)I
.end method

.method public native lsx_write_spinfo(ILcom/cnlaunch/mycar/jni/LSX_SPINFO;)I
.end method

.method public native lsx_write_userinfo(ILcom/cnlaunch/mycar/jni/LSX_USERINFO;)I
.end method
