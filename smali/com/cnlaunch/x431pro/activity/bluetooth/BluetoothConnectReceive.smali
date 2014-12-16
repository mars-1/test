.class public Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothConnectReceive;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConnectReceive.java"


# instance fields
.field strPsw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothConnectReceive;->strPsw:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 27
    const-string/jumbo v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 26
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 29
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 30
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 31
    .local v1, cnLaunchBTDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, cnLaunchBTDeviceAddress:Ljava/lang/String;
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .local v4, sdk:I
    const-string/jumbo v5, "BluetoothConnectReceive"

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Build.VERSION.SDK_INT = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 35
    :cond_0
    const-string/jumbo v5, "BluetoothConnectReceive"

    new-array v6, v9, [Ljava/lang/Object;

    const-string/jumbo v7, "not pair cnlaunch device "

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #cnLaunchBTDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #cnLaunchBTDeviceAddress:Ljava/lang/String;
    .end local v4           #sdk:I
    :cond_1
    :goto_1
    return-void

    .line 31
    .restart local v0       #btDevice:Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #cnLaunchBTDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0

    .line 38
    .restart local v2       #cnLaunchBTDeviceAddress:Ljava/lang/String;
    .restart local v4       #sdk:I
    :cond_3
    const/16 v5, 0xf

    if-gt v4, v5, :cond_4

    .line 40
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothConnectReceive;->strPsw:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/cnlaunch/x431pro/activity/bluetooth/PairUtils;->setPin(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/PairUtils;->createBond(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;)Z

    .line 44
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/bluetooth/PairUtils;->cancelPairingUserInput()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothConnectReceive;->strPsw:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Lcom/cnlaunch/x431pro/activity/bluetooth/PairUtils;->setPin(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    .line 51
    const-string/jumbo v5, "BluetoothConnectReceive"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "Success to add the PIN."

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 54
    const-string/jumbo v6, "setPairingConfirmation"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 55
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 54
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 55
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v5, "BluetoothConnectReceive"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 57
    const-string/jumbo v8, "Success to setPairingConfirmation."

    aput-object v8, v6, v7

    .line 56
    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 61
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 62
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
