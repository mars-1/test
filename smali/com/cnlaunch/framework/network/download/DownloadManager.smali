.class public Lcom/cnlaunch/framework/network/download/DownloadManager;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0x3

.field private static instance:Lcom/cnlaunch/framework/network/download/DownloadManager;


# instance fields
.field private asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

.field private isRunning:Ljava/lang/Boolean;

.field private mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

.field private mDownloadinghandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPausinghandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

.field private syncHttpClient:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

.field private final tag:Ljava/lang/String;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 65
    const-class v0, Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 99
    new-instance v0, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-direct {v0, p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;-><init>(Lcom/cnlaunch/framework/network/download/DownloadManager;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    .line 102
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/framework/network/download/DownloadManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->pausehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    return-void
.end method

.method private broadcastAddHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method private broadcastAddHandler(Ljava/lang/String;Z)V
    .locals 2
    .parameter "fileName"
    .parameter "isInterrupt"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendAddMessage(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    :cond_0
    return-void
.end method

.method private declared-synchronized completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    check-cast p1, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .end local p1
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendFinishMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :cond_0
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/cnlaunch/framework/network/download/DownloadManager;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/cnlaunch/framework/network/download/DownloadManager;->instance:Lcom/cnlaunch/framework/network/download/DownloadManager;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/cnlaunch/framework/network/download/DownloadManager;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/network/download/DownloadManager;->instance:Lcom/cnlaunch/framework/network/download/DownloadManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-direct {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/network/download/DownloadManager;->instance:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/network/download/DownloadManager;->instance:Lcom/cnlaunch/framework/network/download/DownloadManager;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private newAsyncHttpResponseHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
    .locals 1
    .parameter "downloadParam"

    .prologue
    .line 481
    new-instance v0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;-><init>(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/download/DownloadParam;)V

    .line 528
    .local v0, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    return-object v0
.end method

.method private declared-synchronized pausehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    move-object v1, v0

    .line 450
    .local v1, fileHttpResponseHandler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    if-eqz p1, :cond_0

    .line 451
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->setInterrupt(Z)V

    .line 452
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 453
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    monitor-exit p0

    return-void

    .line 449
    .end local v1           #fileHttpResponseHandler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addHandler(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uriString"

    .prologue
    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "addHandler uriString is not null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public addHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)V
    .locals 6
    .parameter "downloadParam"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 235
    if-nez p1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "addHandler downloadParam is not null."

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "addHandler url or fileName is not null."

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p1}, Lcom/cnlaunch/framework/network/download/DownloadParam;->getDownPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "addHandler downPath is not null."

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_4
    invoke-virtual {p0, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->hasHandler(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 252
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "addHandler fileName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_5
    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-direct {p0, p1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->newAsyncHttpResponseHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->offer(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    .line 259
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->startManage()V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->pauseAllHandler()V

    .line 132
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendStopMessage()V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->interrupt()V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/framework/network/download/DownloadManager;->instance:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 138
    return-void
.end method

.method public declared-synchronized continueAllHandler()V
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized continueHandler(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 380
    monitor-enter p0

    const/4 v1, 0x0

    .line 381
    .local v1, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_0

    .line 388
    monitor-exit p0

    return-void

    .line 382
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    move-object v1, v0

    .line 383
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v3, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v3, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->offer(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized deleteHandler(Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"

    .prologue
    .line 341
    monitor-enter p0

    const/4 v2, 0x0

    .line 343
    .local v2, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 360
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v5}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 367
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lt v3, v5, :cond_6

    .line 373
    :goto_3
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    move-object v2, v0

    .line 345
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 346
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v1

    .line 347
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 350
    :cond_1
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getTempFile()Ljava/io/File;

    move-result-object v4

    .line 351
    .local v4, tempFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 354
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->setInterrupt(Z)V

    .line 355
    invoke-direct {p0, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 341
    .end local v1           #file:Ljava/io/File;
    .end local v4           #tempFile:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 343
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v5, v3}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    move-object v2, v0

    .line 362
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 363
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->remove(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)Z

    .line 360
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    :cond_6
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    move-object v2, v0

    .line 369
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 370
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method public getTotalhandlerCount()I
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hasHandler(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 310
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v5}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    move v3, v4

    .line 327
    :cond_0
    :goto_2
    return v3

    .line 304
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 305
    .local v1, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v1           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v5, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .restart local v1       #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    if-nez v1, :cond_3

    move v3, v4

    .line 320
    goto :goto_2

    .line 314
    .end local v1           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move v3, v4

    .line 316
    goto :goto_2

    .line 322
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :cond_3
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized pauseAllHandler()V
    .locals 3

    .prologue
    .line 424
    monitor-enter p0

    const/4 v0, 0x0

    .line 426
    .local v0, handler:Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 439
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 440
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 441
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 427
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->remove(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pauseHandler(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 411
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lt v1, v2, :cond_0

    .line 417
    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 413
    .local v0, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    invoke-direct {p0, v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->pausehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reBroadcastAddAllhandler()V
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 290
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 294
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 298
    return-void

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 288
    .restart local v0       #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->isInterrupt()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/cnlaunch/framework/network/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;Z)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->get(I)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v0

    .end local v0           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 292
    .restart local v0       #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mPausinghandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    check-cast v0, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 296
    .restart local v0       #handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->broadcastAddHandler(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 150
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 211
    return-void

    .line 151
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mhandlerQueue:Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;

    invoke-virtual {v7}, Lcom/cnlaunch/framework/network/download/DownloadManager$HandlerQueue;->poll()Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;

    .line 152
    .local v2, handler:Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
    if-eqz v2, :cond_0

    .line 153
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownloadinghandlers:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v2, v12}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->setInterrupt(Z)V

    .line 156
    new-instance v7, Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-direct {v7}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;-><init>()V

    iput-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->syncHttpClient:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    .line 157
    new-instance v7, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    invoke-direct {v7}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;-><init>()V

    iput-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    .line 158
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    iget-object v8, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 161
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 162
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "user_id"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, user_id:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "token"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, token:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/framework/network/http/RequestParams;->getParamValueString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, sign:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getEnableBreakpoint()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->syncHttpClient:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    const-string/jumbo v8, "sign"

    invoke-static {v4}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->syncHttpClient:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    const-string/jumbo v8, "cc"

    invoke-virtual {v7, v8, v6}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v4           #sign:Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    .end local v6           #user_id:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getEnableBreakpoint()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->syncHttpClient:Lcom/cnlaunch/framework/network/http/SyncHttpClient;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/cnlaunch/framework/network/http/SyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, response:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->getInstance()Lcom/cnlaunch/framework/common/parse/JsonMananger;

    move-result-object v7

    const-class v8, Lcom/cnlaunch/framework/network/download/BreakpointURL;

    invoke-virtual {v7, v3, v8}, Lcom/cnlaunch/framework/common/parse/JsonMananger;->jsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/download/BreakpointURL;

    .line 181
    .local v0, breakpointURL:Lcom/cnlaunch/framework/network/download/BreakpointURL;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/BreakpointURL;->getCode()I

    move-result v7

    if-nez v7, :cond_4

    .line 182
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/BreakpointURL;->getData()Lcom/cnlaunch/framework/network/download/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/framework/network/download/Data;->getDownUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->setUrl(Ljava/lang/String;)V

    .line 183
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    const-string/jumbo v8, "sign"

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/BreakpointURL;->getData()Lcom/cnlaunch/framework/network/download/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cnlaunch/framework/network/download/Data;->getMd5SignStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    goto/16 :goto_0

    .line 171
    .end local v0           #breakpointURL:Lcom/cnlaunch/framework/network/download/BreakpointURL;
    .end local v3           #response:Ljava/lang/String;
    .restart local v4       #sign:Ljava/lang/String;
    .restart local v5       #token:Ljava/lang/String;
    .restart local v6       #user_id:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    const-string/jumbo v8, "sign"

    invoke-static {v4}, Lcom/cnlaunch/framework/utils/MD5Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    const-string/jumbo v8, "cc"

    invoke-virtual {v7, v8, v6}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    .end local v4           #sign:Ljava/lang/String;
    .end local v5           #token:Ljava/lang/String;
    .end local v6           #user_id:Ljava/lang/String;
    .restart local v0       #breakpointURL:Lcom/cnlaunch/framework/network/download/BreakpointURL;
    .restart local v3       #response:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v7, :cond_5

    .line 187
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onFailure: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getBreakpointURL error! code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/BreakpointURL;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/BreakpointURL;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_5
    invoke-direct {p0, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 195
    .end local v0           #breakpointURL:Lcom/cnlaunch/framework/network/download/BreakpointURL;
    .end local v3           #response:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    .line 197
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v7, :cond_6

    .line 198
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;

    new-array v8, v13, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onFailure: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getFileName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "getBreakpointURL network error!"

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_6
    invoke-direct {p0, v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_0

    .line 207
    .end local v1           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_7
    iget-object v7, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->asyncHttpClient:Lcom/cnlaunch/framework/network/http/AsyncHttpClient;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->getParams()Lcom/cnlaunch/framework/network/http/RequestParams;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/cnlaunch/framework/network/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/framework/network/http/RequestParams;Lcom/cnlaunch/framework/network/http/ResponseHandlerInterface;)Lcom/cnlaunch/framework/network/http/RequestHandle;

    goto/16 :goto_0
.end method

.method public setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V
    .locals 0
    .parameter "downLoadCallback"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    .line 111
    return-void
.end method

.method public startManage()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning:Ljava/lang/Boolean;

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->start()V

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendStartMessage()V

    .line 124
    :cond_0
    return-void
.end method
