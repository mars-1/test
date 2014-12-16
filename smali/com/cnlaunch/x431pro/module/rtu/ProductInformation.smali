.class public Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
.super Ljava/lang/Object;
.source "ProductInformation.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDiagTimeDate:Ljava/lang/String;

.field private mIsFirstRun:Z

.field private mIsTryFlag:Z

.field private mLastRemindTime:J

.field private mSerialNo:Ljava/lang/String;

.field private mTotalDiagTime:J

.field private mTryFlagStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "serialNo"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    .line 38
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    .line 39
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    .line 40
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    .line 41
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    .line 42
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    .line 43
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mContext:Landroid/content/Context;

    .line 44
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    .line 45
    new-instance v6, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 46
    const-string/jumbo v13, "product_information.txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 49
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    .local v7, fileInputStream:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v8, v12

    .line 51
    .local v8, length:I
    if-gtz v8, :cond_1

    .line 95
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .end local v8           #length:I
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v8       #length:I
    :cond_1
    new-array v2, v8, [B

    .line 55
    .local v2, buffer:[B
    new-array v3, v8, [B

    .line 56
    .local v3, decMatrix:[B
    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    .line 57
    .local v10, readCount:I
    if-lez v10, :cond_0

    .line 58
    invoke-static {v2, v3, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionContent([B[BI)I

    .line 60
    new-instance v11, Ljava/io/StringReader;

    new-instance v12, Ljava/lang/String;

    .line 61
    const-string/jumbo v13, "ISO-8859-1"

    invoke-direct {v12, v3, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 60
    invoke-direct {v11, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 62
    .local v11, reader:Ljava/io/StringReader;
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 63
    .local v9, props:Ljava/util/Properties;
    invoke-virtual {v9, v11}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 65
    const-string/jumbo v12, "tryFlag"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    .line 67
    const-string/jumbo v12, "isFirstRun"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 66
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    .line 69
    const-string/jumbo v12, "tryFlagStartTime"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 68
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    .line 71
    const-string/jumbo v12, "lastRemindTime"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    .line 73
    const-string/jumbo v12, "totalDiagTime"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    .line 74
    const-string/jumbo v12, "diagTime_date"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    .line 75
    const-string/jumbo v12, "serialNo"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    .line 76
    const-string/jumbo v12, "ProductInformation"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    new-instance v16, Ljava/lang/String;

    .line 77
    const-string/jumbo v17, "ISO-8859-1"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v16, "IsTryFlag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 79
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 80
    const-string/jumbo v16, "IsFirstRun="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 82
    const-string/jumbo v16, "TryFlagStartTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 83
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 84
    const-string/jumbo v16, "mLastRemindTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 85
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 86
    const-string/jumbo v16, "mTotalDiagTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 87
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "mDiagTimeDate="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 76
    invoke-static {v12, v13}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 89
    .end local v2           #buffer:[B
    .end local v3           #decMatrix:[B
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .end local v8           #length:I
    .end local v9           #props:Ljava/util/Properties;
    .end local v10           #readCount:I
    .end local v11           #reader:Ljava/io/StringReader;
    :catch_0
    move-exception v4

    .line 90
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 92
    .local v5, e1:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDiagTimeDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRemindTime()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    return-wide v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalDiagTime()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    return-wide v0
.end method

.method public getTryFlagStartTime()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    return-wide v0
.end method

.method public isFirstRun()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    return v0
.end method

.method public isTryFlag()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    return v0
.end method

.method public save(Ljava/lang/String;)V
    .locals 16
    .parameter "serialNo"

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    if-eqz v13, :cond_0

    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 161
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 162
    const-string/jumbo v14, "product_information.txt"

    .line 161
    invoke-static {v13, v14}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 163
    .local v4, file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 211
    .end local v4           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 167
    .restart local v4       #file:Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 168
    .local v5, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 169
    .local v10, props:Ljava/util/Properties;
    const-string/jumbo v13, "tryFlag"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v13, "isFirstRun"

    .line 171
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    .line 170
    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v13, "tryFlagStartTime"

    .line 173
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 172
    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v13, "lastRemindTime"

    .line 175
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v13, "totalDiagTime"

    .line 177
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 176
    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v13, "diagTime_date"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v13, "serialNo"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 181
    .local v12, writer:Ljava/io/StringWriter;
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "ISO-8859-1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 183
    .local v1, buffer:[B
    array-length v7, v1

    .line 184
    .local v7, length:I
    rem-int/lit8 v8, v7, 0x8

    .line 186
    .local v8, modMAX:I
    if-eqz v8, :cond_4

    .line 187
    rsub-int/lit8 v9, v8, 0x8

    .line 188
    .local v9, needAdd:I
    add-int v13, v7, v9

    new-array v11, v13, [B

    .line 189
    .local v11, srcMatrixBuffer:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v7, :cond_2

    .line 192
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v9, :cond_3

    .line 195
    add-int/2addr v7, v9

    .line 199
    .end local v6           #i:I
    .end local v9           #needAdd:I
    :goto_3
    new-array v3, v7, [B

    .line 200
    .local v3, encMatrix:[B
    invoke-static {v11, v3, v7}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->encryptionContent([B[BI)I

    .line 202
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 203
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 205
    .end local v1           #buffer:[B
    .end local v3           #encMatrix:[B
    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #length:I
    .end local v8           #modMAX:I
    .end local v10           #props:Ljava/util/Properties;
    .end local v11           #srcMatrixBuffer:[B
    .end local v12           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v2

    .line 206
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 190
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #buffer:[B
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #modMAX:I
    .restart local v9       #needAdd:I
    .restart local v10       #props:Ljava/util/Properties;
    .restart local v11       #srcMatrixBuffer:[B
    .restart local v12       #writer:Ljava/io/StringWriter;
    :cond_2
    :try_start_1
    aget-byte v13, v1, v6

    aput-byte v13, v11, v6

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 193
    :cond_3
    add-int v13, v7, v6

    const/4 v14, 0x0

    aput-byte v14, v11, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 197
    .end local v6           #i:I
    .end local v9           #needAdd:I
    .end local v11           #srcMatrixBuffer:[B
    :cond_4
    move-object v11, v1

    .restart local v11       #srcMatrixBuffer:[B
    goto :goto_3

    .line 209
    .end local v1           #buffer:[B
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #length:I
    .end local v8           #modMAX:I
    .end local v10           #props:Ljava/util/Properties;
    .end local v11           #srcMatrixBuffer:[B
    .end local v12           #writer:Ljava/io/StringWriter;
    :cond_5
    const-string/jumbo v13, "ProductInformation"

    const-string/jumbo v14, "\u975e\u6cd5\u64cd\u4f5c======!!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setDiagTimeDate(Ljava/lang/String;)V
    .locals 0
    .parameter "diagTimeDate"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mDiagTimeDate:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setFirstRunFlag(Z)V
    .locals 0
    .parameter "isFirstRun"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsFirstRun:Z

    .line 118
    return-void
.end method

.method public setLastRemindTime(J)V
    .locals 0
    .parameter "lastRemindTime"

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mLastRemindTime:J

    .line 142
    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 2
    .parameter "serialNo"

    .prologue
    .line 152
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mSerialNo:Ljava/lang/String;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string/jumbo v0, "ProductInformation"

    const-string/jumbo v1, "\u975e\u6cd5\u64cd\u4f5c======"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTotalDiagTime(J)V
    .locals 0
    .parameter "totalDiagTime"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTotalDiagTime:J

    .line 146
    return-void
.end method

.method public setTryFlag(Z)V
    .locals 0
    .parameter "isTry"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mIsTryFlag:Z

    .line 114
    return-void
.end method

.method public setTryFlagStartTime(J)V
    .locals 0
    .parameter "tryFlagStartTime"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->mTryFlagStartTime:J

    .line 122
    return-void
.end method
