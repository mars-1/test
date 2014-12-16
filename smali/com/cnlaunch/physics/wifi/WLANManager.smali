.class public Lcom/cnlaunch/physics/wifi/WLANManager;
.super Ljava/lang/Object;
.source "WLANManager.java"

# interfaces
.implements Lcom/cnlaunch/physics/impl/IPhysics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;
    }
.end annotation


# static fields
.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final WIFI_CONNECT_ADDRESS:Ljava/lang/String; = "192.168.43.1"

.field public static final WIFI_CONNECT_PORT:I = 0x4d2

.field public static inputStream:Ljava/io/InputStream;

.field public static instance:Lcom/cnlaunch/physics/wifi/WLANManager;

.field private static mReadData:Ljava/lang/String;

.field public static outputStream:Ljava/io/OutputStream;

.field public static wifiSocket:Ljava/net/Socket;


# instance fields
.field private bluetooth_command_wait:Z

.field mBridge:Lcom/cnlaunch/physics/utils/Bridge;

.field private mContext:Landroid/content/Context;

.field private mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

.field private mReadHandlerThread:Landroid/os/HandlerThread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->instance:Lcom/cnlaunch/physics/wifi/WLANManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    .line 61
    new-instance v0, Lcom/cnlaunch/physics/wifi/WLANManager$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/wifi/WLANManager$1;-><init>(Lcom/cnlaunch/physics/wifi/WLANManager;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->bluetooth_command_wait:Z

    .line 48
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/WLANManager;->registerBroadcast()V

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/wifi/WLANManager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/WLANManager;->close()V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/wifi/WLANManager;)Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    return-object v0
.end method

.method private close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 118
    sput-object v1, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    .line 120
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 122
    sput-object v1, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    .line 124
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/physics/wifi/WLANManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->instance:Lcom/cnlaunch/physics/wifi/WLANManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/cnlaunch/physics/wifi/WLANManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/wifi/WLANManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->instance:Lcom/cnlaunch/physics/wifi/WLANManager;

    .line 91
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->instance:Lcom/cnlaunch/physics/wifi/WLANManager;

    return-object v0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "BluetoothSendCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private setDeviceCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "command"

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "BluetoothReceiverCommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
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

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public connect(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/physics/utils/NetworkUtil;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/physics/utils/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/physics/utils/NetworkUtil;->getConnectWIFI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cnlaunch/physics/wifi/WLANManager$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/physics/wifi/WLANManager$2;-><init>(Lcom/cnlaunch/physics/wifi/WLANManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 226
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public connectWIFISocket()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/physics/wifi/WLANManager;->close()V

    .line 97
    new-instance v2, Ljava/net/Socket;

    const-string/jumbo v3, "192.168.43.1"

    const/16 v4, 0x4d2

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->wifiSocket:Ljava/net/Socket;

    .line 98
    sget-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->wifiSocket:Ljava/net/Socket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 100
    sget-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->wifiSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sput-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    .line 101
    sget-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->wifiSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    sput-object v2, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    .line 103
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/cnlaunch/physics/wifi/WLANManager;->setState(I)V

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/physics/wifi/WLANManager;->initHandlerThread()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBridge()Lcom/cnlaunch/physics/utils/Bridge;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadData:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand_wait()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->bluetooth_command_wait:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/cnlaunch/physics/wifi/WLANManager;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mState:I

    return v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method initHandlerThread()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "read_bt"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v0, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    iget-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;-><init>(Lcom/cnlaunch/physics/wifi/WLANManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 176
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandlerThread:Landroid/os/HandlerThread;

    .line 177
    iput-object v1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadHandler:Lcom/cnlaunch/physics/wifi/WLANManager$ReadHandler;

    .line 179
    :cond_0
    return-void
.end method

.method public setBridge(Lcom/cnlaunch/physics/utils/Bridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    .line 258
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 198
    sput-object p1, Lcom/cnlaunch/physics/wifi/WLANManager;->mReadData:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "BluetoothReceiverCommand"

    invoke-direct {p0, v0, p1}, Lcom/cnlaunch/physics/wifi/WLANManager;->setDeviceCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public setCommand_wait(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->bluetooth_command_wait:Z

    .line 245
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 183
    iput p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mState:I

    .line 184
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/WLANManager;->mTimer:Ljava/util/Timer;

    .line 271
    return-void
.end method
