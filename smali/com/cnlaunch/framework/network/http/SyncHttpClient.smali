.class public Lcom/cnlaunch/framework/network/http/SyncHttpClient;
.super Ljava/lang/Object;
.source "SyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/framework/network/http/SyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String; = "assets"

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODE_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field private static final VERSION:Ljava/lang/String; = "1.4.4"

.field private static cookieStore:Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

.field private static instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;


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

.field private final tag:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>(ZII)V

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "httpPort"

    .prologue
    .line 122
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>(ZII)V

    .line 123
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>(ZII)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 6
    .parameter "schemeRegistry"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-class v2, Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->tag:Ljava/lang/String;

    .line 76
    iput v5, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->maxConnections:I

    .line 77
    const/16 v2, 0x2710

    iput v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    .line 83
    iput-boolean v4, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->isUrlEncodingEnabled:Z

    .line 200
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 202
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    iget v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 203
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v3, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->maxConnections:I

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 204
    invoke-static {v1, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 206
    iget v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 207
    iget v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 208
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 209
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 211
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 212
    const-string/jumbo v2, "android-async-http/%s"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "1.4.4"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 216
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->requestMap:Ljava/util/Map;

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 219
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 220
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/cnlaunch/framework/network/http/SyncHttpClient$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient$1;-><init>(Lcom/cnlaunch/framework/network/http/SyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 233
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/cnlaunch/framework/network/http/SyncHttpClient$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient$2;-><init>(Lcom/cnlaunch/framework/network/http/SyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 251
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 148
    invoke-static {p1, p2, p3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 149
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/http/SyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 875
    if-eqz p2, :cond_0

    .line 876
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 879
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

    .line 163
    if-eqz p0, :cond_0

    .line 164
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    if-ge p1, v4, :cond_1

    .line 168
    const/16 p1, 0x50

    .line 169
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    if-ge p2, v4, :cond_2

    .line 173
    const/16 p2, 0x1bb

    .line 174
    const-string/jumbo v2, "AsyncHttpClient"

    const-string/jumbo v3, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    if-eqz p0, :cond_3

    .line 181
    invoke-static {}, Lcom/cnlaunch/framework/network/http/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 185
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 186
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 187
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "https"

    invoke-direct {v2, v3, v1, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 189
    return-object v0

    .line 183
    .end local v0           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v1           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .restart local v1       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/http/SyncHttpClient;
    .locals 2
    .parameter "context"

    .prologue
    .line 96
    sget-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    if-nez v0, :cond_1

    .line 97
    const-class v1, Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    new-instance v0, Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/cnlaunch/framework/network/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->cookieStore:Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

    .line 104
    sget-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    sget-object v1, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->cookieStore:Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 105
    sget-object v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->instance:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "shouldEncodeUrl"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 823
    if-eqz p0, :cond_0

    .line 824
    const-string/jumbo v1, " "

    const-string/jumbo v2, "%20"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 826
    :cond_0
    if-eqz p2, :cond_1

    .line 827
    invoke-virtual {p2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, paramString:Ljava/lang/String;
    const-string/jumbo v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 829
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

    .line 835
    .end local v0           #paramString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 831
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

.method public static inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 903
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 904
    .local v2, outStream:Ljava/io/ByteArrayOutputStream;
    new-array v1, v5, [B

    .line 905
    .local v1, data:[B
    const/4 v0, -0x1

    .line 906
    .local v0, count:I
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 909
    const/4 v1, 0x0

    .line 910
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 907
    :cond_0
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 7
    .parameter "params"

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 850
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 851
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "params : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/cnlaunch/framework/network/http/RequestParams;->getEntity(Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 857
    :cond_0
    :goto_0
    return-object v1

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 502
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 503
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void

    .line 504
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 505
    .local v2, requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 506
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public clearBasicAuth()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 482
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 593
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0, v0, p1, v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    return v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0, p3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 664
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/cnlaunch/framework/network/http/RequestParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 687
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->paramsToEntity(Lcom/cnlaunch/framework/network/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 688
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 713
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 714
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 715
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0, v0, p1, v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 24
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 738
    const-string/jumbo v15, ""

    .line 740
    .local v15, responseBody:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 741
    const-string/jumbo v19, "Content-Type"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_0
    sget-object v19, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->cookieStore:Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

    invoke-virtual/range {v19 .. v19}, Lcom/cnlaunch/framework/network/http/PersistentCookieStore;->getCookies()Ljava/util/List;

    move-result-object v12

    .line 746
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 747
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_2

    .line 754
    :cond_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v18

    .line 755
    .local v18, uri:Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->tag:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "url : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 758
    .local v17, scheme:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "assets"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 759
    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, fileName:Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 761
    .local v10, intput:Ljava/io/InputStream;
    invoke-static {v10}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->inputSteamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->tag:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "responseBody : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v15

    .line 796
    .end local v7           #fileName:Ljava/lang/String;
    .end local v10           #intput:Ljava/io/InputStream;
    .end local v15           #responseBody:Ljava/lang/String;
    .local v16, responseBody:Ljava/lang/String;
    :goto_1
    return-object v16

    .line 747
    .end local v16           #responseBody:Ljava/lang/String;
    .end local v17           #scheme:Ljava/lang/String;
    .end local v18           #uri:Ljava/net/URI;
    .restart local v15       #responseBody:Ljava/lang/String;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 748
    .local v4, cookie:Lorg/apache/http/cookie/Cookie;
    const-string/jumbo v20, "Cookie"

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 767
    .end local v4           #cookie:Lorg/apache/http/cookie/Cookie;
    .restart local v17       #scheme:Ljava/lang/String;
    .restart local v18       #uri:Ljava/net/URI;
    :cond_3
    const/4 v3, 0x0

    .line 768
    .local v3, bufferEntity:Lorg/apache/http/HttpEntity;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 769
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 770
    .local v6, entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_5

    .line 771
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    .end local v3           #bufferEntity:Lorg/apache/http/HttpEntity;
    invoke-direct {v3, v6}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 772
    .restart local v3       #bufferEntity:Lorg/apache/http/HttpEntity;
    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 773
    sget-boolean v19, Lcom/cnlaunch/framework/utils/NLog;->isDebug:Z

    if-eqz v19, :cond_4

    .line 774
    invoke-interface/range {p3 .. p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "/"

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 775
    .local v11, key:Ljava/lang/String;
    const-string/jumbo v19, "[?.=&:]"

    const-string/jumbo v20, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 776
    invoke-static {v15, v11}, Lcom/cnlaunch/framework/common/CacheManager;->saveTestData(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local v11           #key:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->tag:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "responseBody : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    :cond_5
    const-string/jumbo v19, "Set-Cookie"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 783
    .local v8, headers:[Lorg/apache/http/Header;
    if-eqz v8, :cond_6

    array-length v0, v8

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 784
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v9, v0, :cond_7

    .end local v9           #i:I
    :cond_6
    move-object/from16 v16, v15

    .line 796
    .end local v15           #responseBody:Ljava/lang/String;
    .restart local v16       #responseBody:Ljava/lang/String;
    goto/16 :goto_1

    .line 785
    .end local v16           #responseBody:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v15       #responseBody:Ljava/lang/String;
    :cond_7
    aget-object v19, v8, v9

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 786
    .local v4, cookie:Ljava/lang/String;
    new-instance v13, Lorg/apache/http/impl/cookie/BasicClientCookie;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "cookie"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .local v13, newCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    sget-object v19, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->cookieStore:Lcom/cnlaunch/framework/network/http/PersistentCookieStore;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/cnlaunch/framework/network/http/PersistentCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 784
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 791
    .end local v3           #bufferEntity:Lorg/apache/http/HttpEntity;
    .end local v4           #cookie:Ljava/lang/String;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #headers:[Lorg/apache/http/Header;
    .end local v9           #i:I
    .end local v13           #newCookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #scheme:Ljava/lang/String;
    .end local v18           #uri:Ljava/net/URI;
    :catch_0
    move-exception v5

    .line 792
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    new-instance v19, Lcom/cnlaunch/framework/network/http/HttpException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v19
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 453
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 454
    .local v0, scope:Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 455
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 471
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 475
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string/jumbo v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public setEnableRedirects(Z)V
    .locals 2
    .parameter "enableRedirects"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;-><init>(Lcom/cnlaunch/framework/network/http/SyncHttpClient;Z)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 302
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 3
    .parameter "maxConnections"

    .prologue
    .line 332
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/16 p1, 0xa

    .line 333
    :cond_0
    iput p1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->maxConnections:I

    .line 334
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 335
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 336
    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2
    .parameter "retries"
    .parameter "timeout"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/cnlaunch/framework/network/http/RetryHandler;

    .line 417
    invoke-direct {v1, p1, p2}, Lcom/cnlaunch/framework/network/http/RetryHandler;-><init>(II)V

    .line 416
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 418
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 372
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 373
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 374
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 375
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 390
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v3, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 391
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 392
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 393
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string/jumbo v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 394
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 405
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 355
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    const/16 p1, 0x2710

    .line 356
    :cond_0
    iput p1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    .line 357
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 358
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 359
    iget v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 360
    iget v1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 361
    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->isUrlEncodingEnabled:Z

    .line 808
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 314
    return-void
.end method
