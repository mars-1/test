.class public interface abstract Lcom/cnlaunch/physics/listener/OnBluetoothListener;
.super Ljava/lang/Object;
.source "OnBluetoothListener.java"


# virtual methods
.method public abstract onBluetooth(Landroid/bluetooth/BluetoothAdapter;ILjava/util/ArrayList;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBluetoothConnSuccess(Ljava/lang/String;)V
.end method

.method public abstract onBluetoothScanFinish()V
.end method

.method public abstract onBluetoothScanStart()V
.end method
