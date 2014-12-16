.class Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .line 519
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 523
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v4, "Sanda"

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mReceiver action="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    const-string/jumbo v4, "com.cnlaunch.pro.InitClientMessager"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    invoke-static {v11, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 528
    .local v2, message:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$7(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 529
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v4, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V

    .line 648
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const-string/jumbo v4, "com.cnlaunch.diagnose.exit"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 531
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-ge v4, v10, :cond_2

    .line 532
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    const/16 v5, 0x6d

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->handlerStatue(I)V

    goto :goto_0

    .line 535
    :cond_2
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 536
    sget-boolean v4, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v4, :cond_3

    .line 537
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 538
    sput-boolean v9, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 541
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 542
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 543
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    goto :goto_0

    .line 545
    :cond_4
    const-string/jumbo v4, "com.cnlaunch.diagnose.err"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 547
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    const-string/jumbo v5, "100"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 548
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 549
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 550
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$13(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 552
    :cond_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 553
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    goto :goto_0

    .line 554
    :cond_6
    const-string/jumbo v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 555
    const-string/jumbo v4, "DiagnoseActivity"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "BluetoothDevice ACTION_ACL_DISCONNECTED"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/MainActivity;->isDiagFlag()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 557
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    const-string/jumbo v5, "100"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 559
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getCarSoftName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DEMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-eq v4, v8, :cond_0

    .line 562
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 563
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$13(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 564
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    goto/16 :goto_0

    .line 566
    :cond_7
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isAutoReConnect()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 567
    const-string/jumbo v4, "DiagnoseActivity"

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "BluetoothManager isAutoReConnect"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 570
    :cond_8
    sget-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-eqz v4, :cond_0

    .line 571
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    const-string/jumbo v5, "100"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 572
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    .line 573
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$12(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 574
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$13(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    goto/16 :goto_0

    .line 580
    :cond_9
    const-string/jumbo v4, "LaunchRemoteDiag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 581
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$14(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 582
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070702

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 585
    :cond_a
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z
    invoke-static {v4, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$15(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Z)V

    .line 587
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    const-string/jumbo v4, "RemoteDiagInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v5, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$16(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;)V

    .line 588
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setLan(Ljava/lang/String;)V

    .line 589
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setUserID(Ljava/lang/String;)V

    .line 590
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->launchRemoteDiag(I)V

    goto/16 :goto_0

    .line 591
    :cond_b
    const-string/jumbo v4, "StopRemotoDiagnose"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 592
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-ge v4, v10, :cond_c

    .line 593
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->getStatues()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 594
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 595
    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 596
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v4, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V

    .line 597
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagnoseRunning(I)V

    goto/16 :goto_0

    .line 600
    .end local v3           #msg:Landroid/os/Message;
    :cond_c
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 601
    sget-boolean v4, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v4, :cond_d

    .line 602
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 603
    sput-boolean v9, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 606
    :cond_d
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    goto/16 :goto_0

    .line 608
    :cond_e
    const-string/jumbo v4, "BluetoothBackgroundConnectSuccess"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 609
    const-string/jumbo v4, "isFix"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 611
    sput-boolean v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 612
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$18(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->getDownloadBinVersion()V

    goto/16 :goto_0

    .line 615
    :cond_f
    const-string/jumbo v4, "BluetoothBackgroundConnectFail"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 616
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$18(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->hide()V

    .line 617
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isAutoConnect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 618
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v1, bluetoothActivityStartIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 620
    const-string/jumbo v4, "Lib_path"

    sget-object v5, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v4, "Lib_language"

    sget-object v5, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 624
    .end local v1           #bluetoothActivityStartIntent:Landroid/content/Intent;
    :cond_10
    const-string/jumbo v4, "screen_change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 625
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->refrshGridViewColumns()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$19(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    goto/16 :goto_0

    .line 626
    :cond_11
    const-string/jumbo v4, "JumpDownloadBin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 627
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    sget-object v5, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    sget-object v6, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_12
    const-string/jumbo v4, "NativeMethodNoFind"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 631
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    move-result-object v4

    const-string/jumbo v5, "100"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 633
    :cond_13
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    if-ge v4, v10, :cond_14

    .line 634
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 635
    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 636
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V
    invoke-static {v4, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V

    .line 637
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-virtual {v4, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagnoseRunning(I)V

    goto/16 :goto_0

    .line 639
    .end local v3           #msg:Landroid/os/Message;
    :cond_14
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 640
    sget-boolean v4, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v4, :cond_15

    .line 641
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$9(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 642
    sput-boolean v9, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 645
    :cond_15
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    #calls: Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->access$11(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    goto/16 :goto_0
.end method
