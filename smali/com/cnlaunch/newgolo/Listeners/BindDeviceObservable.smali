.class public Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;
.super Ljava/util/Observable;
.source "BindDeviceObservable.java"


# static fields
.field private static instance:Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 10
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->instance:Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->instance:Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    .line 15
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->instance:Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 21
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 22
    return-void
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    .line 33
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
