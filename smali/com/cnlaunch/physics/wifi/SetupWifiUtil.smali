.class public Lcom/cnlaunch/physics/wifi/SetupWifiUtil;
.super Ljava/lang/Object;
.source "SetupWifiUtil.java"


# static fields
.field private static mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;


# instance fields
.field public final IP_ADDRESS:Ljava/lang/String;

.field public final PORT_ADDRESS:I

.field private mClientSocket:Ljava/net/Socket;

.field private mIS:Ljava/io/InputStream;

.field private mOS:Ljava/io/OutputStream;

.field private mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

.field private readRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "192.168.43.1"

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->IP_ADDRESS:Ljava/lang/String;

    .line 16
    const/16 v0, 0x11d7

    iput v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->PORT_ADDRESS:I

    .line 90
    new-instance v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;-><init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)[B
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    invoke-direct {v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    .line 30
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mInstance:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    return-object v0
.end method

.method private readData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    const/16 v3, 0x1400

    new-array v2, v3, [B

    .line 78
    .local v2, temp:[B
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 80
    .local v0, count:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 81
    new-array v1, v0, [B

    .line 82
    .local v1, data:[B
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .end local v0           #count:I
    .end local v1           #data:[B
    :goto_0
    return-object v1

    .line 85
    .restart local v0       #count:I
    :cond_0
    new-array v1, v4, [B

    goto :goto_0

    .line 87
    .end local v0           #count:I
    :cond_1
    new-array v1, v4, [B

    goto :goto_0
.end method


# virtual methods
.method public byteToHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "val"

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 166
    .restart local v0       #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0           #i:I
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1
.end method

.method public byteToInt([B)I
    .locals 5
    .parameter "b"

    .prologue
    .line 174
    const/16 v1, 0xff

    .line 175
    .local v1, mask:I
    const/4 v3, 0x0

    .line 176
    .local v3, temp:I
    const/4 v2, 0x0

    .line 177
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 182
    return v2

    .line 178
    :cond_0
    shl-int/lit8 v2, v2, 0x8

    .line 179
    aget-byte v4, p1, v0

    and-int v3, v4, v1

    .line 180
    or-int/2addr v2, v3

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    if-eqz v1, :cond_0

    .line 131
    iput-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    iput-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 144
    :try_start_1
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :goto_1
    iput-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 153
    :try_start_2
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 158
    :goto_2
    iput-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    .line 160
    :cond_3
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 156
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public connectedGolo()Z
    .locals 4

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->close()V

    .line 41
    new-instance v1, Ljava/net/Socket;

    const-string/jumbo v2, "192.168.43.1"

    const/16 v3, 0x11d7

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    .line 42
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 44
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mIS:Ljava/io/InputStream;

    .line 45
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 55
    .end local v0           #e:Ljava/net/UnknownHostException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/net/Socket;->sendUrgentData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendCommand([B)Z
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/4 v1, 0x1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public startRead(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method
