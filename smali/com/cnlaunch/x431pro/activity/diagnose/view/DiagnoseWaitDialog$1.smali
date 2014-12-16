.class Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;
.super Ljava/lang/Object;
.source "DiagnoseWaitDialog.java"

# interfaces
.implements Lcom/cnlaunch/physics/listener/OnDownloadBinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDownloadBinCmdListener(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 118
    return-void
.end method

.method public OnDownloadBinListener(IJJ)V
    .locals 0
    .parameter "state"
    .parameter "progress"
    .parameter "length"

    .prologue
    .line 78
    return-void
.end method

.method public OnDownloadBinListener(ILjava/lang/String;)V
    .locals 8
    .parameter "state"
    .parameter "version"

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x1

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->isAgain:Z
    invoke-static {v2, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Z)V

    .line 85
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mDownloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->serialNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setBinVersion(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getFirmwareVersion()Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "DiagnoseActivity"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "deviceVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 93
    const-string/jumbo v6, " downloadVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 92
    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, tempDeviceVer:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, tempDownVer:Ljava/lang/String;
    const-string/jumbo v2, "V"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v2, "V"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 104
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 110
    .end local v0           #tempDeviceVer:Ljava/lang/String;
    .end local v1           #tempDownVer:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
