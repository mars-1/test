.class public Lcom/cnlaunch/physics/utils/WriteByteDataStream;
.super Ljava/lang/Object;
.source "WriteByteDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;
    }
.end annotation


# static fields
.field public static instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;


# instance fields
.field private DELAY:I

.field private TAG:Ljava/lang/String;

.field private buffer:[B

.field private mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

.field private outputStream:Ljava/io/OutputStream;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>([BILcom/cnlaunch/physics/impl/IPhysics;)V
    .locals 1
    .parameter "buffer"
    .parameter "delay"
    .parameter "pIPhysics"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "WriteByteData"

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 27
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->DELAY:I

    .line 54
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B

    .line 55
    iput-object p3, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 56
    iput p2, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->DELAY:I

    .line 57
    return-void
.end method

.method public constructor <init>([BLcom/cnlaunch/physics/impl/IPhysics;)V
    .locals 1
    .parameter "buffer"
    .parameter "pIPhysics"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, "WriteByteData"

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 27
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->DELAY:I

    .line 61
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B

    .line 62
    iput-object p2, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/physics/utils/WriteByteDataStream;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/physics/utils/WriteByteDataStream;)Lcom/cnlaunch/physics/impl/IPhysics;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    return-object v0
.end method

.method public static getInstance([BILcom/cnlaunch/physics/impl/IPhysics;)Lcom/cnlaunch/physics/utils/WriteByteDataStream;
    .locals 1
    .parameter "buffer"
    .parameter "delay"
    .parameter "pIPhysics"

    .prologue
    .line 31
    sget-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/physics/utils/WriteByteDataStream;-><init>([BILcom/cnlaunch/physics/impl/IPhysics;)V

    sput-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    .line 34
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    return-object v0
.end method

.method public static getInstance([BLcom/cnlaunch/physics/impl/IPhysics;)Lcom/cnlaunch/physics/utils/WriteByteDataStream;
    .locals 1
    .parameter "buffer"
    .parameter "pIPhysics"

    .prologue
    .line 38
    sget-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/physics/utils/WriteByteDataStream;-><init>([BLcom/cnlaunch/physics/impl/IPhysics;)V

    sput-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    .line 41
    :cond_0
    sget-object v0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->instance:Lcom/cnlaunch/physics/utils/WriteByteDataStream;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 67
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    invoke-interface {v1}, Lcom/cnlaunch/physics/impl/IPhysics;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->outputStream:Ljava/io/OutputStream;

    .line 68
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B

    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->outputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 71
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->timer:Ljava/util/Timer;

    .line 72
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;

    invoke-direct {v2, p0}, Lcom/cnlaunch/physics/utils/WriteByteDataStream$MyTimerTasks;-><init>(Lcom/cnlaunch/physics/utils/WriteByteDataStream;)V

    iget v3, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->mIPhysics:Lcom/cnlaunch/physics/impl/IPhysics;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cnlaunch/physics/impl/IPhysics;->setCommand_wait(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/cnlaunch/physics/utils/WriteByteDataStream;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Exception during write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
