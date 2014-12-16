.class public Lcom/cnlaunch/framework/network/networkconnection/NetworkObserverAdpter;
.super Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;
.source "NetworkObserverAdpter.java"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObserver;-><init>(Landroid/os/Looper;)V

    .line 10
    return-void
.end method


# virtual methods
.method public networkIsConnected(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "networkInfo"

    .prologue
    .line 15
    return-void
.end method

.method public networkIsDisconnected(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "networkInfo"

    .prologue
    .line 21
    return-void
.end method
