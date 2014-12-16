.class public Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothScanManager"
.end annotation


# static fields
.field private static mmContext:Landroid/content/Context;


# instance fields
.field private mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

.field private final mmReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager$1;-><init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    sput-object p1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmContext:Landroid/content/Context;

    .line 744
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 745
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$13(Landroid/bluetooth/BluetoothAdapter;)V

    .line 747
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->regeisterBroadcast()V

    .line 751
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)Lcom/cnlaunch/physics/listener/OnBluetoothListener;
    .locals 1
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->startDiscovery()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setBTConnectStatus(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    return-void
.end method

.method private regeisterBroadcast()V
    .locals 3

    .prologue
    .line 769
    const-string/jumbo v1, "BluetoothManager"

    const-string/jumbo v2, "BluetoothScanManager register Receiver"

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    const-string/jumbo v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 774
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string/jumbo v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string/jumbo v1, "action.bt.device.con.coning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string/jumbo v1, "action.bt.device.con.success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string/jumbo v1, "action.bt.device.con.fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string/jumbo v1, "action.bt.device.con.lost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    sget-object v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 781
    return-void
.end method

.method private setBTConnectStatus(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 6
    .parameter "device"
    .parameter "conn"
    .parameter "isPair"

    .prologue
    .line 898
    const/4 v1, 0x1

    .line 899
    .local v1, pair:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 913
    return-void

    .line 900
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    .line 901
    invoke-virtual {v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 902
    .local v2, tempDev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 903
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v3, v1}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothPairStatus(Z)V

    .line 904
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v3, p2}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothConnWait(Ljava/lang/String;)V

    .line 899
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    .line 907
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    .line 909
    sget-object v4, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmContext:Landroid/content/Context;

    .line 910
    sget v5, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_no_connected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 908
    invoke-virtual {v3, v4}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothConnWait(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized startDiscovery()V
    .locals 6

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 828
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 829
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 830
    .local v1, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 836
    const-string/jumbo v2, "BluetoothManager"

    const-string/jumbo v3, "\u5f00\u59cb\u626b\u63cf\u84dd\u7259\u8bbe\u5907\u5217\u8868..."

    invoke-static {v2, v3}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 838
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 841
    :cond_1
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    monitor-exit p0

    return-void

    .line 830
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 831
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Bonded Devices name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$11()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setListDto(Landroid/bluetooth/BluetoothDevice;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 827
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public getBluetoothList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public reScanBluetooth()V
    .locals 0

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->scanBluetoothList()V

    .line 798
    return-void
.end method

.method public removeBond(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "btClass"
    .parameter "btDevice"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 850
    const-string/jumbo v2, "removeBond"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 851
    .local v0, removeBondMethod:Ljava/lang/reflect/Method;
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 852
    .local v1, returnValue:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public scanBluetoothList()V
    .locals 1

    .prologue
    .line 817
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 820
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->startDiscovery()V

    .line 821
    return-void
.end method

.method public setListDto(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 8
    .parameter "device"
    .parameter "isPair"

    .prologue
    .line 864
    const/4 v1, 0x0

    .line 865
    .local v1, flag:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 872
    :goto_1
    if-nez v1, :cond_0

    .line 873
    new-instance v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-direct {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;-><init>()V

    .line 874
    .local v0, bluetoothListDto:Lcom/cnlaunch/physics/entity/BluetoothListDto;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothName(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothAddress(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, p2}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothPairStatus(Z)V

    .line 877
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothConnStatus(Z)V

    .line 878
    invoke-virtual {v0, p1}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 879
    sget-object v3, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmContext:Landroid/content/Context;

    .line 880
    sget v4, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_no_connected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-virtual {v0, v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->setBluetoothConnWait(Ljava/lang/String;)V

    .line 881
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    if-eqz v3, :cond_0

    .line 883
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/16 v5, 0x64

    .line 884
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    .line 883
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetooth(Landroid/bluetooth/BluetoothAdapter;ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 887
    .end local v0           #bluetoothListDto:Lcom/cnlaunch/physics/entity/BluetoothListDto;
    :cond_0
    return-void

    .line 866
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 867
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v3}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 867
    if-eqz v3, :cond_2

    .line 868
    const/4 v1, 0x1

    .line 869
    goto :goto_1

    .line 865
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setOnBluetoothListener(Lcom/cnlaunch/physics/listener/OnBluetoothListener;)V
    .locals 5
    .parameter "onBluetoothListener"

    .prologue
    .line 760
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    .line 761
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$12()Ljava/util/ArrayList;

    move-result-object v3

    .line 763
    const/4 v4, 0x0

    .line 762
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cnlaunch/physics/listener/OnBluetoothListener;->onBluetooth(Landroid/bluetooth/BluetoothAdapter;ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 766
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 3

    .prologue
    .line 802
    :try_start_0
    sget-object v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->mmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$9()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 810
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
