.class public Lcom/cnlaunch/physics/utils/ReadByteDataStream;
.super Ljava/lang/Object;
.source "ReadByteDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private flag:I

.field private fullBuffer:[B

.field private length:I

.field private mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

.field private mInStream:Ljava/io/InputStream;

.field private mOutStream:Ljava/io/OutputStream;

.field private totalLength:I


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/impl/IPhysics;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "iPhysics"
    .parameter "inStream"
    .parameter "outStream"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    .line 23
    iput v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    .line 24
    const/4 v0, 0x7

    iput v0, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    .line 25
    iput v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->length:I

    .line 28
    iput-object p2, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mInStream:Ljava/io/InputStream;

    .line 29
    iput-object p3, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mOutStream:Ljava/io/OutputStream;

    .line 30
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 31
    return-void
.end method

.method private connectionLost()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v1}, Lcom/cnlaunch/physics/impl/IPhysics;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "DeviceConnectLost"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v7, 0x400

    const/16 v13, 0x8

    const/4 v12, 0x7

    const/4 v11, 0x2

    .line 34
    new-array v0, v7, [B

    .line 38
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 39
    .local v2, bytes:I
    invoke-static {v0, v2}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->cutOutByte([BI)[B

    move-result-object v4

    .line 40
    .local v4, ontBuffer:[B
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    array-length v7, v7

    if-gtz v7, :cond_5

    .line 41
    :cond_0
    iput-object v4, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    .line 47
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, order:Ljava/lang/String;
    const-string/jumbo v7, "55aaf8f0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 49
    .local v6, sites:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_1

    if-lez v6, :cond_1

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    .line 53
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    .line 54
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_4

    .line 55
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "55"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 56
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    if-lt v7, v11, :cond_4

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "aa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 57
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    const/4 v8, 0x6

    if-lt v7, v8, :cond_4

    .line 58
    const/16 v7, 0x8

    const/16 v8, 0xc

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->length:I

    .line 59
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    if-ne v7, v12, :cond_2

    .line 60
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    iget v8, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->length:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    .line 62
    :cond_2
    iget v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    iget v8, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    if-lt v7, v8, :cond_4

    .line 63
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    if-eqz v7, :cond_3

    .line 64
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    iget-object v8, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    invoke-static {v8}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 66
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V

    .line 68
    :cond_3
    const/4 v7, 0x7

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->totalLength:I

    .line 69
    const/4 v7, 0x0

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->length:I

    .line 70
    const/4 v7, 0x0

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    .line 71
    const-string/jumbo v5, ""

    .line 72
    const/4 v7, 0x0

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    .line 78
    :cond_4
    const/4 v7, 0x0

    iput v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->flag:I

    .line 79
    const/16 v7, 0x400

    new-array v0, v7, [B

    goto/16 :goto_0

    .line 43
    .end local v5           #order:Ljava/lang/String;
    .end local v6           #sites:I
    :cond_5
    iget-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    invoke-static {v7, v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->getMergeBytes([B[B)[B

    move-result-object v1

    .line 44
    .local v1, bugBuffer:[B
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B

    .line 45
    iput-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->fullBuffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 80
    .end local v1           #bugBuffer:[B
    .end local v2           #bytes:I
    .end local v4           #ontBuffer:[B
    :catch_0
    move-exception v3

    .line 81
    .local v3, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->connectionLost()V

    .line 85
    return-void
.end method

.method public write([B)V
    .locals 3
    .parameter "buffer"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->connectionLost()V

    .line 93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
