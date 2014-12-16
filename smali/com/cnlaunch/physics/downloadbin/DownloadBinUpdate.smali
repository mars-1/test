.class public Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
.super Ljava/lang/Object;
.source "DownloadBinUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;,
        Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;
    }
.end annotation


# instance fields
.field private final PKG_SIZE:I

.field private TAG:Ljava/lang/String;

.field private isStopUpdate:Z

.field private mGetDPUVersionRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;

.field private mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

.field private mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

.field private mUpdateBinRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Lcom/cnlaunch/physics/impl/IPhysics;)V
    .locals 1
    .parameter "onDownloadBinListener"
    .parameter "iPhysics"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 41
    const-string/jumbo v0, "DownloadBinUp"

    iput-object v0, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0x1000

    iput v0, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->PKG_SIZE:I

    .line 50
    iput-object p2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 51
    iput-object p1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->updateDownloadBin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->readDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;)Lcom/cnlaunch/physics/listener/OnDownloadBinListener;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    return-object v0
.end method

.method private readDPUDeviceInfo2103()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, deviceinfo:[Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 393
    .local v1, backOrder:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->DPUVerInfo2103()[B

    move-result-object v9

    .line 394
    .local v9, sendOrder:[B
    const/4 v4, 0x0

    .line 395
    .local v4, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v4, v10, :cond_0

    .line 428
    :goto_1
    return-object v2

    .line 396
    :cond_0
    array-length v10, v9

    if-lez v10, :cond_2

    .line 398
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V

    .line 399
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 401
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 406
    .local v5, milliseconds:J
    :goto_3
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand_wait()Z

    move-result v10

    if-nez v10, :cond_3

    .line 416
    :cond_1
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 418
    .end local v5           #milliseconds:J
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 419
    .local v8, receiveOrder:[B
    invoke-static {v9, v8}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[B)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 420
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 421
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2103(Lcom/cnlaunch/physics/entity/AnalysisData;)[Ljava/lang/String;

    move-result-object v2

    .line 422
    goto :goto_1

    .line 402
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v8           #receiveOrder:[B
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 403
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 407
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #milliseconds:J
    :cond_3
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    const-wide/16 v12, 0x7d0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    .line 411
    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 412
    :catch_1
    move-exception v3

    .line 413
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 424
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #milliseconds:J
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v8       #receiveOrder:[B
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private readDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->readDPUDeviceInfo2103()[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, info:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 117
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private updateDownloadBin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "pDownBin_Path"
    .parameter "pDownBin_Name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v28, ""

    .line 132
    .local v28, mode:Ljava/lang/String;
    const/16 v26, 0x0

    .line 133
    .local v26, iSuccess:Z
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v21, donwloadbin:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 137
    const-string/jumbo v3, "0"

    .line 247
    :goto_0
    return-object v3

    .line 139
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->currentState2114()Ljava/lang/String;

    move-result-object v28

    .line 140
    const-string/jumbo v3, "00"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->SwitchtoBootMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "\u5207\u6362\u5230boot\u5347\u7ea7\u6a21\u5f0f\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 144
    const-string/jumbo v3, "1"

    goto :goto_0

    .line 148
    :cond_1
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->requestConnect2502()Ljava/lang/String;

    move-result-object v34

    .line 156
    .local v34, verify:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->passwordVerify2503(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "\u6821\u9a8c\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 159
    const-string/jumbo v3, "1"

    goto :goto_0

    .line 149
    .end local v34           #verify:Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 150
    .local v23, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 152
    const-string/jumbo v3, "1"

    goto :goto_0

    .line 161
    .end local v23           #e:Ljava/lang/InterruptedException;
    .restart local v34       #verify:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->SendFileNameAndLength(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 162
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "\u53d1\u9001\u6587\u4ef6\u540d\u5b57\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v4, 0x6

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 164
    const-string/jumbo v3, "1"

    goto/16 :goto_0

    .line 166
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 167
    .local v7, totalLen:J
    const/16 v3, 0x1000

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 170
    .local v18, buff:[B
    const/16 v19, 0x0

    .line 171
    .local v19, count:I
    const/16 v35, 0x0

    .line 172
    .local v35, writePos:I
    :try_start_1
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 173
    .local v24, fis:Ljava/io/InputStream;
    const/16 v20, 0x0

    .line 174
    .local v20, counter:I
    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v19

    if-lez v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->isStopUpdate:Z

    if-eqz v3, :cond_6

    .line 216
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    .end local v20           #counter:I
    .end local v24           #fis:Ljava/io/InputStream;
    :goto_2
    const/16 v27, 0x0

    .line 224
    .local v27, md5_downloadbin:Ljava/lang/String;
    :try_start_2
    invoke-static/range {v21 .. v21}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->calculateSingleFileMD5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v27

    .line 225
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->sendUpdateFileMd5(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 226
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 227
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "download.bin MD5\u6821\u9a8c\u5931\u8d25!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 228
    const-string/jumbo v3, "1"

    goto/16 :goto_0

    .line 175
    .end local v27           #md5_downloadbin:Ljava/lang/String;
    .restart local v20       #counter:I
    .restart local v24       #fis:Ljava/io/InputStream;
    :cond_6
    add-int/lit8 v20, v20, 0x1

    .line 177
    :try_start_3
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v31, v0

    .line 178
    .local v31, rest:[B
    const/16 v29, 0x0

    .line 179
    .local v29, params:[B
    const/16 v3, 0x1000

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    move/from16 v0, v35

    move-object/from16 v1, v31

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->dataChunkParams(I[BI)[B

    move-result-object v29

    .line 186
    :goto_3
    invoke-static/range {v29 .. v29}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->sendUpdateFilesContent2403([B)[B

    move-result-object v32

    .line 187
    .local v32, sendOrder:[B
    const-string/jumbo v16, ""

    .line 188
    .local v16, backOrder:Ljava/lang/String;
    const/16 v25, 0x0

    .line 189
    .local v25, flag:I
    :goto_4
    const/4 v3, 0x3

    move/from16 v0, v25

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->isStopUpdate:Z

    if-eqz v3, :cond_9

    .line 213
    :cond_7
    :goto_5
    add-int v35, v35, v19

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/16 v4, 0x8

    move/from16 v0, v35

    int-to-long v5, v0

    invoke-interface/range {v3 .. v8}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 218
    .end local v16           #backOrder:Ljava/lang/String;
    .end local v20           #counter:I
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #flag:I
    .end local v29           #params:[B
    .end local v31           #rest:[B
    .end local v32           #sendOrder:[B
    :catch_1
    move-exception v23

    .line 219
    .local v23, e:Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 184
    .end local v23           #e:Ljava/lang/Exception;
    .restart local v20       #counter:I
    .restart local v24       #fis:Ljava/io/InputStream;
    .restart local v29       #params:[B
    .restart local v31       #rest:[B
    :cond_8
    :try_start_4
    move/from16 v0, v35

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->dataChunkParams(I[BI)[B

    move-result-object v29

    goto :goto_3

    .line 190
    .restart local v16       #backOrder:Ljava/lang/String;
    .restart local v25       #flag:I
    .restart local v32       #sendOrder:[B
    :cond_9
    move-object/from16 v0, v32

    array-length v3, v0

    if-lez v3, :cond_a

    .line 191
    new-instance v17, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct/range {v17 .. v17}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 192
    .local v17, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v4, ""

    invoke-interface {v3, v4}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 193
    new-instance v22, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    const/16 v3, 0x1f4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BILcom/cnlaunch/physics/impl/IPhysics;)V

    .line 194
    .local v22, dynamic:Ljava/lang/Runnable;
    new-instance v33, Ljava/lang/Thread;

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    .local v33, t:Ljava/lang/Thread;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 197
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 202
    .end local v17           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v22           #dynamic:Ljava/lang/Runnable;
    .end local v33           #t:Ljava/lang/Thread;
    :cond_a
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v3}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v16

    .line 203
    invoke-static/range {v16 .. v16}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v30

    .line 204
    .local v30, receiveOrder:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-static {v0, v1, v3}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v15

    .line 205
    .local v15, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v15}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2403(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 206
    const/16 v26, 0x1

    .line 207
    goto :goto_5

    .line 198
    .end local v15           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v30           #receiveOrder:[B
    .restart local v17       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v22       #dynamic:Ljava/lang/Runnable;
    .restart local v33       #t:Ljava/lang/Thread;
    :catch_2
    move-exception v23

    .line 199
    .local v23, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    .line 209
    .end local v17           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v22           #dynamic:Ljava/lang/Runnable;
    .end local v23           #e:Ljava/lang/InterruptedException;
    .end local v33           #t:Ljava/lang/Thread;
    .restart local v15       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v30       #receiveOrder:[B
    :cond_b
    const/16 v26, 0x0

    .line 210
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 231
    .end local v15           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v16           #backOrder:Ljava/lang/String;
    .end local v20           #counter:I
    .end local v24           #fis:Ljava/io/InputStream;
    .end local v25           #flag:I
    .end local v29           #params:[B
    .end local v30           #receiveOrder:[B
    .end local v31           #rest:[B
    .end local v32           #sendOrder:[B
    .restart local v27       #md5_downloadbin:Ljava/lang/String;
    :catch_3
    move-exception v23

    .line 232
    .local v23, e:Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v23           #e:Ljava/lang/Exception;
    :cond_c
    const-string/jumbo v3, "bcf"

    const-string/jumbo v4, "download.bin MD5\u6821\u9a8c\u6210\u529f!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v10, 0x5

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 238
    const-wide/16 v3, 0xbb8

    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 242
    :goto_7
    if-eqz v26, :cond_d

    .line 243
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v10, 0x7

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 244
    const-string/jumbo v3, "2"

    goto/16 :goto_0

    .line 239
    :catch_4
    move-exception v23

    .line 240
    .local v23, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 246
    .end local v23           #e:Ljava/lang/InterruptedException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    const/4 v10, 0x6

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-interface/range {v9 .. v14}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(IJJ)V

    .line 247
    const-string/jumbo v3, "1"

    goto/16 :goto_0
.end method


# virtual methods
.method public SendFileNameAndLength(Ljava/io/File;)Z
    .locals 14
    .parameter "donwloadbin"

    .prologue
    .line 505
    const/4 v9, 0x0

    .line 506
    .local v9, succeed:Z
    invoke-static {p1}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->sendFileNameAndLength2402(Ljava/io/File;)[B

    move-result-object v8

    .line 507
    .local v8, sendOrder:[B
    const-string/jumbo v1, ""

    .line 508
    .local v1, backOrder:Ljava/lang/String;
    const/4 v3, 0x0

    .line 509
    .local v3, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v3, v10, :cond_0

    .line 552
    :goto_1
    return v9

    .line 510
    :cond_0
    array-length v10, v8

    if-lez v10, :cond_2

    .line 521
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 522
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V

    .line 523
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 525
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v6, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_2
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 530
    .local v4, milliseconds:J
    :goto_3
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand_wait()Z

    move-result v10

    if-nez v10, :cond_3

    .line 540
    :cond_1
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 542
    .end local v4           #milliseconds:J
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 543
    .local v7, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v8, v7, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 544
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2402(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 545
    const/4 v9, 0x1

    .line 546
    goto :goto_1

    .line 526
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v7           #receiveOrder:[B
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 527
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 531
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #milliseconds:J
    :cond_3
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    const-wide/16 v12, 0x2710

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1

    .line 535
    const-wide/16 v10, 0x64

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 536
    :catch_1
    move-exception v2

    .line 537
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 548
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #milliseconds:J
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v7       #receiveOrder:[B
    :cond_4
    const/4 v9, 0x0

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public SwitchtoBootMode()Z
    .locals 12

    .prologue
    .line 471
    const/4 v8, 0x0

    .line 472
    .local v8, succeed:Z
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->updateFirmware2407()[B

    move-result-object v7

    .line 473
    .local v7, sendOrder:[B
    const-string/jumbo v1, ""

    .line 474
    .local v1, backOrder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 475
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_0

    .line 498
    :goto_1
    return v8

    .line 476
    :cond_0
    array-length v10, v7

    if-lez v10, :cond_1

    .line 477
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 478
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v7, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 479
    .local v3, dynamic:Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 480
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 481
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 483
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 489
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 490
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v7, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 491
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2407(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 492
    const/4 v8, 0x1

    .line 493
    goto :goto_1

    .line 484
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 485
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 495
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v6       #receiveOrder:[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public ValidateAllFilesMd5(Ljava/util/HashMap;)Z
    .locals 31
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, md5info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 601
    .local v4, backOrder:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->ValidateAllFilesMd52408()[B

    move-result-object v25

    .line 602
    .local v25, sendOrder:[B
    const/4 v13, 0x0

    .line 603
    .local v13, flag:I
    :goto_0
    const/16 v29, 0x3

    move/from16 v0, v29

    if-lt v13, v0, :cond_0

    .line 667
    const/16 v29, 0x0

    :goto_1
    return v29

    .line 605
    :cond_0
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_1

    .line 606
    new-instance v5, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v5}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 607
    .local v5, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    new-instance v6, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v6, v5, v0, v1}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 608
    .local v6, dynamic:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    move-object/from16 v29, v0

    const-string/jumbo v30, ""

    invoke-interface/range {v29 .. v30}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 609
    new-instance v27, Ljava/lang/Thread;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 610
    .local v27, t:Ljava/lang/Thread;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->start()V

    .line 612
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v4

    .line 618
    .end local v5           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v6           #dynamic:Ljava/lang/Runnable;
    .end local v27           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v24

    .line 619
    .local v24, receiveOrder:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v3

    .line 620
    .local v3, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-virtual {v3}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 622
    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->filterOutCmdParameters([B)[B

    move-result-object v26

    .line 623
    .local v26, status:[B
    const/16 v29, 0x0

    aget-byte v29, v26, v29

    if-nez v29, :cond_3

    .line 624
    invoke-static/range {v24 .. v24}, Lcom/cnlaunch/physics/downloadbin/util/DpuOrderUtils;->filterOutCmdParameters([B)[B

    move-result-object v28

    .line 626
    .local v28, temp:[B
    const/16 v29, 0x0

    aget-byte v29, v28, v29

    shl-int/lit8 v29, v29, 0x8

    const/16 v30, 0x1

    aget-byte v30, v28, v30

    or-int v11, v29, v30

    .line 627
    .local v11, fileNum:I
    const/16 v23, 0x2

    .line 628
    .local v23, offset:I
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v22, md5info1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-lt v14, v11, :cond_4

    .line 647
    move-object/from16 v19, v22

    .line 648
    .local v19, md5InDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 652
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-nez v29, :cond_7

    .line 662
    .end local v11           #fileNum:I
    .end local v14           #i:I
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v19           #md5InDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #md5info1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #offset:I
    .end local v28           #temp:[B
    :cond_3
    const/16 v29, 0x1

    goto/16 :goto_1

    .line 613
    .end local v3           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v24           #receiveOrder:[B
    .end local v26           #status:[B
    .restart local v5       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v6       #dynamic:Ljava/lang/Runnable;
    .restart local v27       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v7

    .line 614
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 631
    .end local v5           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v6           #dynamic:Ljava/lang/Runnable;
    .end local v7           #e:Ljava/lang/InterruptedException;
    .end local v27           #t:Ljava/lang/Thread;
    .restart local v3       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v11       #fileNum:I
    .restart local v14       #i:I
    .restart local v22       #md5info1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #offset:I
    .restart local v24       #receiveOrder:[B
    .restart local v26       #status:[B
    .restart local v28       #temp:[B
    :cond_4
    aget-byte v29, v28, v23

    shl-int/lit8 v29, v29, 0x8

    add-int/lit8 v30, v23, 0x1

    aget-byte v30, v28, v30

    or-int v10, v29, v30

    .line 633
    .local v10, fileNameLen:I
    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v29

    new-array v12, v0, [B

    .line 634
    .local v12, filename_bytes:[B
    const/16 v16, 0x0

    .local v16, j:I
    :goto_4
    add-int/lit8 v29, v10, -0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 638
    const/16 v29, 0x20

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 639
    .local v21, md5bytes:[B
    const/16 v16, 0x0

    :goto_5
    const/16 v29, 0x20

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 642
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/lang/String;-><init>([B)V

    .line 643
    .local v9, fileName:Ljava/lang/String;
    new-instance v20, Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    .line 644
    .local v20, md5OnDpu:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    add-int/lit8 v29, v10, 0x2

    add-int/lit8 v29, v29, 0x20

    add-int v23, v23, v29

    .line 629
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 635
    .end local v9           #fileName:Ljava/lang/String;
    .end local v20           #md5OnDpu:Ljava/lang/String;
    .end local v21           #md5bytes:[B
    :cond_5
    add-int/lit8 v29, v23, 0x2

    add-int v29, v29, v16

    aget-byte v29, v28, v29

    aput-byte v29, v12, v16

    .line 634
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 640
    .restart local v21       #md5bytes:[B
    :cond_6
    add-int/lit8 v29, v23, 0x2

    add-int v29, v29, v10

    add-int v29, v29, v16

    aget-byte v29, v28, v29

    aput-byte v29, v21, v16

    .line 639
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 653
    .end local v10           #fileNameLen:I
    .end local v12           #filename_bytes:[B
    .end local v16           #j:I
    .end local v21           #md5bytes:[B
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v19       #md5InDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 654
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 655
    .restart local v9       #fileName:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 656
    .local v18, md5Device:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 657
    .local v17, md5Client:Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 658
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 664
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #fileName:Ljava/lang/String;
    .end local v11           #fileNum:I
    .end local v14           #i:I
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v17           #md5Client:Ljava/lang/String;
    .end local v18           #md5Device:Ljava/lang/String;
    .end local v19           #md5InDevice:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22           #md5info1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #offset:I
    .end local v26           #status:[B
    .end local v28           #temp:[B
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public ValidateUpdateFinished()Z
    .locals 12

    .prologue
    .line 677
    const/4 v8, 0x0

    .line 678
    .local v8, succeed:Z
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->ValidateUpdateFinished2405()[B

    move-result-object v7

    .line 679
    .local v7, sendOrder:[B
    const-string/jumbo v1, ""

    .line 680
    .local v1, backOrder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 681
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_0

    .line 704
    :goto_1
    return v8

    .line 682
    :cond_0
    array-length v10, v7

    if-lez v10, :cond_1

    .line 683
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 684
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v7, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 685
    .local v3, dynamic:Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 686
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 687
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 689
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 695
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 696
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v7, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 697
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2405(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 698
    const/4 v8, 0x1

    .line 699
    goto :goto_1

    .line 690
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 691
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 701
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v6       #receiveOrder:[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public currentState2114()Ljava/lang/String;
    .locals 12

    .prologue
    .line 437
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->currentStatus2114()[B

    move-result-object v8

    .line 438
    .local v8, sendOrder:[B
    const-string/jumbo v1, ""

    .line 439
    .local v1, backOrder:Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 440
    .local v7, runnningmode:Ljava/lang/String;
    const/4 v5, 0x0

    .line 441
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_0

    .line 464
    :goto_1
    return-object v7

    .line 442
    :cond_0
    array-length v10, v8

    if-lez v10, :cond_1

    .line 443
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 444
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v8, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 445
    .local v3, dynamic:Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 446
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 447
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 449
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 455
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 456
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v8, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 457
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 458
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2114(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/String;

    move-result-object v7

    .line 459
    goto :goto_1

    .line 450
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 451
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 461
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v6       #receiveOrder:[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mGetDPUVersionRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;

    invoke-direct {v1, p0, p1, p2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;-><init>(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mGetDPUVersionRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mGetDPUVersionRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method public passwordVerify2503(Ljava/lang/String;)Z
    .locals 12
    .parameter "verify"

    .prologue
    .line 293
    const/4 v8, 0x0

    .line 294
    .local v8, succeed:Z
    const-string/jumbo v1, ""

    .line 295
    .local v1, backOrder:Ljava/lang/String;
    invoke-static {p1}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->securityCheck2503(Ljava/lang/String;)[B

    move-result-object v7

    .line 296
    .local v7, sendOrder:[B
    const/4 v5, 0x0

    .line 297
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_0

    .line 321
    :goto_1
    return v8

    .line 298
    :cond_0
    array-length v10, v7

    if-lez v10, :cond_1

    .line 299
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 300
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 301
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v7, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 302
    .local v3, dynamic:Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 305
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 313
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v7, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 314
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2503(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 315
    const/4 v8, 0x1

    .line 316
    goto :goto_1

    .line 306
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 307
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 318
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v6       #receiveOrder:[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public readDPUVersionInfo2105(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "serialNo"

    .prologue
    .line 330
    const-string/jumbo v3, ""

    .line 331
    .local v3, downloadBinVer:Ljava/lang/String;
    const/4 v11, 0x0

    .line 332
    .local v11, softinfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, ""

    .line 333
    .local v2, backOrder:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->DPUVer2105()[B

    move-result-object v10

    .line 334
    .local v10, sendOrder:[B
    const/4 v5, 0x0

    .line 335
    .local v5, flag:I
    :goto_0
    const/4 v12, 0x3

    if-lt v5, v12, :cond_0

    .line 382
    :goto_1
    return-object v3

    .line 336
    :cond_0
    array-length v12, v10

    if-lez v12, :cond_2

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v12}, Lcom/cnlaunch/physics/impl/IPhysics;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 343
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v8, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_2
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 348
    .local v6, milliseconds:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v12}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand_wait()Z

    move-result v12

    if-nez v12, :cond_3

    .line 368
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v12}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v2

    .line 370
    .end local v6           #milliseconds:J
    .end local v8           #outputStream:Ljava/io/OutputStream;
    :cond_2
    invoke-static {v2}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 371
    .local v9, receiveOrder:[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v10, v9, v12}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v1

    .line 372
    .local v1, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-virtual {v1}, Lcom/cnlaunch/physics/entity/AnalysisData;->getState()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 373
    invoke-static {v1}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2105(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/util/ArrayList;

    move-result-object v11

    .line 374
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #downloadBinVer:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 375
    .restart local v3       #downloadBinVer:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/utils/DeviceUtils;->getInstance()Lcom/cnlaunch/physics/utils/DeviceUtils;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Lcom/cnlaunch/physics/utils/DeviceUtils;->saveDPUSoftInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 344
    .end local v1           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v9           #receiveOrder:[B
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 345
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 349
    .end local v4           #e:Ljava/io/IOException;
    .restart local v6       #milliseconds:J
    :cond_3
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v14, 0x7d0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    .line 353
    const-wide/16 v12, 0x64

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 354
    :catch_1
    move-exception v4

    .line 355
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 378
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v6           #milliseconds:J
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v9       #receiveOrder:[B
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public requestConnect2502()Ljava/lang/String;
    .locals 12

    .prologue
    .line 257
    const-string/jumbo v8, ""

    .line 258
    .local v8, succeed:Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 259
    .local v1, backOrder:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->requestConnect2502()[B

    move-result-object v7

    .line 260
    .local v7, sendOrder:[B
    const/4 v5, 0x0

    .line 261
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_1

    .line 284
    :cond_0
    return-object v8

    .line 262
    :cond_1
    array-length v10, v7

    if-lez v10, :cond_2

    .line 263
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 264
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 265
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v7, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 266
    .local v3, dynamic:Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 269
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 275
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_2
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 276
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v7, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 277
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2502(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/String;

    move-result-object v8

    .line 278
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_0

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 270
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 271
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendUpdateFileMd5(Ljava/lang/String;)Z
    .locals 12
    .parameter "md5"

    .prologue
    .line 562
    const/4 v8, 0x0

    .line 563
    .local v8, succeed:Z
    invoke-static {p1}, Lcom/cnlaunch/physics/downloadbin/util/OrderMontage;->sendUpdateFileMd52404(Ljava/lang/String;)[B

    move-result-object v7

    .line 564
    .local v7, sendOrder:[B
    const-string/jumbo v1, ""

    .line 565
    .local v1, backOrder:Ljava/lang/String;
    const/4 v5, 0x0

    .line 566
    .local v5, flag:I
    :goto_0
    const/4 v10, 0x3

    if-lt v5, v10, :cond_0

    .line 589
    :goto_1
    return v8

    .line 567
    :cond_0
    array-length v10, v7

    if-lez v10, :cond_1

    .line 568
    new-instance v2, Lcom/cnlaunch/physics/utils/Bridge;

    invoke-direct {v2}, Lcom/cnlaunch/physics/utils/Bridge;-><init>()V

    .line 569
    .local v2, bridge:Lcom/cnlaunch/physics/utils/Bridge;
    new-instance v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-direct {v3, v2, v7, v10}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;-><init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V

    .line 570
    .local v3, dynamic:Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 571
    new-instance v9, Ljava/lang/Thread;

    invoke-direct {v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 572
    .local v9, t:Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 574
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_2
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v10}, Lcom/cnlaunch/physics/impl/IPhysics;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 580
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v9           #t:Ljava/lang/Thread;
    :cond_1
    invoke-static {v1}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 581
    .local v6, receiveOrder:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-static {v7, v6, v10}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis([B[BLcom/cnlaunch/physics/listener/OnDownloadBinListener;)Lcom/cnlaunch/physics/entity/AnalysisData;

    move-result-object v0

    .line 582
    .local v0, analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    invoke-static {v0}, Lcom/cnlaunch/physics/downloadbin/util/Analysis;->analysis2404(Lcom/cnlaunch/physics/entity/AnalysisData;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 583
    const/4 v8, 0x1

    .line 584
    goto :goto_1

    .line 575
    .end local v0           #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .end local v6           #receiveOrder:[B
    .restart local v2       #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .restart local v3       #dynamic:Ljava/lang/Runnable;
    .restart local v9       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    .line 576
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 586
    .end local v2           #bridge:Lcom/cnlaunch/physics/utils/Bridge;
    .end local v3           #dynamic:Ljava/lang/Runnable;
    .end local v4           #e:Ljava/lang/InterruptedException;
    .end local v9           #t:Ljava/lang/Thread;
    .restart local v0       #analysisData:Lcom/cnlaunch/physics/entity/AnalysisData;
    .restart local v6       #receiveOrder:[B
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public stopUpdate()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->isStopUpdate:Z

    .line 123
    return-void
.end method

.method public updateAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pDownBin_Path"
    .parameter "pDownBin_Name"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mUpdateBinRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;

    invoke-direct {v1, p0, p1, p2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;-><init>(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mUpdateBinRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;

    .line 61
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->isStopUpdate:Z

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mUpdateBinRunable:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    return-void
.end method
