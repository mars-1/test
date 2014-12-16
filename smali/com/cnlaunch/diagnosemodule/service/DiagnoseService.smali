.class public Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;
.super Landroid/app/Service;
.source "DiagnoseService.java"


# static fields
.field public static final DIAGNOSE_SERVICE:Ljava/lang/String; = "com.cnlaunch.diagnose.service"


# instance fields
.field private diagnoseStatue:I

.field public mClient:Landroid/os/Messenger;

.field private mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

.field private mDiagnoseLogPath:Ljava/lang/String;

.field private mDiagnoseLogSwitch:Z

.field private mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

.field private mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

.field private final mMessenger:Landroid/os/Messenger;

.field private mOnDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public onForceCloseError:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private onRemoteStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

.field private tempLanguage:Ljava/lang/String;

.field private tempLibPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I

    .line 53
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;

    .line 55
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLanguage:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogSwitch:Z

    .line 97
    new-instance v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$1;-><init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mOnDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

    .line 114
    new-instance v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$2;-><init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->onRemoteStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    .line 132
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$3;-><init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mMessenger:Landroid/os/Messenger;

    .line 267
    new-instance v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$4;-><init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->onForceCloseError:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 306
    new-instance v0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;

    invoke-direct {v0, p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService$5;-><init>(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendClientMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I

    return v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogSwitch:Z

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLibPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->tempLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchBluetooth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseLogExceptionProcess(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->feedbackCMD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchWifi()V

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->onRemoteStatusListener:Lcom/cnlaunch/diagnosemodule/listener/OnRemoteDiagStatusListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendCrashInfoBroadcast(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;)Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    return-object v0
.end method

.method private diagnoseLogExceptionProcess(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 398
    const-string/jumbo v1, "DIAGNOSE_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8bca\u65ad\u65e5\u5fd7\u5f02\u5e38\u53d1\u9001\u6570\u636e\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/physics/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private feedbackCMD(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 287
    iget v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseStatue:I

    if-ne v0, v1, :cond_0

    .line 288
    invoke-static {}, Lcom/launch/rcu/socket/SocketCall;->getInstance()Lcom/launch/rcu/socket/SocketCall;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/launch/rcu/socket/SocketCall;->sendRemoteData(Ljava/lang/String;I)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->sendFeedbackCommand(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchBluetooth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "language"

    .prologue
    .line 253
    invoke-static {p0}, Lcom/ifoer/expedition/cto/CToJava;->init(Landroid/content/Context;)V

    .line 255
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    iget-boolean v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogSwitch:Z

    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->startDiagnoseLog(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;ZLjava/lang/String;)V

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagnoseLogSwitch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->recordLog(I)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "language"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->LoadDynLib(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private launchWifi()V
    .locals 2

    .prologue
    .line 247
    invoke-static {p0}, Lcom/cnlaunch/physics/wifi/WLANManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/physics/wifi/WLANManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 248
    invoke-static {p0}, Lcom/ifoer/expedition/cto/CToJava;->init(Landroid/content/Context;)V

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/physics/impl/IPhysics;->connect(I)V

    .line 250
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "BluetoothConnSuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "UnBindingService"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "com.cnlaunch.intent.action.DIAGNOSELOG_FILESIZE_OVERFLOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v1, "com.cnlaunch.intent.action.DIAGNOSELOG_IO_EXCEPTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v1, "DeviceConnectLost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    return-void
.end method

.method private sendClientMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.cnlaunch.pro.InitClientMessager"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    :goto_0
    return-void

    .line 239
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendCrashInfoBroadcast(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "ex"

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.cnlaunch.diagnose.err"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method private startDiagnoseLog(Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;ZLjava/lang/String;)V
    .locals 10
    .parameter "headCopy"
    .parameter "diagnoseLogSwitch"
    .parameter "diagnoseLogPath"

    .prologue
    .line 365
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "demo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->setContext(Landroid/content/Context;)V

    .line 369
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->initRecord(ZLjava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getLogRecordHead()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    move-result-object v2

    .line 378
    .local v2, head:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setCreateDate(Ljava/util/Date;)V

    .line 379
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftname(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftVersion(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getVehicleSoftLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setVehicleSoftLanguage(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getDeviceSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setDeviceSN(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getDeviceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setDeviceVersion(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getSoftVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setSoftVersion(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->getAdditionInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;->setAdditionInformation(Ljava/lang/String;)V

    .line 387
    :try_start_0
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->startRecord()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 390
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v4, "data"

    const-string/jumbo v5, "%1$s %2$s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/cnlaunch/diagnosemodule/R$string;->dialog_log_io_exception:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 393
    invoke-direct {p0, v3}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->diagnoseLogExceptionProcess(Landroid/os/Message;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 228
    const-string/jumbo v0, "Sanda"

    const-string/jumbo v1, "DiagnoseService--->onBind"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    const-string/jumbo v0, "Sanda"

    const-string/jumbo v1, "DiagnoseService--->onCreate"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->registerBroadcastReceiver()V

    .line 70
    const/16 v0, -0x4bd

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->startForeground(ILandroid/app/Notification;)V

    .line 71
    invoke-static {p0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mDiagBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mOnDiagnoseJsonListener:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->setDiagnoseJsonCallback(Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseJsonListener;)V

    .line 73
    new-instance v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mLogRecordHead:Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil$LogRecordHead;

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cnlaunch/diagnosemodule/R$integer;->datastream_page_num:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDataStreamPageNum(I)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 87
    const-string/jumbo v0, "Sanda"

    const-string/jumbo v1, "DiagnoseService--->onDestroy"

    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->stopForeground(Z)V

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->getInstance()Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseLogUtil;->stopRecord()V

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 94
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 80
    const/4 p2, 0x1

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
