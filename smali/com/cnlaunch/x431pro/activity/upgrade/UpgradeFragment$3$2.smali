.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;
.super Ljava/lang/Object;
.source "UpgradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 370
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$2;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v1

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$20(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    return-void
.end method
