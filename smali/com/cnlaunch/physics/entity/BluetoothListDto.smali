.class public Lcom/cnlaunch/physics/entity/BluetoothListDto;
.super Ljava/lang/Object;
.source "BluetoothListDto.java"


# instance fields
.field bluetoothAddress:Ljava/lang/String;

.field bluetoothConnStatus:Z

.field bluetoothConnWait:Ljava/lang/String;

.field bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field bluetoothName:Ljava/lang/String;

.field bluetoothPairStatus:Z

.field bluetoothPairWait:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothConnWait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothConnWait:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothPairWait()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothPairWait:Ljava/lang/String;

    return-object v0
.end method

.method public isBluetoothConnStatus()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothConnStatus:Z

    return v0
.end method

.method public isBluetoothPairStatus()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothPairStatus:Z

    return v0
.end method

.method public setBluetoothAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "bluetoothAddress"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothAddress:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setBluetoothConnStatus(Z)V
    .locals 0
    .parameter "bluetoothConnStatus"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothConnStatus:Z

    .line 41
    return-void
.end method

.method public setBluetoothConnWait(Ljava/lang/String;)V
    .locals 0
    .parameter "bluetoothConnWait"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothConnWait:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "bluetoothDevice"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 53
    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0
    .parameter "bluetoothName"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setBluetoothPairStatus(Z)V
    .locals 0
    .parameter "bluetoothPairStatus"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothPairStatus:Z

    .line 47
    return-void
.end method

.method public setBluetoothPairWait(Ljava/lang/String;)V
    .locals 0
    .parameter "bluetoothPairWait"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/physics/entity/BluetoothListDto;->bluetoothPairWait:Ljava/lang/String;

    .line 59
    return-void
.end method
