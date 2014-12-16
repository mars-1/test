.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "DiagnoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagnoseRunning(I)V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 958
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 978
    return-void
.end method

.method public yesOnClickListener()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->handlerStatue(I)V

    .line 974
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 967
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    .line 972
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    goto :goto_0
.end method
