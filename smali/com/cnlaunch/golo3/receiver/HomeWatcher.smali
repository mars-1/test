.class public Lcom/cnlaunch/golo3/receiver/HomeWatcher;
.super Ljava/lang/Object;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;,
        Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "HomeWatcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

.field private mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    invoke-direct {v0, p0}, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;-><init>(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)V

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mFilter:Landroid/content/IntentFilter;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

    return-object v0
.end method


# virtual methods
.method public setOnHomePressedListener(Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

    .line 42
    return-void
.end method

.method public startWatch()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    iget-object v2, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    :cond_0
    return-void
.end method

.method public stopWatch()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mRecevier:Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    :cond_0
    return-void
.end method
