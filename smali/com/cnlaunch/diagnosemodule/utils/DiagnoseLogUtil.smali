.class public Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
.super Ljava/lang/Object;
.source "DiagnoseLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$FileSizeOverflowException;,
        Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;,
        Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;,
        Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;,
        Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;
    }
.end annotation


# static fields
.field public static final ACTION_CNLAUNCH_DIAGNOSELOG_FILESIZE_OVERFLOW:Ljava/lang/String; = "com.cnlaunch.intent.action.DIAGNOSELOG_FILESIZE_OVERFLOW"

.field public static final ACTION_CNLAUNCH_DIAGNOSELOG_IO_EXCEPTION:Ljava/lang/String; = "com.cnlaunch.intent.action.DIAGNOSELOG_IO_EXCEPTION"

.field private static final DATA_TYPE_DSTRING:B = 0x1t

.field private static final DATA_TYPE_DTIME:B = 0x2t

.field public static final INFORMATION_TYPE_DIAGNOSE_BLUETOOTH_EXCEPTION_PACKAGE:B = 0x5t

.field public static final INFORMATION_TYPE_DIAGNOSE_BLUETOOTH_RECEIVE_PACKAGE:B = 0x4t

.field public static final INFORMATION_TYPE_DIAGNOSE_BLUETOOTH_SEND_PACKAGE:B = 0x3t

.field public static final INFORMATION_TYPE_DIAGNOSE_DISPLAY_PACKAGE:B = 0x1t

.field public static final INFORMATION_TYPE_DIAGNOSE_EXCEPTION_PACKAGE:B = 0x6t

.field public static final INFORMATION_TYPE_DIAGNOSE_FEEDBACK_PACKAGE:B = 0x2t

.field static final LOG_FILE_MAX_LENGTH:I = 0x1900000

.field static final RESERVE_FILE_COUNT:I = 0xa

.field public static final SPT_AUDI_DATASTREAM_ID:I = 0xd

.field public static final SPT_DATASTREAM_ID_EX:I = 0x22

.field public static final SPT_EX_DATASTREAM_ID:I = 0x12

.field public static final SPT_VW_DATASTREAM_ID:I = 0x13

.field static final TAG:Ljava/lang/String; = "DiagnoseLogUntil"

.field private static instance:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeedbackStreamFirstFrameFlag:Z

.field private mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

