.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;
.super Ljava/lang/Object;
.source "DiagnoseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getBindConnection(I)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

.field private final synthetic val$startType:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->val$startType:I

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v8, 0x0

    .line 769
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;
    invoke-static {v6, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$24(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Messenger;)V

    .line 771
    const/4 v6, 0x0

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 772
    .local v3, message:Landroid/os/Message;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 773
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v6, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V

    .line 774
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    new-instance v7, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;
    invoke-static {v9}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$6(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;-><init>(Landroid/content/Context;Landroid/os/Messenger;)V

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v6, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$25(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)V

    .line 775
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$26(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->setCallbackListener(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;)V

    .line 776
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setBinding(Z)V

    .line 777
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->val$startType:I

    if-nez v6, :cond_1

    .line 778
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    sget-object v7, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    sget-object v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diag(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$27(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x8

    :try_start_0
    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 783
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v2

    .line 784
    .local v2, indentify:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "token"

    invoke-virtual {v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 785
    .local v5, token:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v6, "ip"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getService_ip()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string/jumbo v6, "port"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getService_port()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string/jumbo v6, "info"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "app_id"

    invoke-virtual {v7, v2, v8, v9, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getUserInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string/jumbo v6, "identify"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 791
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 794
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v6, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #indentify:I
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #token:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 796
    .local v1, e:Ljava/lang/NullPointerException;
    const-string/jumbo v6, "Sanda"

    const-string/jumbo v7, "Error(RemoteDiag):NullPoiterException in Launching!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setBinding(Z)V

    .line 806
    return-void
.end method
