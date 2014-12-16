.class public Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;
.super Ljava/lang/Thread;
.source "MemoryThread.java"


# static fields
.field private static isRunning:Z

.field private static isWait:Z


# instance fields
.field private commandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private sleepTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isRunning:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    .line 24
    iput v1, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepTime:I

    .line 29
    sput-boolean v1, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isRunning:Z

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    .line 31
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public addDataInArrary(Ljava/lang/String;)V
    .locals 4
    .parameter "command"

    .prologue
    .line 38
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, json:Lorg/json/JSONObject;
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, type:Ljava/lang/String;
    const-string/jumbo v3, "36"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    :cond_0
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepTime:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #type:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-boolean v3, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->notifyThread()V

    .line 52
    :cond_1
    return-void

    .line 43
    .restart local v1       #json:Lorg/json/JSONObject;
    .restart local v2       #type:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepTime:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    .end local v1           #json:Lorg/json/JSONObject;
    .end local v2           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public addLastDataInArrary(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->notifyThread()V

    .line 61
    :cond_0
    return-void
.end method

.method public clearCommandList()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    return-void
.end method

.method public getCommandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    return-object v0
.end method

.method public handleData(Ljava/lang/String;)V
    .locals 1
    .parameter "mData"

    .prologue
    .line 115
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAG_LIB_OLD:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/diagnosemodule/DiagnoseBusiness;->feedbackUICommand(Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public declared-synchronized notifyThread()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeThread()V
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isRunning:Z

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 77
    :goto_0
    sget-boolean v2, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isRunning:Z

    if-nez v2, :cond_0

    .line 92
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget v2, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepTime:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 80
    iget v2, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepTime:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleep(J)V

    .line 81
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, command:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->handleData(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->commandList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0           #command:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->sleepThread()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized sleepThread()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isRunning:Z

    .line 70
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->isWait:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/thread/MemoryThread;->notifyThread()V

    .line 73
    :cond_0
    return-void
.end method
