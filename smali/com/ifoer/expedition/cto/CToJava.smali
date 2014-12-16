.class public Lcom/ifoer/expedition/cto/CToJava;
.super Ljava/lang/Object;
.source "CToJava.java"


# static fields
.field private static bluetooth_command:Ljava/lang/String;

.field private static command_wait:Z

.field private static instance:Lcom/ifoer/expedition/cto/CToJava;

.field private static mContext:Landroid/content/Context;

.field private static mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

.field private static stdJni:Lcom/ifoer/expedition/ndk/StdJni;


# instance fields
.field CommandReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/ifoer/expedition/cto/CToJava;->instance:Lcom/ifoer/expedition/cto/CToJava;

    .line 25
    sput-object v0, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    .line 26
    sput-object v0, Lcom/ifoer/expedition/cto/CToJava;->mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    .line 28
    const-string/jumbo v0, ""

    sput-object v0, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Lcom/ifoer/expedition/cto/CToJava$1;

    invoke-direct {v1, p0}, Lcom/ifoer/expedition/cto/CToJava$1;-><init>(Lcom/ifoer/expedition/cto/CToJava;)V

    iput-object v1, p0, Lcom/ifoer/expedition/cto/CToJava;->CommandReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    sput-object p1, Lcom/ifoer/expedition/cto/CToJava;->mContext:Landroid/content/Context;

    .line 32
    new-instance v1, Lcom/ifoer/expedition/ndk/StdJni;

    invoke-direct {v1}, Lcom/ifoer/expedition/ndk/StdJni;-><init>()V

    sput-object v1, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    .line 33
    sget-object v1, Lcom/ifoer/expedition/cto/CToJava;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v1

    sput-object v1, Lcom/ifoer/expedition/cto/CToJava;->mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "BluetoothReceiverCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/ifoer/expedition/cto/CToJava;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifoer/expedition/cto/CToJava;->CommandReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    return-void
.end method

