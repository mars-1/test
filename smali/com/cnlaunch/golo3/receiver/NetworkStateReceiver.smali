.class public Lcom/cnlaunch/golo3/receiver/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# instance fields
.field private networkStateListener:Lcom/cnlaunch/golo3/receiver/NetworkStateListener;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/golo3/receiver/NetworkStateListener;)V
    .locals 0
    .parameter "networkStateListener"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cnlaunch/golo3/receiver/NetworkStateReceiver;->networkStateListener:Lcom/cnlaunch/golo3/receiver/NetworkStateListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-static {p1}, Lcom/cnlaunch/golo3/utils/NetworkUtils;->getNetworkInfo(Landroid/content/Context;)I

    move-result v0

    .line 26
    .local v0, status:I
    iget-object v1, p0, Lcom/cnlaunch/golo3/receiver/NetworkStateReceiver;->networkStateListener:Lcom/cnlaunch/golo3/receiver/NetworkStateListener;

    invoke-interface {v1, v0}, Lcom/cnlaunch/golo3/receiver/NetworkStateListener;->onNetworkStateChange(I)V

    .line 27
    return-void
.end method
