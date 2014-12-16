.class Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "SelectSoftVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    .line 397
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "DownloadBin_DisConnBluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->disconnectBluetooth()V

    .line 403
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 404
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnBluetooth:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 405
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x111

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
