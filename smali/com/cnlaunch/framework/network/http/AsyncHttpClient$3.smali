.class Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->setEnableRedirects(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

.field private final synthetic val$enableRedirects:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/AsyncHttpClient;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;->this$0:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    iput-boolean p2, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;->val$enableRedirects:Z

    .line 330
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter "response"
    .parameter "context"

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpClient$3;->val$enableRedirects:Z

    return v0
.end method
