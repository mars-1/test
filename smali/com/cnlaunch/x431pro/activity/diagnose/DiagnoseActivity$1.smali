.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;
.super Landroid/os/Handler;
.source "DiagnoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 225
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x2

    .line 228
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 259
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 230
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, uiJson:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->stdJsonToUI(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    const/16 v5, 0x69

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 234
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 235
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 242
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addMessageList(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v3           #uiJson:Ljava/lang/String;
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 246
    .local v2, status:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->setCurrentVer(I)V

    .line 247
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->setStatues(I)V

    .line 248
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 252
    .end local v2           #status:I
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 253
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v1, ""

    .line 254
    .local v1, diagnoseLogTips:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 255
    const-string/jumbo v4, "data"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x11

    invoke-static {v4, v1, v5}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method
