.class Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "FirmwareFixFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    .line 230
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "BluetoothBackgroundConnectSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateSuccess:Z
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$18(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "isFix"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 237
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->startUpdate()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$19(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V

    .line 238
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 242
    :cond_0
    return-void
.end method
