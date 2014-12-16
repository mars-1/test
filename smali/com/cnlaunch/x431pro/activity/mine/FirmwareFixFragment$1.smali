.class Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;
.super Landroid/os/Handler;
.source "FirmwareFixFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v1, 0x7f070567

    const v3, 0x7f070569

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 143
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z
    invoke-static {v0, v4}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateSuccess:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 151
    sput-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z
    invoke-static {v0, v4}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->serialNo:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z
    invoke-static {v0, v4}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 162
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 165
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    .line 166
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 167
    sput-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 168
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    goto/16 :goto_0

    .line 172
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->currentDownloadBin:F
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->currentDownloadBin:F
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 176
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$13(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$14(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$15(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    const v3, 0x7f07056b

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$15(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 190
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$16(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v3, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$17(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z
    invoke-static {v0, v4}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    .line 195
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->stopUpdate()V

    .line 196
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;)V

    .line 205
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1$1;->start()V

    .line 206
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 211
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    .line 212
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    iput-boolean v4, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 213
    sput-boolean v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 214
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 215
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V

    goto/16 :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_4
        0x1 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