.method public static GetLocalLanguage()I
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/AndroidToLan;->languages(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ReceiveDataByTime([BII)[B
    .locals 10
    .parameter "receiveBuffer"
    .parameter "receiveBufferLength"
    .parameter "maxWaitTime"

    .prologue
    const/4 v9, 0x0

    .line 201
    sget-boolean v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-nez v7, :cond_1

    .line 202
    const/4 v6, 0x0

    .line 229
    :cond_0
    :goto_0
    return-object v6

    .line 204
    :cond_1
    move-object v6, p0

    .line 205
    .local v6, pReceiveBuffer:[B
    move v5, p1

    .line 207
    .local v5, iReceiveBufferLength:I
    int-to-long v7, p2

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    sget-object v1, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    .line 212
    .local v1, backOrder:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 213
    :cond_2
    sget-object v7, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    const/16 v8, -0xe

    invoke-virtual {v7, v8}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 214
    new-array v6, v9, [B

    .line 215
    goto :goto_0

    .line 208
    .end local v1           #backOrder:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 209
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v1       #backOrder:Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    invoke-virtual {v7, v9}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 217
    const/16 v7, 0x8

    const/16 v8, 0xc

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intPackLength(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v5, v7, -0x3

    .line 218
    new-array v6, v5, [B

    .line 219
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 222
    .local v0, allOrder:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v0, v8}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, flag:I
    const/16 v4, 0x9

    .local v4, i:I
    :goto_2
    add-int/lit8 v7, v5, 0x9

    if-ge v4, v7, :cond_0

    .line 225
    aget-byte v7, v0, v4

    aput-byte v7, v6, v3

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static WriteAndRead([BI[BII)[B
    .locals 15
    .parameter "sendBuffer"
    .parameter "sendDataLength"
    .parameter "receiveBuffer"
    .parameter "receiveBufferLength"
    .parameter "maxWaitTime"

    .prologue
    .line 99
    sget-boolean v11, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-nez v11, :cond_1

    .line 100
    const/4 v6, 0x0

    .line 136
    :cond_0
    :goto_0
    return-object v6

    .line 102
    :cond_1
    move-object v7, p0

    .line 103
    .local v7, pSendBuffer:[B
    move-object/from16 v6, p2

    .line 104
    .local v6, pReceiveBuffer:[B
    move/from16 v5, p3

    .line 105
    .local v5, iReceiveBufferLength:I
    const-string/jumbo v11, ""

    invoke-static {v7, v11}, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->smartBox2701([BLjava/lang/String;)[B

    move-result-object v8

    .line 108
    .local v8, sendOrder:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v8, v12}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 109
    invoke-static {v8}, Lcom/ifoer/expedition/cto/CToJava;->sendWriteCommand([B)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 111
    .local v9, startTime:J
    :cond_2
    :goto_1
    sget-boolean v11, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    if-nez v11, :cond_4

    .line 118
    sget-object v2, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    .line 119
    .local v2, backOrder:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 120
    :cond_3
    sget-object v11, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    const/16 v12, -0xe

    invoke-virtual {v11, v12}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 121
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 122
    goto :goto_0

    .line 112
    .end local v2           #backOrder:Ljava/lang/String;
    :cond_4
    const-wide/16 v11, 0xa

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    move/from16 v0, p4

    int-to-long v13, v0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    .line 114
    const/4 v11, 0x0

    sput-boolean v11, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    .line 115
    const/4 v11, 0x0

    sput-object v11, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    goto :goto_1

    .line 123
    .restart local v2       #backOrder:Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 124
    const/16 v11, 0x8

    const/16 v12, 0xc

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intPackLength(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .line 125
    new-array v6, v5, [B

    .line 126
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 129
    .local v1, allOrder:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v1, v12}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, flag:I
    const/4 v4, 0x7

    .local v4, i:I
    :goto_2
    add-int/lit8 v11, v5, 0x7

    if-ge v4, v11, :cond_0

    .line 132
    aget-byte v11, v1, v4

    aput-byte v11, v6, v3

    .line 133
    add-int/lit8 v3, v3, 0x1

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static WriteAndRead2701([BI[BII)[B
    .locals 15
    .parameter "sendBuffer"
    .parameter "sendDataLength"
    .parameter "receiveBuffer"
    .parameter "receiveBufferLength"
    .parameter "maxWaitTime"

    .prologue
    .line 140
    sget-boolean v11, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-nez v11, :cond_1

    .line 141
    const/4 v6, 0x0

    .line 178
    :cond_0
    :goto_0
    return-object v6

    .line 143
    :cond_1
    move-object v7, p0

    .line 144
    .local v7, pSendBuffer:[B
    move-object/from16 v6, p2

    .line 145
    .local v6, pReceiveBuffer:[B
    move/from16 v5, p3

    .line 146
    .local v5, iReceiveBufferLength:I
    const-string/jumbo v11, "2701"

    invoke-static {v7, v11}, Lcom/cnlaunch/diagnosemodule/utils/OrderMontage;->smartBox2701([BLjava/lang/String;)[B

    move-result-object v8

    .line 149
    .local v8, sendOrder:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v8, v12}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 150
    invoke-static {v8}, Lcom/ifoer/expedition/cto/CToJava;->sendWriteCommand([B)V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 152
    .local v9, startTime:J
    :cond_2
    :goto_1
    sget-boolean v11, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    if-nez v11, :cond_4

    .line 159
    sget-object v2, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    .line 160
    .local v2, backOrder:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_5

    .line 161
    :cond_3
    sget-object v11, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    const/16 v12, -0xe

    invoke-virtual {v11, v12}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 162
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 163
    goto :goto_0

    .line 153
    .end local v2           #backOrder:Ljava/lang/String;
    :cond_4
    const-wide/16 v11, 0xa

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v9

    move/from16 v0, p4

    int-to-long v13, v0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    .line 155
    const/4 v11, 0x0

    sput-boolean v11, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    .line 156
    const/4 v11, 0x0

    sput-object v11, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    goto :goto_1

    .line 164
    .restart local v2       #backOrder:Ljava/lang/String;
    :cond_5
    sget-object v11, Lcom/ifoer/expedition/cto/CToJava;->stdJni:Lcom/ifoer/expedition/ndk/StdJni;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ifoer/expedition/ndk/StdJni;->setStateCode(I)I

    .line 165
    const/16 v11, 0x8

    const/16 v12, 0xc

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intPackLength(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v5, v11, -0x3

    .line 166
    new-array v6, v5, [B

    .line 167
    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 170
    .local v1, allOrder:[B
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v1, v12}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, flag:I
    const/16 v4, 0x9

    .local v4, i:I
    :goto_2
    add-int/lit8 v11, v5, 0x9

    if-ge v4, v11, :cond_0

    .line 174
    aget-byte v11, v1, v4

    aput-byte v11, v6, v3

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    sput-object p0, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ifoer/expedition/cto/CToJava;->bluetooth_command:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-boolean p0, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    return-void
.end method

.method private static dataUtil([B)Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;
    .locals 12
    .parameter "buffer"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 271
    new-instance v7, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;

    invoke-direct {v7}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;-><init>()V

    .line 272
    .local v7, uiData:Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;
    array-length v0, p0

    .line 273
    .local v0, bufferLen:I
    if-le v0, v9, :cond_0

    .line 274
    new-array v1, v9, [B

    aget-byte v8, p0, v10

    aput-byte v8, v1, v10

    aget-byte v8, p0, v11

    aput-byte v8, v1, v11

    .line 275
    .local v1, data:[B
    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intPackLength([B)I

    move-result v4

    .line 276
    .local v4, packageLen:I
    if-lt v0, v4, :cond_0

    .line 277
    aget-byte v8, p0, v9

    invoke-virtual {v7, v8}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->setPackageId(B)V

    .line 278
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    invoke-static {v8}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteToInt(B)I

    move-result v5

    .line 279
    .local v5, packageType:I
    invoke-virtual {v7, v5}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->setPackageType(I)V

    .line 280
    add-int/lit8 v8, v4, -0x4

    new-array v6, v8, [B

    .line 281
    .local v6, temp:[B
    const/4 v2, 0x0

    .line 282
    .local v2, flag:I
    const/4 v3, 0x4

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 286
    invoke-virtual {v7, v6}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->setData([B)V

    .line 289
    .end local v1           #data:[B
    .end local v2           #flag:I
    .end local v3           #i:I
    .end local v4           #packageLen:I
    .end local v5           #packageType:I
    .end local v6           #temp:[B
    :cond_0
    return-object v7

    .line 283
    .restart local v1       #data:[B
    .restart local v2       #flag:I
    .restart local v3       #i:I
    .restart local v4       #packageLen:I
    .restart local v5       #packageType:I
    .restart local v6       #temp:[B
    :cond_1
    aget-byte v8, p0, v3

    aput-byte v8, v6, v2

    .line 284
    add-int/lit8 v2, v2, 0x1

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static feedbackData([BLcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;)[B
    .locals 9
    .parameter "data"
    .parameter "uiData"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 254
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->getPackageId()B

    move-result v3

    .line 255
    .local v3, pageId:B
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->getPackageType()I

    move-result v6

    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexByte(I)B

    move-result v5

    .line 256
    .local v5, pageType:B
    array-length v6, p0

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->packLength(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 257
    .local v4, pageLen:[B
    array-length v6, p0

    add-int/lit8 v6, v6, 0x4

    new-array v0, v6, [B

    .line 258
    .local v0, feedbackDatas:[B
    aget-byte v6, v4, v7

    aput-byte v6, v0, v7

    .line 259
    aget-byte v6, v4, v8

    aput-byte v6, v0, v8

    .line 260
    const/4 v6, 0x2

    aput-byte v3, v0, v6

    .line 261
    const/4 v6, 0x3

    aput-byte v5, v0, v6

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, flag:I
    const/4 v2, 0x4

    .local v2, i:I
    :goto_0
    array-length v6, p0

    add-int/lit8 v6, v6, 0x4

    if-lt v2, v6, :cond_0

    .line 267
    return-object v0

    .line 264
    :cond_0
    aget-byte v6, p0, v1

    aput-byte v6, v0, v2

    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getGGPname(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 242
    return-void
.end method

.method public static getProtData([B)[B
    .locals 8
    .parameter "databuffer"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 66
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    invoke-virtual {v4, p0, v6}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 67
    sput-boolean v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_WAIT:Z

    .line 68
    sput-boolean v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAG_LIB_OLD:Z

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, feedback:[B
    invoke-static {p0}, Lcom/ifoer/expedition/cto/CToJava;->dataUtil([B)Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;

    move-result-object v3

    .line 71
    .local v3, pageInteractiveData:Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;
    invoke-virtual {v3}, Lcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;->getPackageType()I

    move-result v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 72
    new-array v0, v7, [B

    .line 73
    .local v0, back:[B
    invoke-static {v0, v3}, Lcom/ifoer/expedition/cto/CToJava;->feedbackData([BLcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;)[B

    move-result-object v2

    .line 74
    new-array v4, v6, [B

    invoke-static {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    .line 92
    :goto_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->writeBytes([BB)V

    .line 94
    const/4 v4, 0x0

    sput-object v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    .line 95
    return-object v2

    .line 76
    .end local v0           #back:[B
    :cond_0
    sget-object v4, Lcom/ifoer/expedition/cto/CToJava;->mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    if-nez v4, :cond_1

    .line 77
    sget-object v4, Lcom/ifoer/expedition/cto/CToJava;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v4

    sput-object v4, Lcom/ifoer/expedition/cto/CToJava;->mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 78
    :cond_1
    sget-object v4, Lcom/ifoer/expedition/cto/CToJava;->mDiag:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-virtual {v4, p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->forwardOldUIData([B)V

    .line 80
    :goto_1
    sget-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_WAIT:Z

    if-nez v4, :cond_2

    .line 87
    new-array v0, v7, [B

    .line 88
    .restart local v0       #back:[B
    invoke-static {v0, v3}, Lcom/ifoer/expedition/cto/CToJava;->feedbackData([BLcom/cnlaunch/diagnosemodule/bean/PageInteractiveData;)[B

    move-result-object v2

    .line 89
    sget-object v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->OLD_DIAG_FEEDBACK:[B

    invoke-static {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->byteMerger([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 82
    .end local v0           #back:[B
    :cond_2
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    sget-object v0, Lcom/ifoer/expedition/cto/CToJava;->instance:Lcom/ifoer/expedition/cto/CToJava;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/ifoer/expedition/cto/CToJava;

    invoke-direct {v0, p0}, Lcom/ifoer/expedition/cto/CToJava;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifoer/expedition/cto/CToJava;->instance:Lcom/ifoer/expedition/cto/CToJava;

    .line 61
    :cond_0
    return-void
.end method

.method public static notifyError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 251
    return-void
.end method

.method private static sendWriteCommand([B)V
    .locals 2
    .parameter "command"

    .prologue
    .line 187
    const/4 v1, 0x1

    sput-boolean v1, Lcom/ifoer/expedition/cto/CToJava;->command_wait:Z

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "BluetoothSendCommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "BluetoothWriteCommand"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 190
    sget-object v1, Lcom/ifoer/expedition/cto/CToJava;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
