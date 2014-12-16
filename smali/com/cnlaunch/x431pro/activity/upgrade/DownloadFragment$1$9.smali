.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;
.super Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    .line 440
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public doningBetaClick(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "num"

    .prologue
    .line 443
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    const v4, 0x7f0c02f5

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 446
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1$9;->this$1:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;)Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    move-result-object v3

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    .line 447
    const-class v4, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    .line 446
    check-cast v1, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    .line 448
    .local v1, settingActivity:Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 450
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 452
    const-class v3, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 451
    check-cast v2, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    .line 453
    .local v2, settingFragment:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;
    if-eqz v2, :cond_0

    .line 454
    const-class v3, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    .line 455
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;)V

    .line 460
    .end local v0           #fragmentManager:Landroid/app/FragmentManager;
    .end local v1           #settingActivity:Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;
    .end local v2           #settingFragment:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/dialog/BaseDialog;->doningBetaClick(Landroid/view/View;I)V

    .line 461
    return-void
.end method
