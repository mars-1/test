.class public Lcom/cnlaunch/physics/serialport/SerialPortManager;
.super Ljava/lang/Object;
.source "SerialPortManager.java"

# interfaces
.implements Lcom/cnlaunch/physics/impl/IPhysics;


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPortManager"

.field public static instance:Lcom/cnlaunch/physics/serialport/SerialPortManager;

.field private static mReadData:Ljava/lang/String;


# instance fields
.field private bluetooth_command_wait:Z

.field mBridge:Lcom/cnlaunch/physics/utils/Bridge;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

.field private mSerialPortFinder:Lcom/cnlaunch/physics/serialport/SerialPortFinder;

.field mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, ""

    sput-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mReadData:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->instance:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    .line 45
    new-instance v0, Lcom/cnlaunch/physics/serialport/SerialPortFinder;

    invoke-direct {v0}, Lcom/cnlaunch/physics/serialport/SerialPortFinder;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPortFinder:Lcom/cnlaunch/physics/serialport/SerialPortFinder;

    .line 96
    new-instance v0, Lcom/cnlaunch/physics/serialport/SerialPortManager$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager$1;-><init>(Lcom/cnlaunch/physics/serialport/SerialPortManager;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->bluetooth_command_wait:Z

    .line 56
    iput-object p1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager;->registerBroadcast()V

    .line 58
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/physics/serialport/SerialPortManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->instance:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->instance:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->instance:Lcom/cnlaunch/physics/serialport/SerialPortManager;

    return-object v0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "BluetoothSendCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method

.method private setDeviceCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "command"

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "BluetoothReceiverCommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "bcf"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receiver command:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method


# virtual methods
.method public closeSerialPort()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/serialport/SerialPort;->close()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    .line 183
    :cond_0
    return-void
.end method

.method public connect(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager;->getSerialPort()Lcom/cnlaunch/physics/serialport/SerialPort;

    .line 199
    return-void
.end method

.method public getBridge()Lcom/cnlaunch/physics/utils/Bridge;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mReadData:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand_wait()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->bluetooth_command_wait:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSerialPort()Lcom/cnlaunch/physics/serialport/SerialPort;
    .locals 6

    .prologue
    .line 61
    const-string/jumbo v3, "TAG"

    const-string/jumbo v4, "\u6267\u884c\u4e32\u53e3\u8fde\u63a5"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v3, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    if-nez v3, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager;->readVersionInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "A23.V1.00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string/jumbo v3, "/dev/ttyS2"

    .line 67
    const v4, 0x1c200

    const/4 v5, 0x0

    .line 65
    invoke-static {v3, v4, v5}, Lcom/cnlaunch/physics/serialport/SerialPort;->getInsance(Ljava/lang/String;II)Lcom/cnlaunch/physics/serialport/SerialPort;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :cond_0
    :goto_0
    new-instance v0, Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    iget-object v3, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-virtual {v3}, Lcom/cnlaunch/physics/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    invoke-virtual {v4}, Lcom/cnlaunch/physics/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;-><init>(Lcom/cnlaunch/physics/impl/IPhysics;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    .local v0, dynamic:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 84
    iget-object v3, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;

    return-object v3

    .line 69
    .end local v0           #dynamic:Ljava/lang/Runnable;
    .end local v2           #t:Ljava/lang/Thread;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u8bfb\u53d6\u5230\u7684\u5185\u5bb9"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/physics/serialport/SerialPortManager;->readVersionInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v3, "/dev/ttyMT0"

    const v4, 0x1c200

    .line 72
    const/4 v5, 0x0

    .line 70
    invoke-static {v3, v4, v5}, Lcom/cnlaunch/physics/serialport/SerialPort;->getInsance(Ljava/lang/String;II)Lcom/cnlaunch/physics/serialport/SerialPort;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mSerialPort:Lcom/cnlaunch/physics/serialport/SerialPort;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public readVersionInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/usr/ver.txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, path:Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 159
    .local v6, res:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, fin:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v4

    .line 164
    .local v4, length:I
    new-array v0, v4, [B

    .line 165
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 166
    const-string/jumbo v7, "UTF-8"

    invoke-static {v0, v7}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #buffer:[B
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v4           #length:I
    :cond_0
    :goto_0
    return-object v6

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBridge(Lcom/cnlaunch/physics/utils/Bridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    .line 231
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 134
    sput-object p1, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mReadData:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "BluetoothReceiverCommand"

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/physics/serialport/SerialPortManager;->setDeviceCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setCommand_wait(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->bluetooth_command_wait:Z

    .line 211
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 188
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cnlaunch/physics/serialport/SerialPortManager;->mTimer:Ljava/util/Timer;

    .line 244
    return-void
.end method
