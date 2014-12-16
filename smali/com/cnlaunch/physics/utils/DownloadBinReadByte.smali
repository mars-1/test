.class public Lcom/cnlaunch/physics/utils/DownloadBinReadByte;
.super Ljava/lang/Object;
.source "DownloadBinReadByte.java"

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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    .line 19
    iput v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    .line 20
    const/4 v0, 0x7

    iput v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    .line 21
    iput v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->length:I

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mInStream:Ljava/io/InputStream;

    .line 26
    iput-object p3, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mOutStream:Ljava/io/OutputStream;

    .line 27
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 96
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/16 v6, 0x400

    const/16 v12, 0x8

    const/4 v11, 0x7

    const/4 v10, 0x2

    .line 31
    new-array v0, v6, [B

    .line 35
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 36
    .local v2, bytes:I
    invoke-static {v0, v2}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->cutOutByte([BI)[B

    move-result-object v3

    .line 37
    .local v3, ontBuffer:[B
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    array-length v6, v6

    if-gtz v6, :cond_5

    .line 38
    :cond_0
    iput-object v3, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    .line 44
    :goto_1
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, order:Ljava/lang/String;
    const-string/jumbo v6, "55aaf8f0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 46
    .local v5, sites:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_1

    if-lez v5, :cond_1

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    .line 50
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    .line 51
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_4

    .line 52
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "55"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    if-lt v6, v10, :cond_4

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "aa"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 54
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_4

    .line 55
    const/16 v6, 0x8

    const/16 v7, 0xc

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->intPackLength(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->length:I

    .line 56
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    if-ne v6, v11, :cond_2

    .line 57
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    iget v7, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->length:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    .line 59
    :cond_2
    iget v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    iget v7, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    if-lt v6, v7, :cond_4

    .line 60
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    if-eqz v6, :cond_3

    .line 61
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    iget-object v7, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    invoke-static {v7}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget v9, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    mul-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand(Ljava/lang/String;)V

    .line 62
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v6}, Lcom/cnlaunch/physics/impl/IPhysics;->getBridge()Lcom/cnlaunch/physics/utils/Bridge;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/physics/utils/Bridge;->putData()V

    .line 63
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v6}, Lcom/cnlaunch/physics/impl/IPhysics;->getTimer()Ljava/util/Timer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 64
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v6}, Lcom/cnlaunch/physics/impl/IPhysics;->getTimer()Ljava/util/Timer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 67
    :cond_3
    const/4 v6, 0x7

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->totalLength:I

    .line 68
    const/4 v6, 0x0

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->length:I

    .line 69
    const/4 v6, 0x0

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    .line 70
    const-string/jumbo v4, ""

    .line 71
    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    .line 77
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->flag:I

    .line 78
    const/16 v6, 0x400

    new-array v0, v6, [B

    goto/16 :goto_0

    .line 40
    .end local v4           #order:Ljava/lang/String;
    .end local v5           #sites:I
    :cond_5
    iget-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    invoke-static {v6, v3}, Lcom/cnlaunch/physics/utils/ByteHexHelper;->getMergeBytes([B[B)[B

    move-result-object v1

    .line 41
    .local v1, bugBuffer:[B
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B

    .line 42
    iput-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->fullBuffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 79
    .end local v1           #bugBuffer:[B
    .end local v2           #bytes:I
    .end local v3           #ontBuffer:[B
    :catch_0
    move-exception v6

    .line 83
    return-void
.end method

.method public write([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinReadByte;->mOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
