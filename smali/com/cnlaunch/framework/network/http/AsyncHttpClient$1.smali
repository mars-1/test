.class Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;->this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .parameter "request"
    .parameter "context"

    .prologue
    .line 250
    const-string/jumbo v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;->this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    #getter for: Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->access$0(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    return-void

    .line 253
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, header:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$1;->this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    #getter for: Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->access$0(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
