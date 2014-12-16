.class public Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;
.super Ljava/lang/Object;
.source "DiagnoseLogInfoSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DiagnoseLogInfoSearchUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static analysisFile(Ljava/io/File;)Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .locals 32
    .parameter "file"

    .prologue
    .line 176
    const/4 v8, 0x0

    .line 180
    .local v8, diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v12, v0, [B

    fill-array-data v12, :array_0

    .line 181
    .local v12, fileFlag:[B
    const/16 v27, 0x6

    move/from16 v0, v27

    new-array v13, v0, [B

    .line 182
    .local v13, fileFlagBuffer:[B
    const/4 v15, 0x0

    .line 183
    .local v15, fileHeadLengthBuffer:[B
    const/4 v14, 0x0

    .line 185
    .local v14, fileHeadLength:I
    const/16 v23, 0x0

    .line 186
    .local v23, srcMatrixBuffer:[B
    const/4 v11, 0x0

    .line 189
    .local v11, encDecMatrix:[B
    const/16 v25, 0x0

    .line 191
    .local v25, utfStringBuffer:[B
    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .local v5, dataInputStream:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v5, v13}, Ljava/io/DataInputStream;->read([B)I

    .line 194
    invoke-static {v13, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 195
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 196
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v11, v0, [B

    .line 198
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v15, v0, [B

    .line 199
    invoke-virtual {v5, v15}, Ljava/io/DataInputStream;->read([B)I

    .line 200
    invoke-static {v15}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->byteToInt([B)I

    move-result v14

    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, decMatrix:[B
    const/16 v27, 0x1000

    move/from16 v0, v27

    if-gt v14, v0, :cond_1

    .line 204
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1, v14}, Ljava/io/DataInputStream;->read([BII)I

    .line 205
    move-object/from16 v0, v23

    invoke-static {v0, v11, v14}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionContent([B[BI)I

    .line 206
    move-object v6, v11

    .line 228
    :cond_0
    new-instance v9, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-direct {v9}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .end local v8           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .local v9, diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setFilename(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setFullFilePath(Ljava/lang/String;)V

    .line 231
    const/16 v20, 0x0

    .line 232
    .local v20, position:I
    const/16 v16, 0x0

    .line 233
    .local v16, highValue:I
    const/16 v19, 0x0

    .line 234
    .local v19, lowValue:I
    add-int/lit8 v20, v20, 0x2

    .line 235
    const/16 v27, 0xa

    move/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->byteToLong([B)J

    move-result-wide v3

    .line 236
    .local v3, createDate:J
    invoke-virtual {v9, v3, v4}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setCreateDate(J)V

    .line 237
    add-int/lit8 v20, v20, 0x8

    .line 238
    add-int/lit8 v21, v20, 0x1

    .end local v20           #position:I
    .local v21, position:I
    aget-byte v27, v6, v20

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 239
    add-int/lit8 v20, v21, 0x1

    .end local v21           #position:I
    .restart local v20       #position:I
    aget-byte v27, v6, v21

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 240
    add-int v24, v16, v19

    .line 241
    .local v24, stringLength:I
    add-int/lit8 v27, v24, 0xc

    move/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v25

    .line 242
    new-instance v26, Ljava/lang/String;

    const-string/jumbo v27, "utf-8"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 243
    .local v26, vehicleSoftname:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setVehicleSoftname(Ljava/lang/String;)V

    .line 244
    add-int/lit8 v20, v24, 0xc

    .line 247
    add-int/lit8 v21, v20, 0x1

    .end local v20           #position:I
    .restart local v21       #position:I
    aget-byte v27, v6, v20

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 248
    add-int/lit8 v20, v21, 0x1

    .end local v21           #position:I
    .restart local v20       #position:I
    aget-byte v27, v6, v21

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 249
    add-int v24, v16, v19

    .line 250
    add-int v20, v20, v24

    .line 252
    add-int/lit8 v21, v20, 0x1

    .end local v20           #position:I
    .restart local v21       #position:I
    aget-byte v27, v6, v20

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 253
    add-int/lit8 v20, v21, 0x1

    .end local v21           #position:I
    .restart local v20       #position:I
    aget-byte v27, v6, v21

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 254
    add-int v24, v16, v19

    .line 255
    add-int v20, v20, v24

    .line 257
    add-int/lit8 v21, v20, 0x1

    .end local v20           #position:I
    .restart local v21       #position:I
    aget-byte v27, v6, v20

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 258
    add-int/lit8 v20, v21, 0x1

    .end local v21           #position:I
    .restart local v20       #position:I
    aget-byte v27, v6, v21

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 259
    add-int v24, v16, v19

    .line 260
    add-int v27, v20, v24

    move/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v25

    .line 261
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v27, "utf-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v7, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 263
    .local v7, deviceSN:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->setDeviceSN(Ljava/lang/String;)V

    .line 264
    const-string/jumbo v27, "DiagnoseLogInfoSearchUtil"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v31, "  "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 265
    new-instance v31, Ljava/util/Date;

    move-object/from16 v0, v31

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    .line 266
    const-string/jumbo v31, "  "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFullFilePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    .line 264
    invoke-static/range {v27 .. v28}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v9

    .line 278
    .end local v3           #createDate:J
    .end local v5           #dataInputStream:Ljava/io/DataInputStream;
    .end local v6           #decMatrix:[B
    .end local v7           #deviceSN:Ljava/lang/String;
    .end local v9           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .end local v16           #highValue:I
    .end local v19           #lowValue:I
    .end local v20           #position:I
    .end local v24           #stringLength:I
    .end local v26           #vehicleSoftname:Ljava/lang/String;
    .restart local v8       #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    :goto_0
    return-object v8

    .line 209
    .restart local v5       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v6       #decMatrix:[B
    :cond_1
    :try_start_3
    new-array v6, v14, [B

    .line 210
    const/16 v18, 0x0

    .line 211
    .local v18, loopCount:I
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v22

    .line 212
    .local v22, readCount:I
    :goto_1
    const/16 v27, 0x1000

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    .line 221
    if-lez v22, :cond_0

    const/16 v27, 0x1000

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 222
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v11, v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionContent([B[BI)I

    move-result v22

    .line 223
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 224
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    add-int v27, v27, v17

    aget-byte v28, v11, v17

    aput-byte v28, v6, v27

    .line 223
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 213
    .end local v17           #i:I
    :cond_2
    const/16 v27, 0x1000

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-static {v0, v11, v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$SafeMatrix;->decryptionContent([B[BI)I

    .line 214
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    const/16 v27, 0x1000

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_3

    .line 217
    add-int/lit8 v18, v18, 0x1

    .line 218
    add-int/lit16 v0, v14, -0x1000

    move/from16 v22, v0

    .line 219
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v22

    goto :goto_1

    .line 215
    :cond_3
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    add-int v27, v27, v17

    aget-byte v28, v11, v17

    aput-byte v28, v6, v27

    .line 214
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 269
    .end local v6           #decMatrix:[B
    .end local v17           #i:I
    .end local v18           #loopCount:I
    .end local v22           #readCount:I
    :cond_4
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    const/4 v8, 0x0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v10

    .line 273
    .local v10, e:Ljava/io/IOException;
    :goto_4
    const/4 v8, 0x0

    goto :goto_0

    .line 275
    .end local v5           #dataInputStream:Ljava/io/DataInputStream;
    .end local v10           #e:Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 276
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_5
    const/4 v8, 0x0

    goto :goto_0

    .line 275
    .end local v8           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #dataInputStream:Ljava/io/DataInputStream;
    .restart local v6       #decMatrix:[B
    .restart local v9       #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    :catch_2
    move-exception v10

    move-object v8, v9

    .end local v9           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .restart local v8       #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    goto :goto_5

    .line 272
    .end local v8           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .restart local v9       #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    :catch_3
    move-exception v10

    move-object v8, v9

    .end local v9           #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .restart local v8       #diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    goto :goto_4

    .line 180
    nop

    :array_0
    .array-data 0x1
        0x4ct
        0x41t
        0x55t
        0x4et
        0x43t
        0x48t
    .end array-data
.end method

.method public static getDiagnoseLogFile(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    .locals 9
    .parameter "vehicleSoftname"
    .parameter "deviceSN"

    .prologue
    const/4 v5, 0x0

    .line 289
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLaunchPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x1

    const-string/jumbo v8, "Log/DiagnoseLog"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 291
    .local v0, diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v4, root:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 293
    .local v2, files:[Ljava/io/File;
    array-length v6, v2

    :goto_0
    if-lt v5, v6, :cond_0

    .line 309
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 293
    :cond_0
    aget-object v1, v2, v5

    .line 294
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 302
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->analysisFile(Ljava/io/File;)Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v0

    .line 305
    goto :goto_1

    .line 293
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getDiagnoseLogFileList()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 135
    .local v1, diagnoseLogFileInfoVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogsPath()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, diagnoseLogFileInfo:Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, root:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 139
    .local v3, files:[Ljava/io/File;
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 155
    new-instance v6, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$1;

    invoke-direct {v6}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$1;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    return-object v1

    .line 139
    :cond_0
    aget-object v2, v3, v6

    .line 140
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".dat"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->analysisFile(Ljava/io/File;)Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static toSendDiagnosticLog(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, feedbackListFile:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v1, intentsend:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "ListFile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 324
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 325
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/SendDiagnosticLogActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method
