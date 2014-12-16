.class Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    .line 918
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xc

    .line 921
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 924
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 925
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "no Bonded Devices name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 926
    const-string/jumbo v5, " address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 925
    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 928
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 929
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v3, v2, v7}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setListDto(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 994
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    const-string/jumbo v3, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 934
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 935
    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ACTION_NAME_CHANGED Devices name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 936
    const-string/jumbo v5, " address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 935
    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 939
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v3, v2, v7}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setListDto(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 942
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setListDto(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 946
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string/jumbo v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 947
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 948
    const-string/jumbo v3, "BluetoothManager"

    const-string/jumbo v4, "BluetoothAdapter ACTION_DISCOVERY_FINISHED"

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 950
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetoothScanFinish()V

    goto/16 :goto_0

    .line 952
    :cond_4
    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 953
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 954
    const-string/jumbo v3, "android.bluetooth.adapter.extra.STATE"

    const/16 v4, 0xa

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 955
    const-string/jumbo v3, "BluetoothManager"

    const-string/jumbo v4, "BluetoothAdapter ACTION_STATE_CHANGED STATE_ON"

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->startDiscovery()V
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)V

    goto/16 :goto_0

    .line 958
    :cond_5
    const-string/jumbo v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 959
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 960
    const-string/jumbo v3, "BluetoothManager"

    const-string/jumbo v4, "BluetoothAdapter ACTION_DISCOVERY_STARTED"

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 962
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetoothScanStart()V

    goto/16 :goto_0

    .line 963
    :cond_6
    const-string/jumbo v3, "action.bt.device.con.coning"

    .line 964
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 965
    const-string/jumbo v3, "action.bt.device.con.success"

    .line 966
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 967
    const-string/jumbo v3, "action.bt.device.con.fail"

    .line 968
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 969
    const-string/jumbo v3, "action.bt.device.con.lost"

    .line 970
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 972
    :cond_7
    const-string/jumbo v3, "customBluetoothBroadcastIntentExtraBundle"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 973
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    .line 975
    const-string/jumbo v3, "bluetoothDevice"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 976
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pair"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 973
    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setBTConnectStatus(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    invoke-static {v4, v3, v5, v6}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$2(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 977
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 978
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 979
    const-string/jumbo v5, "type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    .line 978
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetooth(Landroid/bluetooth/BluetoothAdapter;ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 980
    :cond_8
    const-string/jumbo v3, "action.bt.device.con.coning"

    .line 981
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 983
    const-string/jumbo v3, "action.bt.device.con.success"

    .line 984
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 985
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;->this$1:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    invoke-static {v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v3, v4}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetoothConnSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    :cond_9
    const-string/jumbo v3, "action.bt.device.con.fail"

    .line 988
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 989
    const-string/jumbo v3, "action.bt.device.con.lost"

    .line 990
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
