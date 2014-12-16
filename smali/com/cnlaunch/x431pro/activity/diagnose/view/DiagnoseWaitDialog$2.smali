.class Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;
.super Landroid/os/Handler;
.source "DiagnoseWaitDialog.java"


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->hide()V

    .line 144
    :goto_0
    return-void

    .line 127
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "DownloadBin_Ver"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v1, "DownloadBin_Dev_Ver"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->deviceVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v1, "DownloadBin_Path"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->downloadBinPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->hide()V

    goto :goto_0

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    sget-object v3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->hide()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
