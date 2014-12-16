.class public abstract Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;
.super Ljava/lang/Object;
.source "NetworkObserver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->mHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method


# virtual methods
.method protected final dispatch_noneNetwork(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "networkInfo"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$1;-><init>(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void
.end method

.method protected final dispath_Connected(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "networkInfo"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;

    invoke-direct {v1, p0, p1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver$2;-><init>(Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public abstract networkIsConnected(Landroid/net/NetworkInfo;)V
.end method

.method public abstract networkIsDisconnected(Landroid/net/NetworkInfo;)V
.end method
