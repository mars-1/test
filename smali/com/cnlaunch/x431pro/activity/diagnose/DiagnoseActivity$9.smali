.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;
.super Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
.source "DiagnoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->initRemoteDiagHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 898
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handlerStatue(I)V
    .locals 5
    .parameter "statue"

    .prologue
    const/4 v3, 0x1

    .line 901
    packed-switch p1, :pswitch_data_0

    .line 932
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 905
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 906
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getService_ip()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getService_port()I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getService_domain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startGoloWithMiniDiag(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 911
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->dimissAllDialog()V

    .line 912
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 913
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v1

    const-string/jumbo v2, "100"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 915
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 916
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 917
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;-><init>()V

    const-class v3, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 919
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagnoseRunning(I)V

    goto :goto_0

    .line 923
    :pswitch_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->dimissAllDialog()V

    .line 924
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 925
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V

    .line 927
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v1

    const-string/jumbo v2, "100"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
