.class public Lcom/cnlaunch/framework/common/LruCacheManager;
.super Ljava/lang/Object;
.source "LruCacheManager.java"


# static fields
.field private static CACHE_SIZE:I

.field private static instance:Lcom/cnlaunch/framework/common/LruCacheManager;


# instance fields
.field private lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x1e

    sput v0, Lcom/cnlaunch/framework/common/LruCacheManager;->CACHE_SIZE:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "cacheSize"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/LruCacheManager;
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/cnlaunch/framework/common/LruCacheManager;->CACHE_SIZE:I

    invoke-static {v0}, Lcom/cnlaunch/framework/common/LruCacheManager;->getInstance(I)Lcom/cnlaunch/framework/common/LruCacheManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/cnlaunch/framework/common/LruCacheManager;
    .locals 2
    .parameter "cacheSize"

    .prologue
    .line 56
    sget-object v0, Lcom/cnlaunch/framework/common/LruCacheManager;->instance:Lcom/cnlaunch/framework/common/LruCacheManager;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/cnlaunch/framework/common/LruCacheManager;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/common/LruCacheManager;->instance:Lcom/cnlaunch/framework/common/LruCacheManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/cnlaunch/framework/common/LruCacheManager;

    invoke-direct {v0, p0}, Lcom/cnlaunch/framework/common/LruCacheManager;-><init>(I)V

    sput-object v0, Lcom/cnlaunch/framework/common/LruCacheManager;->instance:Lcom/cnlaunch/framework/common/LruCacheManager;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/common/LruCacheManager;->instance:Lcom/cnlaunch/framework/common/LruCacheManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public evictAll()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 98
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public trimToSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/framework/common/LruCacheManager;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 122
    return-void
.end method
