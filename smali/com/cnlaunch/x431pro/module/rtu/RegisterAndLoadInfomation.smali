.class public Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;
.super Ljava/lang/Object;
.source "RegisterAndLoadInfomation.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRegisted:Z

.field private mPassWord:Ljava/lang/String;

.field private mSerialNo:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "serialNo"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    .line 23
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    .line 24
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    .line 53
    const-string/jumbo v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    .line 54
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mContext:Landroid/content/Context;

    .line 56
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    .line 57
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

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 58
    const-string/jumbo v13, "regiterload_information.txt"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 57
    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v8, v12

    .line 62
    .local v8, length:I
    if-gtz v8, :cond_1

    .line 93
    .end local v8           #length:I
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v8       #length:I
    :cond_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    .local v7, fileInputStream:Ljava/io/FileInputStream;
    new-array v2, v8, [B

    .line 68
    .local v2, buffer:[B
    new-array v3, v8, [B

    .line 69
    .local v3, decMatrix:[B
    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    .line 70
    .local v10, readCount:I
    if-lez v10, :cond_2

    .line 71
    invoke-static {v2, v3, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionContent([B[BI)I

    .line 72
    new-instance v11, Ljava/io/StringReader;

    new-instance v12, Ljava/lang/String;

    const-string/jumbo v13, "ISO-8859-1"

    invoke-direct {v12, v3, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 73
    .local v11, reader:Ljava/io/StringReader;
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 74
    .local v9, props:Ljava/util/Properties;
    invoke-virtual {v9, v11}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 75
    const-string/jumbo v12, "isRegisted"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    .line 76
    const-string/jumbo v12, "login_username"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    .line 77
    const-string/jumbo v12, "login_password"

    invoke-virtual {v9, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    .line 79
    const-string/jumbo v12, "RegisterLoadInfo"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    new-instance v16, Ljava/lang/String;

    .line 80
    const-string/jumbo v17, "ISO-8859-1"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v16, "IS_REGISTED="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 82
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 83
    const-string/jumbo v16, "LOGIN_USERNAME="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 84
    const-string/jumbo v16, "LOGIN_PASSWORD="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 79
    invoke-static {v12, v13}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .end local v9           #props:Ljava/util/Properties;
    .end local v11           #reader:Ljava/io/StringReader;
    :cond_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 87
    .end local v2           #buffer:[B
    .end local v3           #decMatrix:[B
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .end local v8           #length:I
    .end local v10           #readCount:I
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 89
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 90
    .local v5, e1:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isRegisted()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    return v0
.end method

.method public sava()V
    .locals 17

    .prologue
    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 98
    const-string/jumbo v15, "regiterload_information.txt"

    .line 97
    invoke-static {v14, v15}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->CreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 99
    .local v4, file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v5, fileOutputStream:Ljava/io/FileOutputStream;
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    .line 105
    .local v11, props:Ljava/util/Properties;
    const-string/jumbo v14, "isRegisted"

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v14, "login_username"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v14, "login_password"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 110
    .local v13, writer:Ljava/io/StringWriter;
    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "ISO-8859-1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 112
    .local v1, buffer:[B
    array-length v7, v1

    .line 114
    .local v7, length:I
    rem-int/lit8 v8, v7, 0x8

    .line 116
    .local v8, modMAX:I
    if-eqz v8, :cond_5

    .line 117
    rsub-int/lit8 v9, v8, 0x8

    .line 118
    .local v9, needAdd:I
    add-int v14, v7, v9

    new-array v12, v14, [B

    .line 119
    .local v12, srcMatrixBuffer:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v7, :cond_3

    .line 122
    const/4 v6, 0x0

    :goto_2
    if-lt v6, v9, :cond_4

    .line 125
    add-int/2addr v7, v9

    .line 129
    .end local v6           #i:I
    .end local v9           #needAdd:I
    :goto_3
    new-array v3, v7, [B

    .line 130
    .local v3, encMatrix:[B
    invoke-static {v12, v3, v7}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->encryptionContent([B[BI)I

    .line 131
    invoke-virtual {v5, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 135
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 137
    :cond_2
    new-instance v10, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    invoke-direct {v10, v14, v15}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    .local v10, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setFirstRunFlag(Z)V

    .line 139
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTryFlag(Z)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v10, v14}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setSerialNo(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mSerialNo:Ljava/lang/String;

    invoke-virtual {v10, v14}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "tryFlag"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v14

    const-string/jumbo v15, "isFirstRun"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    .end local v1           #buffer:[B
    .end local v3           #encMatrix:[B
    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #length:I
    .end local v8           #modMAX:I
    .end local v10           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v11           #props:Ljava/util/Properties;
    .end local v12           #srcMatrixBuffer:[B
    .end local v13           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v2

    .line 151
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #modMAX:I
    .restart local v9       #needAdd:I
    .restart local v11       #props:Ljava/util/Properties;
    .restart local v12       #srcMatrixBuffer:[B
    .restart local v13       #writer:Ljava/io/StringWriter;
    :cond_3
    :try_start_1
    aget-byte v14, v1, v6

    aput-byte v14, v12, v6

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 123
    :cond_4
    add-int v14, v7, v6

    const/4 v15, 0x0

    aput-byte v15, v12, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 127
    .end local v6           #i:I
    .end local v9           #needAdd:I
    .end local v12           #srcMatrixBuffer:[B
    :cond_5
    move-object v12, v1

    .restart local v12       #srcMatrixBuffer:[B
    goto/16 :goto_3
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .parameter "passWord"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mPassWord:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setRegisted(Z)V
    .locals 0
    .parameter "isRegiste"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mIsRegisted:Z

    .line 50
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/RegisterAndLoadInfomation;->mUserName:Ljava/lang/String;

    .line 34
    return-void
.end method
