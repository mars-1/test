.class Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler$ResponderHandler;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponderHandler"
.end annotation


# instance fields
.field private final mResponder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler$ResponderHandler;->mResponder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    .line 134
    .local v0, service:Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 137
    :cond_0
    return-void
.end method
