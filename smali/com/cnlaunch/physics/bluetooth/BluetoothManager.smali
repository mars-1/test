.class public Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lcom/cnlaunch/physics/impl/IPhysics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;,
        Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;,
        Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;
    }
.end annotation


# static fields
.field public static final ACTION_BLUETOOTH_BACKGROUND_CONNECT_FAIL:Ljava/lang/String; = "BluetoothBackgroundConnectFail"

.field public static final ACTION_BLUETOOTH_BACKGROUND_CONNECT_SUCCESS:Ljava/lang/String; = "BluetoothBackgroundConnectSuccess"

.field public static final ACTION_BT_DEVICE_CON_CONING:Ljava/lang/String; = "action.bt.device.con.coning"

.field public static final ACTION_BT_DEVICE_CON_FAIL:Ljava/lang/String; = "action.bt.device.con.fail"

.field public static final ACTION_BT_DEVICE_CON_LOST:Ljava/lang/String; = "action.bt.device.con.lost"

.field public static final ACTION_BT_DEVICE_CON_SUCCESS:Ljava/lang/String; = "action.bt.device.con.success"

.field public static final ACTION_BT_DEVICE_SCAN:Ljava/lang/String; = "action.bt.device.scan"

.field public static final ACTION_BT_DEVICE_SCAN_FINISH:Ljava/lang/String; = "action.bt.device.scan.finish"

.field private static final AUTO_RECONNECT_COUNT:I = 0x4

.field public static final BLUETOOTH_SEND_COMMAND:Ljava/lang/String; = "BluetoothSendCommand"

.field public static final BT_DEVICE_ADD:I = 0x64

.field public static final BT_DEVICE_CON_CONING:I = 0x78

.field public static final BT_DEVICE_CON_FAIL:I = 0x8c

.field public static final BT_DEVICE_CON_LOST:I = 0x96

.field public static final BT_DEVICE_CON_SUCCESS:I = 0x82

.field public static final BT_DEVICE_SCAN:I = 0xa0

.field public static final BT_DEVICE_SCAN_FINISH:I = 0xaa

.field public static final DOWNLOADBIN_CHECK_FAIL:I = 0x2

.field public static final DOWNLOADBIN_FAIL:I = 0x6

.field public static final DOWNLOADBIN_MD5_FAIL:I = 0x4

.field public static final DOWNLOADBIN_MD5_SUCCESS:I = 0x5

.field public static final DOWNLOADBIN_SEND_FILENAME_FAIL:I = 0x3

.field public static final DOWNLOADBIN_SUCCESS:I = 0x7

.field public static final DOWNLOADBIN_SWITCH_MODEL_FAIL:I = 0x1

.field public static final DOWNLOADBIN_UPING:I = 0x8

.field public static final DOWNLOADBIN_VERSION:I = 0x9

.field private static PRODUCT_TYPE_PORT:Ljava/lang/String; = null

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_LISTEN:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothManager"

.field public static final UI_REFERSH:I = 0x6e

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

.field private static mDevicesArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/physics/entity/BluetoothListDto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MY_UUID:Ljava/util/UUID;

.field private autoConnectSerialNo:Ljava/lang/String;

.field private bluetooth_command_wait:Z

.field public isFix:Z

.field private mAutoReConnect:I

.field public mAutoReConnectBoolean:Z

.field mBridge:Lcom/cnlaunch/physics/utils/Bridge;

.field private mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

.field private mContext:Landroid/content/Context;

.field private mIsAutoConnect:Z

.field private mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

.field private mReadData:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field mTimer:Ljava/util/Timer;

.field private remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private remoteSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string/jumbo v0, "9"

    sput-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->PRODUCT_TYPE_PORT:Ljava/lang/String;

    .line 96
    sput-object v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    .line 98
    sput-object v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mDevicesArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->MY_UUID:Ljava/util/UUID;

    .line 87
    iput-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    .line 89
    iput-boolean v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 107
    iput-boolean v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mIsAutoConnect:Z

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->autoConnectSerialNo:Ljava/lang/String;

    .line 598
    iput-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->bluetooth_command_wait:Z

    .line 676
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$1;-><init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    iput-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 224
    iput-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    .line 225
    iput-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    .line 226
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    .line 227
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$11()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->PRODUCT_TYPE_PORT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mDevicesArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    sput-object p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 536
    invoke-static {p0, p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendBluetoothStatusBoradcast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Lcom/cnlaunch/physics/utils/ReadByteDataStream;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)Ljava/util/UUID;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->MY_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectionFailed()V

    return-void
