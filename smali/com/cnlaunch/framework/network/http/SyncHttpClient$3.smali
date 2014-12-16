.class Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "SyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/http/SyncHttpClient;->setEnableRedirects(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

.field private final synthetic val$enableRedirects:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/SyncHttpClient;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;->this$0:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    iput-boolean p2, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;->val$enableRedirects:Z

    .line 296
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .parameter "response"
    .parameter "context"

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/cnlaunch/framework/network/http/SyncHttpClient$3;->val$enableRedirects:Z

    return v0
.end method
