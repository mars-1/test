.class Lcom/cnlaunch/physics/serialport/SerialPortManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SerialPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/serialport/SerialPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/serialport/SerialPortManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/serialport/SerialPortManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager$1;->this$0:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v4, "BluetoothSendCommand"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string/jumbo v4, "BluetoothWriteCommand"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 102
    .local v1, buffer:[B
    new-instance v2, Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    const/16 v4, 0x1f40

    iget-object v5, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager$1;->this$0:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    invoke-direct {v2, v1, v4, v5}, Lcom/cnlaunch/physics/utils/WriteByteDataStream;-><init>([BILcom/cnlaunch/physics/impl/IPhysics;)V

    .line 103
    .local v2, dynamic:Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 106
    .end local v1           #buffer:[B
    .end local v2           #dynamic:Ljava/lang/Runnable;
    .end local v3           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