.end method

.method static synthetic access$9()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method private declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const/4 v1, 0x2

    .line 261
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mState:I

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->cancel()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 267
    :cond_0
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "mReadByteDataStreamThread cancel "

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->cancel()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    .line 272
    :cond_1
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "sendCustomBluetoothStatusBroadcast"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 274
    const-string/jumbo v1, "action.bt.device.con.coning"

    const/16 v2, 0x78

    .line 275
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connecting:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 273
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendCustomBluetoothStatusBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 276
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;-><init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->start()V

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connect(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceAddress"

    .prologue
    const/4 v3, 0x2

    .line 288
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BluetoothManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect  deviceAddress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mState:I

    if-ne v0, v3, :cond_0

    .line 290
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->cancel()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->cancel()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    .line 300
    :cond_1
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 304
    const-string/jumbo v1, "action.bt.device.con.coning"

    const/16 v2, 0x78

    .line 305
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connecting:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 303
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendCustomBluetoothStatusBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 307
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;-><init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 308
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->start()V

    .line 309
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :cond_2
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connected(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "socket"
    .parameter "device"

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "BluetoothManager"

    const-string/jumbo v5, "connected "

    invoke-static {v4, v5}, Lcom/cnlaunch/physics/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :try_start_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 327
    .local v1, inputStream:Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 328
    .local v3, outputStream:Ljava/io/OutputStream;
    new-instance v4, Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    .line 329
    invoke-direct {v4, p0, v1, v3}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;-><init>(Lcom/cnlaunch/physics/impl/IPhysics;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 328
    iput-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v3           #outputStream:Ljava/io/OutputStream;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 335
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V

    .line 336
    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 337
    const-string/jumbo v5, "action.bt.device.con.success"

    const/16 v6, 0x82

    .line 338
    iget-object v7, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connected:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 336
    invoke-static {v4, v5, v6, v7, v8}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendCustomBluetoothStatusBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    const-wide/16 v4, 0x64

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 345
    :goto_1
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "BluetoothBackgroundConnectSuccess"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v4, "deviceName"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v4, "isFix"

    iget-boolean v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    const-string/jumbo v4, "BluetoothManager"

    const-string/jumbo v5, "Bluetooth connected success,starting transfer data "

    invoke-static {v4, v5}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 331
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v4, "BluetoothManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "remoteSocket sockets not created"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 322
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 342
    :catch_1
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private connectionFailed()V
    .locals 6

    .prologue
    .line 641
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V

    .line 642
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "action.bt.device.con.fail"

    .line 643
    const/16 v3, 0x8c

    .line 644
    iget-object v4, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/cnlaunch/bluetooth/R$string;->bluetooth_connect_fail:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 645
    iget-object v5, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 642
    invoke-static {v1, v2, v3, v4, v5}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendCustomBluetoothStatusBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 648
    iget-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    if-eqz v1, :cond_1

    .line 649
    :cond_0
    iget-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    if-nez v1, :cond_3

    .line 651
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "BluetoothBackgroundConnectFail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    .line 653
    const-string/jumbo v1, "deviceName"

    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 657
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->reConnectBluetoothDevice()V

    .line 658
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 119
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 122
    :cond_1
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    if-nez v0, :cond_2

    .line 123
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    invoke-direct {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    .line 125
    :cond_2
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    return-object v0
.end method

.method private declared-synchronized reConnectBluetoothDevice()V
    .locals 4

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cb\u91cd\u65b0\u8fde\u63a5 \u5269\u4f59\u6b21\u6570: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-boolean v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    if-lez v1, :cond_0

    .line 392
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 393
    .local v0, connectTimer:Ljava/util/Timer;
    new-instance v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;

    invoke-direct {v1, p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ReConnectTimerTask;-><init>(Lcom/cnlaunch/physics/bluetooth/BluetoothManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v0           #connectTimer:Ljava/util/Timer;
    :cond_0
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private regeisterDiagnoseBroadcast()V
    .locals 3

    .prologue
    .line 207
    const-string/jumbo v1, "BluetoothManager"

    const-string/jumbo v2, "BluetoothManager register Receiver"

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 209
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "BluetoothSendCommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "BluetoothBackgroundConnectSuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "BluetoothBackgroundConnectFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    return-void
.end method

.method private static sendBluetoothCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "command"

    .prologue
    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "BluetoothReceiverCommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 529
    return-void
.end method

.method private static sendBluetoothStatusBoradcast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "broadCast"

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method private static sendCustomBluetoothStatusBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "type"
    .parameter "content"
    .parameter "bluetoothDevice"

    .prologue
    .line 663
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 666
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v2, "pair"

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string/jumbo v2, "bluetoothDevice"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    const-string/jumbo v2, "customBluetoothBroadcastIntentExtraBundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 670
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 671
    return-void
.end method


# virtual methods
.method public autoBluetoothConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serialNo"
    .parameter "deviceAddress"

    .prologue
    const/4 v6, 0x1

    .line 145
    const-string/jumbo v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "auto Bluetooth Connect serialNo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    const-string/jumbo v5, "deviceAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v3, v4}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-boolean v6, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mIsAutoConnect:Z

    .line 148
    iput-boolean v6, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    .line 149
    const/4 v3, 0x4

    iput v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    .line 152
    const-string/jumbo v5, "BluetoothBackgroundConnectFail"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    invoke-direct {p0, p2}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connect(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, flag:Z
    sget-object v3, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 160
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 161
    .local v2, pairedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 168
    :goto_1
    if-nez v1, :cond_0

    .line 169
    iget-object v3, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    .line 170
    const-string/jumbo v5, "BluetoothBackgroundConnectFail"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 162
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connect(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connect(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mIsAutoConnect:Z

    .line 595
    invoke-virtual {p0, p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connectBluetoothDevice(I)V

    .line 596
    return-void
.end method

.method public declared-synchronized connectBluetoothDevice(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "connect Bluetooth Device "

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mIsAutoConnect:Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    .line 239
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    .line 240
    sget-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mDevicesArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/physics/entity/BluetoothListDto;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/entity/BluetoothListDto;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 241
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->connect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    const-string/jumbo v1, "BluetoothManager"

    const-string/jumbo v2, "finalize BluetoothManager"

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 132
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getBridge()Lcom/cnlaunch/physics/utils/Bridge;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadData:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand_wait()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->bluetooth_command_wait:Z

    return v0
.end method

.method public getConnState()Z
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, isConn:Z
    iget v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 381
    const/4 v0, 0x1

    .line 383
    :cond_0
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 573
    :goto_0
    return-object v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 589
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mState:I

    return v0
.end method

.method public getTimer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method public initBluetoothManager(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 201
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    .line 202
    const-string/jumbo v1, "serialNo_Prefix"

    .line 201
    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/PhysicsCommonUtils;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->PRODUCT_TYPE_PORT:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->regeisterDiagnoseBroadcast()V

    .line 204
    return-void
.end method

.method public isAutoConnect()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mIsAutoConnect:Z

    return v0
.end method

.method public isAutoReConnect()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    if-eqz v0, :cond_0

    .line 183
    iget v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnect:I

    if-ltz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBridge(Lcom/cnlaunch/physics/utils/Bridge;)V
    .locals 0
    .parameter "bridge"

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    .line 1010
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadData:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "BluetoothReceiverCommand"

    invoke-static {v0, v1, p1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendBluetoothCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-void
.end method

.method public setCommand_wait(Z)V
    .locals 0
    .parameter "wait"

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->bluetooth_command_wait:Z

    .line 608
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 360
    iput p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mState:I

    .line 361
    return-void
.end method

.method public setTimer(Ljava/util/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mTimer:Ljava/util/Timer;

    .line 1023
    return-void
.end method

.method public declared-synchronized stopConnectThread()V
    .locals 2

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "BluetoothManager"

    const-string/jumbo v1, "init stop ConnectThread"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;->cancel()V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mConnectThread:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$ConnectThread;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/ReadByteDataStream;->cancel()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mReadByteDataStreamThread:Lcom/cnlaunch/physics/utils/ReadByteDataStream;

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.cnlaunch.intent.action.DIAG_UNCONNECTED"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->sendBluetoothStatusBoradcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
