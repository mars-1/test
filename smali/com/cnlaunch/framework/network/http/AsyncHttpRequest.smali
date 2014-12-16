.class Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)V
    .locals 9
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v4, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->tag:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 48
    iput-object p2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 49
    iput-object p3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 50
    iput-object p4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    .line 53
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    instance-of v4, v4, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    if-eqz v4, :cond_0

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 55
    .local v0, breakpointHandler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 56
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getEnableBreakpoint()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 58
    .local v1, previousFileSize:J
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "previousFileSized: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string/jumbo v5, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0           #breakpointHandler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    .end local v1           #previousFileSize:J
    .end local v3           #tempFile:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private makeRequest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/net/MalformedURLException;

    const-string/jumbo v2, "No valid URI scheme was provided"

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 93
    .local v0, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 99
    .end local v0           #response:Lorg/apache/http/HttpResponse;
    :cond_1
    return-void
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v3, 0x1

    .line 103
    .local v3, retry:Z
    const/4 v0, 0x0

    .line 104
    .local v0, cause:Ljava/io/IOException;
    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    move-object v1, v0

    .line 106
    .end local v0           #cause:Ljava/io/IOException;
    .local v1, cause:Ljava/io/IOException;
    :goto_0
    if-nez v3, :cond_0

    move-object v0, v1

    .line 137
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :goto_1
    throw v0

    .line 108
    .end local v0           #cause:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 109
    return-void

    .line 110
    :catch_0
    move-exception v2

    .line 114
    .local v2, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "UnknownHostException exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 115
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :try_start_2
    iget v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 126
    .end local v2           #e:Ljava/net/UnknownHostException;
    :goto_2
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    invoke-interface {v5}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendRetryMessage()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    move-object v1, v0

    .end local v0           #cause:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    goto :goto_0

    .line 115
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    .restart local v2       #e:Ljava/net/UnknownHostException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 116
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "NPE in HttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :try_start_4
    iget v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_2

    .line 122
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, e:Ljava/io/IOException;
    move-object v0, v2

    .line 124
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    iget v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    goto :goto_2

    .line 130
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v1

    .line 132
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const-string/jumbo v5, "AsyncHttpRequest"

    const-string/jumbo v6, "Unhandled exception origin cause"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unhandled exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .restart local v0       #cause:Ljava/io/IOException;
    goto/16 :goto_1

    .line 130
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    invoke-interface {v1}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendStartMessage()V

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    invoke-interface {v1}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendFinishMessage()V

    .line 81
    :cond_2
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;->responseHandler:Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0
.end method
