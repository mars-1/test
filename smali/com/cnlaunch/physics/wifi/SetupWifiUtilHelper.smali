.class public Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;
.super Ljava/lang/Object;
.source "SetupWifiUtilHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    }
.end annotation


# static fields
.field public static final CONNECTED_INTERRUPTED:I = 0xe8

.field public static final CONNECTED_WIFI_FAIL:I = 0xe5

.field public static final CONNECTED_WIFI_SUCCESS:I = 0xe6

.field public static final OPEN_WIFI_FAIL:I = 0xdf

.field public static final OPEN_WIFI_SUCCESS:I = 0xde

.field public static final QUERY_WIFI_PASSWORD:I = 0xe0

.field public static final QUERY_WIFI_PASSWORD_NULL:I = 0xe1

.field public static final READ_COMMAND_FAIL:I = 0xe4

.field public static final SERIAL_NO_ERROR:I = 0xe7

.field public static final SET_WIFI_PASSWORD_FAIL:I = 0xe3

.field public static final SET_WIFI_PASSWORD_SUCCESS:I = 0xe2

.field private static mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;


# instance fields
.field public final CHILD_OPEN_WIFI:B

.field public final CHILD_QUERY_WIFI_PASSWORD:B

.field public final CHILD_SET_WIFI_PASSWORD:B

.field public final CHILD_UPDATE_WIFI_PASSWORD:B

.field public final CLIENT_BYTE:B

.field public final GOLO_BYTE:B

