.class public Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"


# static fields
.field public static final DEFAULT_DOWNLOAD_CODE:I = 0x2710

.field public static final HTTP_ERROR_CODE:I = -0xc8

.field public static final HTTP_NULL_CODE:I = -0x190

.field public static final JSONMAPPING_ERROR_CODE:I = -0x12c

.field public static final REQUEST_ERROR_CODE:I = -0x3e7

.field public static final REQUEST_SUCCESS_CODE:I = 0xc8

.field private static instance:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cnlaunch/framework/network/async/BaseAsyncTask;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final MAX_CONNECTIONS_NUM:I

.field private mContext:Landroid/content/Context;

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0xa

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->MAX_CONNECTIONS_NUM:I

    .line 67
    iput-object p1, p0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 78
    sget-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->instance:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    if-nez v0, :cond_1

    .line 79
    const-class v1, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->instance:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->instance:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->instance:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    .line 141
    sget-object v3, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 142
    sget-object v3, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/cnlaunch/framework/network/async/BaseAsyncTask;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    sget-object v3, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 150
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/cnlaunch/framework/network/async/BaseAsyncTask;>;>;>;"
    :cond_0
    return-void

    .line 144
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/cnlaunch/framework/network/async/BaseAsyncTask;>;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/cnlaunch/framework/network/async/BaseAsyncTask;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 146
    .local v2, requestCode:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    goto :goto_0
.end method

.method public cancelRequest(I)V
    .locals 4
    .parameter "requestCode"

    .prologue
    .line 125
    sget-object v2, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 126
    .local v1, requestTask:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/cnlaunch/framework/network/async/BaseAsyncTask;>;"
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;

    .line 128
    .local v0, request:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    if-eqz v0, :cond_0

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->cancel(Z)Z

    .line 133
    .end local v0           #request:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    :cond_0
    sget-object v2, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V
    .locals 1
    .parameter "requestCode"
    .parameter "listener"

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 95
    return-void
.end method

.method public request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V
    .locals 6
    .parameter "requestCode"
    .parameter "isCheckNetwork"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 104
    new-instance v0, Lcom/cnlaunch/framework/network/async/DownLoad;

    invoke-direct {v0, p1, p2, p3}, Lcom/cnlaunch/framework/network/async/DownLoad;-><init>(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 105
    .local v0, bean:Lcom/cnlaunch/framework/network/async/DownLoad;
    if-lez p1, :cond_1

    .line 106
    new-instance v1, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;

    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;-><init>(Lcom/cnlaunch/framework/network/async/DownLoad;Landroid/content/Context;)V

    .line 109
    .local v1, mAsynctask:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 110
    sget-object v2, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 114
    :goto_0
    sget-object v2, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->requestMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v1           #mAsynctask:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    :goto_1
    return-void

    .line 112
    .restart local v1       #mAsynctask:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/network/async/BaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 116
    .end local v1           #mAsynctask:Lcom/cnlaunch/framework/network/async/BaseAsyncTask;
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->tag:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "the error is requestCode < 0"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
