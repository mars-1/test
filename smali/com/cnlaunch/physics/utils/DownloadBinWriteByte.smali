.class public Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;
.super Ljava/lang/Object;
.source "DownloadBinWriteByte.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;
    }
.end annotation


# static fields
.field public static DELAY:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private buffer:[B

.field private mBridge:Lcom/cnlaunch/physics/utils/Bridge;

.field private mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

.field private outputStream:Ljava/io/OutputStream;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x1f40

    sput v0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/physics/utils/Bridge;[BILcom/cnlaunch/physics/impl/IPhysics;)V
    .locals 1
    .parameter "bridge"
    .parameter "buffer"
    .parameter "delay"
    .parameter "pIPhysics"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "WriteByteData"

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 31
    iput-object p2, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->buffer:[B

    .line 32
    iput-object p4, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 33
    sput p3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->DELAY:I

    .line 34
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/physics/utils/Bridge;[BLcom/cnlaunch/physics/impl/IPhysics;)V
    .locals 1
    .parameter "bridge"
    .parameter "buffer"
    .parameter "pIPhysics"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "WriteByteData"

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 39
    iput-object p2, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->buffer:[B

    .line 40
    iput-object p3, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->buffer:[B

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;)Lcom/cnlaunch/physics/utils/Bridge;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v1}, Lcom/cnlaunch/physics/impl/IPhysics;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->outputStream:Ljava/io/OutputStream;

    .line 48
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->timer:Ljava/util/Timer;

    .line 50
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->timer:Ljava/util/Timer;

    .line 51
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;

    invoke-direct {v2, p0}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;-><init>(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;)V

    sget v3, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    iget-object v2, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    invoke-interface {v1, v2}, Lcom/cnlaunch/physics/impl/IPhysics;->setBridge(Lcom/cnlaunch/physics/utils/Bridge;)V

    .line 53
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    iget-object v2, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->timer:Ljava/util/Timer;

    invoke-interface {v1, v2}, Lcom/cnlaunch/physics/impl/IPhysics;->setTimer(Ljava/util/Timer;)V

    .line 54
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/utils/Bridge;->getData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