.field public final HEAD_BYTE:[B

.field public final RECEIVER_GOLO_TO_CLIENT:B

.field public final SEND_CLIENT_TO_GOLO:B

.field private command_count:I

.field private isCheckSocketClosed:Z

.field private mHandler:Landroid/os/Handler;

.field private mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

.field private mReadThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->HEAD_BYTE:[B

    .line 13
    const/4 v0, -0x8

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->CLIENT_BYTE:B

    .line 14
    const/16 v0, -0x10

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->GOLO_BYTE:B

    .line 15
    const/16 v0, 0x2f

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->SEND_CLIENT_TO_GOLO:B

    .line 16
    const/16 v0, 0x6f

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->RECEIVER_GOLO_TO_CLIENT:B

    .line 17
    iput-byte v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->CHILD_OPEN_WIFI:B

    .line 18
    iput-byte v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->CHILD_SET_WIFI_PASSWORD:B

    .line 19
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->CHILD_UPDATE_WIFI_PASSWORD:B

    .line 20
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->CHILD_QUERY_WIFI_PASSWORD:B

    .line 36
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    .line 37
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    .line 38
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->command_count:I

    .line 241
    iput-boolean v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z

    .line 51
    return-void

    .line 11
    :array_0
    .array-data 0x1
        0x55t
        0xaat
    .end array-data
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->parserValue([B)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    invoke-direct {v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    .line 46
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    return-object v0
.end method

.method private packageData(Ljava/lang/String;)[B
    .locals 8
    .parameter "serialNo"

    .prologue
    const/4 v7, 0x0

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "\u0000"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 102
    .local v3, str:[B
    const/4 v5, 0x2

    new-array v4, v5, [B

    array-length v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    const/4 v5, 0x1

    array-length v6, v3

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 103
    .local v4, str_length:[B
    array-length v5, v3

    array-length v6, v4

    add-int v1, v5, v6

    .line 104
    .local v1, dataLength:I
    new-array v0, v1, [B

    .line 105
    .local v0, data:[B
    const/4 v2, 0x0

    .line 106
    .local v2, index:I
    array-length v5, v4

    invoke-static {v4, v7, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v5, v4

    add-int/2addr v2, v5

    .line 108
    array-length v5, v3

    invoke-static {v3, v7, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-object v0
.end method

.method private packageData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 12
    .parameter "serialNo"
    .parameter "password"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "\u0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 115
    .local v3, str:[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "\u0000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 116
    .local v4, str2:[B
    new-array v6, v11, [B

    array-length v7, v3

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    array-length v7, v3

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v10

    .line 117
    .local v6, str_length:[B
    new-array v5, v11, [B

    array-length v7, v4

    shr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v9

    array-length v7, v4

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v10

    .line 118
    .local v5, str2_length:[B
    array-length v7, v3

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v4

    add-int/2addr v7, v8

    array-length v8, v5

    add-int v1, v7, v8

    .line 119
    .local v1, dataLength:I
    new-array v0, v1, [B

    .line 120
    .local v0, data:[B
    const/4 v2, 0x0

    .line 121
    .local v2, index:I
    array-length v7, v6

    invoke-static {v6, v9, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    array-length v7, v6

    add-int/2addr v2, v7

    .line 123
    array-length v7, v3

    invoke-static {v3, v9, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v7, v3

    add-int/2addr v2, v7

    .line 125
    array-length v7, v5

    invoke-static {v5, v9, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v7, v5

    add-int/2addr v2, v7

    .line 127
    array-length v7, v4

    invoke-static {v4, v9, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    return-object v0
.end method

.method private parserValue([B)V
    .locals 10
    .parameter "receiverData"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 154
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 155
    aget-byte v2, p1, v8

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    aget-byte v2, p1, v7

    const/16 v3, -0x56

    if-ne v2, v3, :cond_0

    aget-byte v2, p1, v9

    const/4 v3, -0x8

    if-ne v2, v3, :cond_0

    aget-byte v2, p1, v6

    const/16 v3, -0x10

    if-ne v2, v3, :cond_0

    .line 156
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v2

    new-array v3, v9, [B

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    aput-byte v4, v3, v8

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    aput-byte v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->byteToInt([B)I

    move-result v1

    .line 157
    .local v1, packet_length:I
    if-lez v1, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x6

    if-ge v1, v2, :cond_0

    .line 158
    new-array v0, v1, [B

    .line 159
    .local v0, packet_data:[B
    const/4 v2, 0x6

    array-length v3, v0

    invoke-static {p1, v2, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    aget-byte v2, v0, v7

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_0

    .line 161
    aget-byte v2, v0, v9

    packed-switch v2, :pswitch_data_0

    .line 202
    .end local v0           #packet_data:[B
    .end local v1           #packet_length:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 163
    .restart local v0       #packet_data:[B
    .restart local v1       #packet_length:I
    :pswitch_1
    aget-byte v2, v0, v6

    if-nez v2, :cond_1

    .line 165
    const/16 v2, 0xde

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_1
    aget-byte v2, v0, v6

    if-ne v2, v7, :cond_2

    .line 167
    const/16 v2, 0xe7

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_2
    const/16 v2, 0xdf

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 174
    :pswitch_2
    aget-byte v2, v0, v6

    if-nez v2, :cond_3

    .line 176
    const/16 v2, 0xe2

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_3
    aget-byte v2, v0, v6

    if-ne v2, v7, :cond_4

    .line 178
    const/16 v2, 0xe7

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_4
    const/16 v2, 0xe3

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 185
    :pswitch_3
    aget-byte v2, v0, v6

    if-nez v2, :cond_5

    .line 187
    invoke-direct {p0, v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->parserWIFIPassword([B)V

    goto :goto_0

    .line 188
    :cond_5
    aget-byte v2, v0, v6

    if-ne v2, v7, :cond_6

    .line 189
    const/16 v2, 0xe7

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_6
    const/16 v2, 0xe1

    invoke-direct {p0, v2, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parserWIFIPassword([B)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 205
    array-length v4, p1

    if-lt v4, v7, :cond_0

    .line 206
    const/4 v4, 0x2

    new-array v1, v4, [B

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    aput-byte v4, v1, v6

    const/4 v4, 0x1

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    aput-byte v5, v1, v4

    .line 207
    .local v1, length_byte:[B
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->byteToInt([B)I

    move-result v0

    .line 208
    .local v0, length:I
    if-lez v0, :cond_1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x6

    if-gt v0, v4, :cond_1

    .line 209
    new-array v2, v0, [B

    .line 210
    .local v2, password:[B
    array-length v4, v2

    invoke-static {p1, v7, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 212
    .local v3, strPW:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 214
    const/16 v4, 0xe0

    invoke-direct {p0, v4, v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    .line 219
    .end local v0           #length:I
    .end local v1           #length_byte:[B
    .end local v2           #password:[B
    .end local v3           #strPW:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0       #length:I
    .restart local v1       #length_byte:[B
    :cond_1
    const/16 v4, 0xe1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 271
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    .line 272
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    .line 274
    :cond_0
    return-void
.end method

.method private receiverMsg(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "val"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendCommand([B[B)V
    .locals 13
    .parameter "command_type"
    .parameter "data"

    .prologue
    .line 67
    const/4 v10, 0x2

    new-array v0, v10, [B

    fill-array-data v0, :array_0

    .line 68
    .local v0, client_to_golo:[B
    array-length v10, p1

    add-int/lit8 v10, v10, 0x1

    array-length v11, p2

    add-int v6, v10, v11

    .line 69
    .local v6, packet_length:I
    const/4 v10, 0x2

    new-array v7, v10, [B

    const/4 v10, 0x0

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    const/4 v10, 0x1

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    .line 70
    .local v7, packet_length_byte:[B
    iget-object v10, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->HEAD_BYTE:[B

    array-length v10, v10

    array-length v11, v0

    add-int/2addr v10, v11

    array-length v11, v7

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    add-int/lit8 v2, v10, 0x1

    .line 71
    .local v2, commandLength:I
    const/4 v10, 0x1

    new-array v3, v10, [B

    const/4 v10, 0x0

    iget v11, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->command_count:I

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 72
    .local v3, count:[B
    new-array v1, v2, [B

    .line 73
    .local v1, command:[B
    const/4 v5, 0x0

    .line 74
    .local v5, index:I
    iget-object v10, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->HEAD_BYTE:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->HEAD_BYTE:[B

    array-length v12, v12

    invoke-static {v10, v11, v1, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v10, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->HEAD_BYTE:[B

    array-length v10, v10

    add-int/2addr v5, v10

    .line 76
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v10, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v10, v0

    add-int/2addr v5, v10

    .line 78
    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v10, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v10, v7

    add-int/2addr v5, v10

    .line 80
    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v3, v10, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v10, v3

    add-int/2addr v5, v10

    .line 82
    const/4 v10, 0x0

    array-length v11, p1

    invoke-static {p1, v10, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    array-length v10, p1

    add-int/2addr v5, v10

    .line 84
    const/4 v10, 0x0

    array-length v11, p2

    invoke-static {p2, v10, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v10, p2

    add-int/2addr v5, v10

    .line 86
    const/4 v9, 0x0

    .line 87
    .local v9, xor:B
    const/4 v4, 0x2

    .local v4, i:I
    :goto_0
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    if-lt v4, v10, :cond_0

    .line 94
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    aput-byte v9, v1, v10

    .line 96
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->sendCommand([B)Z

    move-result v8

    .line 97
    .local v8, result:Z
    iget v10, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->command_count:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->command_count:I

    .line 98
    return-void

    .line 88
    .end local v8           #result:Z
    :cond_0
    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 89
    aget-byte v9, v1, v4

    .line 87
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    aget-byte v10, v1, v4

    xor-int/2addr v10, v9

    int-to-byte v9, v10

    goto :goto_1

    .line 67
    nop

    :array_0
    .array-data 0x1
        0xf0t
        0xf8t
    .end array-data
.end method

.method private startCheckSocketClosed()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z

    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;-><init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private startListener()V
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->quit()V

    .line 224
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "read_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    .line 226
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;-><init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    .line 229
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->startRead(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;)V

    .line 231
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->startCheckSocketClosed()V

    .line 232
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z

    .line 278
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->quit()V

    .line 282
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->close()V

    .line 283
    return-void
.end method

.method public openWIFI(Ljava/lang/String;)V
    .locals 3
    .parameter "serialNo"

    .prologue
    .line 140
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 141
    .local v0, command_type:[B
    invoke-direct {p0, p1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->packageData(Ljava/lang/String;)[B

    move-result-object v1

    .line 143
    .local v1, data:[B
    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->sendCommand([B[B)V

    .line 144
    return-void

    .line 140
    :array_0
    .array-data 0x1
        0x2ft
        0x1t
    .end array-data
.end method

.method public queryWIFIPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "serialNo"

    .prologue
    .line 147
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 148
    .local v0, command_type:[B
    invoke-direct {p0, p1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->packageData(Ljava/lang/String;)[B

    move-result-object v1

    .line 150
    .local v1, data:[B
    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->sendCommand([B[B)V

    .line 151
    return-void

    .line 147
    :array_0
    .array-data 0x1
        0x2ft
        0x4t
    .end array-data
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public setWIFIPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serialNo"
    .parameter "password"

    .prologue
    .line 133
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 134
    .local v0, command_type:[B
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->packageData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 136
    .local v1, data:[B
    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->sendCommand([B[B)V

    .line 137
    return-void

    .line 133
    :array_0
    .array-data 0x1
        0x2ft
        0x3t
    .end array-data
.end method

.method public startConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->connectedGolo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->startListener()V

    .line 60
    const/16 v0, 0xe6

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/16 v0, 0xe5

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V

    goto :goto_0
.end method
