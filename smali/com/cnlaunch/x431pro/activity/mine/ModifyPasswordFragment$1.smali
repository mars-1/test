.class Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ModifyPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    const/4 v2, 0x1

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setEditEnable(Z)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Z)V

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "login_state"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->login_state:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Ljava/lang/String;)V

    .line 101
    return-void

    .line 97
    :cond_1
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    const/4 v2, 0x0

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->setEditEnable(Z)V
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Z)V

    goto :goto_0
.end method
