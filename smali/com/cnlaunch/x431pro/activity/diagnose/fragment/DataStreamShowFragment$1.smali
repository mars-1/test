.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DataStreamShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    .line 186
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopAndSaveRecord()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    .line 192
    :cond_0
    return-void
.end method
