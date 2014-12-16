.class Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;
.super Landroid/content/BroadcastReceiver;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/receiver/HomeWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerRecevier"
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/golo3/receiver/HomeWatcher;


# direct methods
.method constructor <init>(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->this$0:Lcom/cnlaunch/golo3/receiver/HomeWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "globalactions"

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "recentapps"

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "homekey"

    iput-object v0, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    iget-object v2, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->this$0:Lcom/cnlaunch/golo3/receiver/HomeWatcher;

    #getter for: Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;
    invoke-static {v2}, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->access$0(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    const-string/jumbo v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->this$0:Lcom/cnlaunch/golo3/receiver/HomeWatcher;

    #getter for: Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;
    invoke-static {v2}, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->access$0(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;->onHomePressed()V

    .line 89
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v1       #reason:Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/cnlaunch/golo3/receiver/HomeWatcher$InnerRecevier;->this$0:Lcom/cnlaunch/golo3/receiver/HomeWatcher;

    #getter for: Lcom/cnlaunch/golo3/receiver/HomeWatcher;->mListener:Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;
    invoke-static {v2}, Lcom/cnlaunch/golo3/receiver/HomeWatcher;->access$0(Lcom/cnlaunch/golo3/receiver/HomeWatcher;)Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/golo3/receiver/HomeWatcher$OnHomePressedListener;->onHomeLongPressed()V

    goto :goto_0
.end method
