.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    .line 258
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "login_change_serialno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->updateSNList()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)V

    .line 264
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->userSerialNumberList:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07058d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    const/16 v2, 0x835

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->request(I)V

    .line 269
    :cond_0
    return-void
.end method
