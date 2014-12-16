.class Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;
.super Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
.source "UpgradeFragment.java"


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
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    .line 417
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public doningAlphaClick(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "num"

    .prologue
    .line 420
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 421
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    const v4, 0x7f0c02f4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 423
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3$4;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment$3;)Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    .line 424
    const-class v4, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 423
    check-cast v1, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;

    .line 425
    .local v1, mineActivity:Lcom/cnlaunch/x431pro/activity/mine/MineActivity;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 427
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 429
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 428
    check-cast v2, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    .line 430
    .local v2, mineFragment:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;
    if-eqz v2, :cond_0

    .line 431
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    .line 432
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;)V

    .line 437
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #mineActivity:Lcom/cnlaunch/x431pro/activity/mine/MineActivity;
    .end local v2           #mineFragment:Lcom/cnlaunch/x431pro/activity/mine/MineFragment;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->doningAlphaClick(Landroid/view/View;I)V

    .line 438
    return-void
.end method
