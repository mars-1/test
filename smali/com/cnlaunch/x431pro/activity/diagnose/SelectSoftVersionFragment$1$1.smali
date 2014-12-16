.class Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;
.super Ljava/util/TimerTask;
.source "SelectSoftVersionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;

    .line 310
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;)Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->btnSure:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1$1;->this$1:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment$1;)Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/SelectSoftVersionFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x123

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    :cond_0
    return-void
.end method
