.class Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;
.super Ljava/util/TimerTask;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReConnectTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "ReConnect TimerTask Start"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    iget-boolean v0, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$5(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #calls: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$6(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 411
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;->this$0:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    #getter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$5(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I
    invoke-static {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->access$3(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;I)V

    .line 413
    :cond_0
    return-void
.end method
