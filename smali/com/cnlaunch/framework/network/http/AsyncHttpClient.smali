.class public Lcom/cnlaunch/framework/network/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/framework/network/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0x5

.field private static final DEFAULT_MAX_RETRIES:I = 0x3

.field private static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field private static final VERSION:Ljava/lang/String; = "1.4.4"

.field private static instance:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>(ZII)V

    .line 149
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "httpPort"

    .prologue
    .line 157
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>(ZII)V

    .line 158
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>(ZII)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 7
    .parameter "schemeRegistry"

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v6, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->maxConnections:I

    .line 109
    const/16 v2, 0x2710

    iput v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    .line 116
    iput-boolean v4, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 225
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 227
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    iget v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 228
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 229
    invoke-static {v1, v6}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 231
    iget v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 232
    iget v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 233
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 234
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 236
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 237
    const-string/jumbo v2, "android-async-http/%s (http://loopj.com/android-async-http)"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "1.4.4"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 241
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 242
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 245
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 246
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 247
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;-><init>(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 259
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$2;-><init>(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 278
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/cnlaunch/framework/network/http/RetryHandler;

    const/4 v4, 0x3

    const/16 v5, 0x5dc

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/framework/network/http/RetryHandler;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 279
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 178
    invoke-static {p1, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 1018
    if-eqz p2, :cond_0

    .line 1019
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1022
    :cond_0
    return-object p1
.end method

.method private static getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    const/4 v4, 0x1

    .line 189
    if-eqz p0, :cond_0

    .line 190
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    if-ge p1, v4, :cond_1

    .line 194
    const/16 p1, 0x50

    .line 195
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    if-ge p2, v4, :cond_2

    .line 199
    const/16 p2, 0x1bb

    .line 200
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    if-eqz p0, :cond_3

    .line 207
    invoke-static {}, Lcom/cnlaunch/framework/network/http/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 211
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 212
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 213
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-direct {v2, v3, v1, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 215
    return-object v0

    .line 209
    .end local v0           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v1           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .restart local v1       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/framework/network/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/AsyncHttpClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 134
    sget-object v0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    if-nez v0, :cond_1

    .line 135
    const-class v1, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    .line 135
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 6
    .parameter "shouldEncodeUrl"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 966
    if-eqz p0, :cond_0

    .line 967
    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 969
    :cond_0
    if-eqz p2, :cond_1

    .line 970
    invoke-virtual {p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, paramString:Ljava/lang/String;
    const-string/jumbo v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 978
    .end local v0           #paramString:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v1, "AsyncHttpClient"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    return-object p1

    .line 974
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 4
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    const/4 v3, 0x0

    .line 990
    const/4 v0, 0x0

    .line 993
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 994
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getEntity(Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1003
    :cond_0
    :goto_0
    return-object v0

    .line 996
    :catch_0
    move-exception v1

    .line 997
    .local v1, t:Ljava/lang/Throwable;
    if-eqz p2, :cond_1

    .line 998
    const/4 v2, 0x0

    invoke-interface {p2, v2, v3, v3, v1}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 507
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 508
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 509
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    return-void

    .line 509
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 510
    .local v2, requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 511
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public clearBasicAuth()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 494
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 867
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 868
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 897
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 898
    .local v3, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 881
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 882
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 656
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 657
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    return v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 569
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 584
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 585
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 700
    invoke-direct {p0, p3, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 717
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 735
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 736
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 737
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 759
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 760
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 801
    invoke-direct {p0, p3, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 819
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 838
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 839
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 776
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/RequestHandle;
    .locals 5
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 915
    if-eqz p4, :cond_0

    .line 916
    const-string/jumbo v3, "Content-Type"

    invoke-interface {p3, v3, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_0
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {p5, v3}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->setRequestHeaders([Lorg/apache/http/Header;)V

    .line 920
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {p5, v3}, Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 922
    const/4 v1, 0x0

    .line 924
    .local v1, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;

    invoke-direct {v4, p1, p2, p3, p5}, Lcom/cnlaunch/framework/network/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 931
    if-eqz p6, :cond_2

    .line 933
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 934
    .local v2, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v2, :cond_1

    .line 935
    new-instance v2, Ljava/util/LinkedList;

    .end local v2           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 936
    .restart local v2       #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    .end local v2           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    new-instance v3, Lcom/cnlaunch/framework/network/http/RequestHandle;

    invoke-direct {v3, v1}, Lcom/cnlaunch/framework/network/http/RequestHandle;-><init>(Ljava/util/concurrent/Future;)V

    :goto_0
    return-object v3

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    .line 928
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 472
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 473
    .local v0, scope:Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 474
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 485
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 487
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public setEnableRedirects(Z)V
    .locals 2
    .parameter "enableRedirects"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;-><init>(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 336
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 3
    .parameter "maxConnections"

    .prologue
    .line 364
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 365
    const/4 p1, 0x5

    .line 366
    :cond_0
    iput p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->maxConnections:I

    .line 367
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 368
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 369
    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2
    .parameter "retries"
    .parameter "timeout"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cnlaunch/framework/network/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/cnlaunch/framework/network/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 443
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 402
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 403
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 404
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 405
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 416
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 417
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v3, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 418
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 419
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 420
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 421
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 422
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 433
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 321
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 386
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    .line 387
    const/16 p1, 0x2710

    .line 388
    :cond_0
    iput p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    .line 389
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 390
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 391
    iget v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 392
    iget v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 393
    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 955
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 346
    return-void
.end method