.field private mStreamFirstFrameFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->instance:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    .line 80
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    .line 82
    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static byteToInt([B)I
    .locals 6
    .parameter "b"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, s:I
    const/4 v5, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    .line 282
    .local v1, s0:I
    const/4 v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    .line 283
    .local v2, s1:I
    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    .line 284
    .local v3, s2:I
    const/4 v5, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v4, v5, 0xff

    .line 285
    .local v4, s3:I
    shl-int/lit8 v4, v4, 0x18

    .line 286
    shl-int/lit8 v3, v3, 0x10

    .line 287
    shl-int/lit8 v2, v2, 0x8

    .line 288
    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int v0, v5, v4

    .line 289
    return v0
.end method

.method public static byteToLong([B)J
    .locals 22
    .parameter "b"

    .prologue
    .line 229
    const-wide/16 v2, 0x0

    .line 230
    .local v2, s:J
    const/16 v20, 0x0

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v4, v0

    .line 232
    .local v4, s0:J
    const/16 v20, 0x1

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v6, v0

    .line 233
    .local v6, s1:J
    const/16 v20, 0x2

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v8, v0

    .line 234
    .local v8, s2:J
    const/16 v20, 0x3

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v10, v0

    .line 235
    .local v10, s3:J
    const/16 v20, 0x4

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    .line 237
    .local v12, s4:J
    const/16 v20, 0x5

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v14, v0

    .line 238
    .local v14, s5:J
    const/16 v20, 0x6

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 239
    .local v16, s6:J
    const/16 v20, 0x7

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 243
    .local v18, s7:J
    const/16 v20, 0x8

    shl-long v6, v6, v20

    .line 244
    const/16 v20, 0x10

    shl-long v8, v8, v20

    .line 245
    const/16 v20, 0x18

    shl-long v10, v10, v20

    .line 246
    const/16 v20, 0x20

    shl-long v12, v12, v20

    .line 247
    const/16 v20, 0x28

    shl-long v14, v14, v20

    .line 248
    const/16 v20, 0x30

    shl-long v16, v16, v20

    .line 249
    const/16 v20, 0x38

    shl-long v18, v18, v20

    .line 250
    or-long v20, v4, v6

    or-long v20, v20, v8

    or-long v20, v20, v10

    or-long v20, v20, v12

    or-long v20, v20, v14

    or-long v20, v20, v16

    or-long v2, v20, v18

    .line 251
    return-wide v2
.end method

.method public static byteToShort([B)S
    .locals 4
    .parameter "b"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, s:S
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v1, v3

    .line 319
    .local v1, s0:S
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v2, v3

    .line 320
    .local v2, s1:S
    shl-int/lit8 v3, v2, 0x8

    int-to-short v2, v3

    .line 321
    or-int v3, v1, v2

    int-to-short v0, v3

    .line 322
    return v0
.end method

.method public static getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->instance:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;-><init>()V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->instance:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    .line 95
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->instance:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    return-object v0
.end method

.method public static intToByte(I)[B
    .locals 5
    .parameter "number"

    .prologue
    .line 262
    move v2, p0

    .line 263
    .local v2, temp:I
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 264
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 268
    return-object v0

    .line 265
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 266
    shr-int/lit8 v2, v2, 0x8

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static longToByte(J)[B
    .locals 8
    .parameter "number"

    .prologue
    const/16 v7, 0x8

    .line 213
    move-wide v2, p0

    .line 214
    .local v2, temp:J
    new-array v0, v7, [B

    .line 215
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 219
    return-object v0

    .line 216
    :cond_0
    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0xff

    and-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->byteValue()B

    move-result v4

    aput-byte v4, v0, v1

    .line 217
    shr-long/2addr v2, v7

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private offerLogPackage(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;)Z
    .locals 1
    .parameter "logPackage"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->getLogLinkedList()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shortToByte(S)[B
    .locals 5
    .parameter "number"

    .prologue
    .line 300
    move v2, p0

    .line 301
    .local v2, temp:I
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 302
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 306
    return-object v0

    .line 303
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    and-int/lit16 v4, v2, 0xff

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 304
    shr-int/lit8 v2, v2, 0x8

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLogRecordHead()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->getLogRecordHead()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v0

    return-object v0
.end method

.method public initRecord(ZLjava/lang/String;)V
    .locals 2
    .parameter "diagnoseLogSwitch"
    .parameter "diagnoseLogPath"

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->stopThread()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    .line 185
    :cond_0
    new-instance v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;-><init>(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    .line 186
    iput-boolean v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    .line 187
    iput-boolean v1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    .line 188
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public startRecord()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->initLogRecordHead()V

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->start()V

    .line 175
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->stopThread()V

    .line 198
    monitor-enter p0

    .line 200
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 204
    :cond_0
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeBytes([BB)V
    .locals 9
    .parameter "command"
    .parameter "type"

    .prologue
    const/16 v8, 0x12

    const/16 v4, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 109
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->getDiagnoseLogSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mLogRecordThread:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;

    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordThread;->isIOException()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    if-ne p2, v6, :cond_5

    .line 114
    aget-byte v3, p1, v5

    if-eq v3, v4, :cond_2

    .line 115
    aget-byte v3, p1, v5

    if-eq v3, v8, :cond_2

    .line 116
    aget-byte v3, p1, v5

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2

    .line 117
    aget-byte v3, p1, v5

    const/16 v4, 0x22

    if-ne v3, v4, :cond_4

    .line 118
    :cond_2
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    if-eqz v3, :cond_0

    .line 119
    iput-boolean v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    .line 146
    :cond_3
    :goto_1
    :try_start_0
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 147
    .local v0, content:[B
    new-instance v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;

    .line 148
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 147
    invoke-direct {v2, p2, v0, v3, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;-><init>(B[BJ)V

    .line 149
    .local v2, logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    invoke-direct {p0, v2}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->offerLogPackage(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0           #content:[B
    .end local v2           #logPackage:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogPackage;
    :catch_0
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    if-nez v3, :cond_3

    .line 125
    iput-boolean v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mStreamFirstFrameFlag:Z

    goto :goto_1

    .line 128
    :cond_5
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 129
    aget-byte v3, p1, v5

    if-eq v3, v4, :cond_6

    .line 130
    aget-byte v3, p1, v5

    if-eq v3, v8, :cond_6

    .line 131
    aget-byte v3, p1, v5

    const/16 v4, 0x13

    if-eq v3, v4, :cond_6

    .line 132
    aget-byte v3, p1, v5

    const/16 v4, 0x22

    if-ne v3, v4, :cond_7

    .line 133
    :cond_6
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    if-eqz v3, :cond_0

    .line 134
    iput-boolean v7, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    goto :goto_1

    .line 139
    :cond_7
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    if-nez v3, :cond_3

    .line 140
    iput-boolean v6, p0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->mFeedbackStreamFirstFrameFlag:Z

    goto :goto_1
.end method
