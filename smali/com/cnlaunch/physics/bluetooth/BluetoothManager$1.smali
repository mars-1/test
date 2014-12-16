.class Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    .line 676
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    .line 679
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 681
    .local v1, btDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, cnLaunchAddress:Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 685
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #btDevice:Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 687
    .restart local v1       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 688
    const-string/jumbo v5, "BluetoothManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pair BluetoothManager  Receiver action"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :cond_0
    :goto_1
    return-void

    .line 681
    .end local v3           #cnLaunchAddress:Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0

    .line 690
    .restart local v3       #cnLaunchAddress:Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 693
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #btDevice:Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 694
    .restart local v1       #btDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    const-string/jumbo v5, "BluetoothManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "pair BluetoothManager  Receiver action"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v5

    .line 697
    const-string/jumbo v6, "com.cnlaunch.intent.action.DIAG_UNCONNECTED"

    .line 696
    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendBluetoothStatusBoradcast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$2(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    invoke-virtual {v5, v9}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V

    goto :goto_1

    .line 700
    :cond_3
    const-string/jumbo v5, "BluetoothBackgroundConnectSuccess"

    .line 701
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 702
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #setter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {v5, v6}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$3(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;I)V

    .line 704
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v5

    .line 705
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connect_success:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "deviceName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 705
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 707
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 709
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v5

    .line 710
    const-string/jumbo v6, "com.cnlaunch.intent.action.DIAG_CONNECTED"

    .line 709
    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendBluetoothStatusBoradcast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$2(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 712
    :cond_4
    const-string/jumbo v5, "BluetoothBackgroundConnectFail"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 713
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #setter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {v5, v6}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$3(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;I)V

    .line 714
    const-string/jumbo v5, "deviceName"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, deviceName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 717
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v5

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connect_fail:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 718
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 716
    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 720
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 722
    .end local v4           #deviceName:Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "BluetoothSendCommand"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 723
    const-string/jumbo v5, "BluetoothWriteCommand"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 728
    .local v2, buffer:[B
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$4(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 729
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;
    invoke-static {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$4(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->write([B)V

    goto/16 :goto_1

    .line 732
    :cond_6
    const-string/jumbo v5, "BluetoothManager"

    const-string/jumbo v6, "mReadByteDataStreamThread is null"

    invoke-static {v5, v6}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
