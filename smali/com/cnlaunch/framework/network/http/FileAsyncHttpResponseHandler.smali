.class public Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;
.super Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpResponseHandler"


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    .line 18
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    .line 28
    sget-boolean v0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;-><init>()V

    .line 22
    sget-boolean v0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 24
    return-void
.end method


# virtual methods
.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 8
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_1

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 87
    .local v4, instream:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 88
    .local v1, contentLength:J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 89
    .local v0, buffer:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 91
    const/16 v7, 0x1000

    :try_start_0
    new-array v6, v7, [B

    .line 92
    .local v6, tmp:[B
    const/4 v3, 0x0

    .line 94
    .local v3, count:I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, l:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 100
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 106
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .end local v1           #contentLength:J
    .end local v3           #count:I
    .end local v4           #instream:Ljava/io/InputStream;
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :cond_1
    const/4 v7, 0x0

    return-object v7

    .line 95
    .restart local v0       #buffer:Ljava/io/FileOutputStream;
    .restart local v1       #contentLength:J
    .restart local v3       #count:I
    .restart local v4       #instream:Ljava/io/InputStream;
    .restart local v5       #l:I
    .restart local v6       #tmp:[B
    :cond_2
    add-int/2addr v3, v5

    .line 96
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 97
    long-to-int v7, v1

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->sendProgressMessage(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v3           #count:I
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :catchall_0
    move-exception v7

    .line 100
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 103
    throw v7
.end method

.method protected getTargetFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "c"

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v1, "temp_"

    const-string/jumbo v2, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, t:Ljava/lang/Throwable;
    const-string/jumbo v1, "FileAsyncHttpResponseHandler"

    const-string/jumbo v2, "Cannot create temporary file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFailure(ILjava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "e"
    .parameter "response"

    .prologue
    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/io/File;)V

    .line 66
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "e"
    .parameter "response"

    .prologue
    .line 70
    invoke-virtual {p0, p1, p3, p4}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onFailure(ILjava/lang/Throwable;Ljava/io/File;)V

    .line 71
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 76
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .parameter "e"
    .parameter "response"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public onSuccess(ILjava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "file"

    .prologue
    .line 50
    invoke-virtual {p0, p2}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onSuccess(Ljava/io/File;)V

    .line 51
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "file"

    .prologue
    .line 54
    invoke-virtual {p0, p1, p3}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onSuccess(ILjava/io/File;)V

    .line 55
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 81
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 47
    return-void
.end method
