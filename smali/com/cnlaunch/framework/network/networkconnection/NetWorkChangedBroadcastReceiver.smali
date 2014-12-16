.class public Lcom/cnlaunch/framework/network/networkconnection/NetWorkChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkChangedBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetWorkChangedBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->getInstance()Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;

    move-result-object v2

    .line 17
    .local v2, networkObervable:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 19
    .local v1, networkInfos:Landroid/net/NetworkInfo;
    invoke-virtual {v2, v1}, Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;->onChanged(Landroid/net/NetworkInfo;)V

    .line 21
    .end local v0           #manager:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfos:Landroid/net/NetworkInfo;
    .end local v2           #networkObervable:Lcom/cnlaunch/framework/network/networkconnection/NetworkObervable;
    :cond_0
    return-void
.end method
