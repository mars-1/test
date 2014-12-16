.class public Lorg/vudroid/core/DecodeServiceBase;
.super Ljava/lang/Object;
.source "DecodeServiceBase.java"

# interfaces
.implements Lorg/vudroid/core/DecodeService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vudroid/core/DecodeServiceBase$DecodeTask;
    }
.end annotation


# static fields
.field public static final DECODE_SERVICE:Ljava/lang/String; = "ViewDroidDecodeService"

.field private static final PAGE_POOL_SIZE:I = 0x10


# instance fields
.field private final codecContext:Lorg/vudroid/core/codec/CodecContext;

.field private containerView:Landroid/view/View;

.field private contentResolver:Landroid/content/ContentResolver;

.field private final decodingFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private document:Lorg/vudroid/core/codec/CodecDocument;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isRecycled:Z

.field private pageEvictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final pages:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/vudroid/core/codec/CodecPage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/vudroid/core/codec/CodecContext;)V
    .locals 1
    .parameter "codecContext"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->pageEvictionQueue:Ljava/util/Queue;

    .line 40
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase;->codecContext:Lorg/vudroid/core/codec/CodecContext;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lorg/vudroid/core/DecodeServiceBase;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->performDecode(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V

    return-void
.end method

.method static synthetic access$1(Lorg/vudroid/core/DecodeServiceBase;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lorg/vudroid/core/DecodeServiceBase;)Lorg/vudroid/core/codec/CodecDocument;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->document:Lorg/vudroid/core/codec/CodecDocument;

    return-object v0
.end method

.method static synthetic access$3(Lorg/vudroid/core/DecodeServiceBase;)Lorg/vudroid/core/codec/CodecContext;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->codecContext:Lorg/vudroid/core/codec/CodecContext;

    return-object v0
.end method

.method private calculateScale(Lorg/vudroid/core/codec/CodecPage;)F
    .locals 2
    .parameter "codecPage"

    .prologue
    .line 140
    const/high16 v0, 0x3f80

    invoke-direct {p0}, Lorg/vudroid/core/DecodeServiceBase;->getTargetWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-interface {p1}, Lorg/vudroid/core/codec/CodecPage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private finishDecoding(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "currentDecodeTask"
    .parameter "bitmap"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lorg/vudroid/core/DecodeServiceBase;->updateImage(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Landroid/graphics/Bitmap;)V

    .line 145
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DecodeServiceBase;->stopDecoding(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method private getPage(I)Lorg/vudroid/core/codec/CodecPage;
    .locals 6
    .parameter "pageIndex"

    .prologue
    .line 157
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 159
    new-instance v4, Ljava/lang/ref/SoftReference;

    iget-object v5, p0, Lorg/vudroid/core/DecodeServiceBase;->document:Lorg/vudroid/core/codec/CodecDocument;

    invoke-interface {v5, p1}, Lorg/vudroid/core/codec/CodecDocument;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pageEvictionQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pageEvictionQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 162
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pageEvictionQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 163
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pageEvictionQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    .local v1, evictedPageIndex:Ljava/lang/Integer;
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/codec/CodecPage;

    .line 165
    .local v0, evictedPage:Lorg/vudroid/core/codec/CodecPage;
    if-eqz v0, :cond_1

    .line 166
    invoke-interface {v0}, Lorg/vudroid/core/codec/CodecPage;->recycle()V

    .line 170
    .end local v0           #evictedPage:Lorg/vudroid/core/codec/CodecPage;
    .end local v1           #evictedPageIndex:Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/vudroid/core/codec/CodecPage;

    return-object v2
.end method

.method private getScaledHeight(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Lorg/vudroid/core/codec/CodecPage;F)I
    .locals 2
    .parameter "currentDecodeTask"
    .parameter "vuPage"
    .parameter "scale"

    .prologue
    .line 121
    invoke-direct {p0, p2, p3}, Lorg/vudroid/core/DecodeServiceBase;->getScaledHeight(Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v0

    int-to-float v0, v0

    .line 122
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$3(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 121
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getScaledHeight(Lorg/vudroid/core/codec/CodecPage;F)I
    .locals 1
    .parameter "vuPage"
    .parameter "scale"

    .prologue
    .line 132
    invoke-interface {p1}, Lorg/vudroid/core/codec/CodecPage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private getScaledWidth(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Lorg/vudroid/core/codec/CodecPage;F)I
    .locals 2
    .parameter "currentDecodeTask"
    .parameter "vuPage"
    .parameter "scale"

    .prologue
    .line 127
    invoke-direct {p0, p2, p3}, Lorg/vudroid/core/DecodeServiceBase;->getScaledWidth(Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v0

    int-to-float v0, v0

    .line 128
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$3(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 127
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getScaledWidth(Lorg/vudroid/core/codec/CodecPage;F)I
    .locals 1
    .parameter "vuPage"
    .parameter "scale"

    .prologue
    .line 136
    invoke-interface {p1}, Lorg/vudroid/core/codec/CodecPage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private getTargetWidth()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method private isTaskDead(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Z
    .locals 3
    .parameter "currentDecodeTask"

    .prologue
    .line 205
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeKey:Ljava/lang/Object;
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$5(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private performDecode(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V
    .locals 6
    .parameter "currentDecodeTask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->isTaskDead(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const-string/jumbo v3, "ViewDroidDecodeService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Skipping decode task for page "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string/jumbo v3, "ViewDroidDecodeService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Starting decode of page: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v2

    .line 100
    .local v2, vuPage:Lorg/vudroid/core/codec/CodecPage;
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageNumber:I
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$1(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/vudroid/core/DecodeServiceBase;->preloadNextPage(I)V

    .line 102
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->isTaskDead(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const-string/jumbo v3, "ViewDroidDecodeService"

    const-string/jumbo v4, "Start converting map to bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, v2}, Lorg/vudroid/core/DecodeServiceBase;->calculateScale(Lorg/vudroid/core/codec/CodecPage;)F

    move-result v3

    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->zoom:F
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$2(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)F

    move-result v4

    mul-float v1, v3, v4

    .line 108
    .local v1, scale:F
    invoke-direct {p0, p1, v2, v1}, Lorg/vudroid/core/DecodeServiceBase;->getScaledWidth(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v3

    .line 109
    invoke-direct {p0, p1, v2, v1}, Lorg/vudroid/core/DecodeServiceBase;->getScaledHeight(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v4

    .line 110
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->pageSliceBounds:Landroid/graphics/RectF;
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$3(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Landroid/graphics/RectF;

    move-result-object v5

    .line 107
    invoke-interface {v2, v3, v4, v5}, Lorg/vudroid/core/codec/CodecPage;->renderBitmap(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string/jumbo v3, "ViewDroidDecodeService"

    const-string/jumbo v4, "Converting map to bitmap finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->isTaskDead(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 116
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/vudroid/core/DecodeServiceBase;->finishDecoding(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private preloadNextPage(I)V
    .locals 2
    .parameter "pageNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    add-int/lit8 v0, p1, 0x1

    .line 150
    .local v0, nextPage:I
    invoke-virtual {p0}, Lorg/vudroid/core/DecodeServiceBase;->getPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, v0}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    goto :goto_0
.end method

.method private updateImage(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "currentDecodeTask"
    .parameter "bitmap"

    .prologue
    .line 201
    #getter for: Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->decodeCallback:Lorg/vudroid/core/DecodeService$DecodeCallback;
    invoke-static {p1}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;->access$4(Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)Lorg/vudroid/core/DecodeService$DecodeCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/vudroid/core/DecodeService$DecodeCallback;->decodeComplete(Landroid/graphics/Bitmap;)V

    .line 202
    return-void
.end method

.method private waitForDecode(Lorg/vudroid/core/codec/CodecPage;)V
    .locals 0
    .parameter "vuPage"

    .prologue
    .line 175
    invoke-interface {p1}, Lorg/vudroid/core/codec/CodecPage;->waitForDecode()V

    .line 176
    return-void
.end method


# virtual methods
.method public decodePage(Ljava/lang/Object;ILorg/vudroid/core/DecodeService$DecodeCallback;FLandroid/graphics/RectF;)V
    .locals 10
    .parameter "decodeKey"
    .parameter "pageNum"
    .parameter "decodeCallback"
    .parameter "zoom"
    .parameter "pageSliceBounds"

    .prologue
    .line 60
    new-instance v0, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/vudroid/core/DecodeServiceBase$DecodeTask;-><init>(Lorg/vudroid/core/DecodeServiceBase;ILorg/vudroid/core/DecodeService$DecodeCallback;FLjava/lang/Object;Landroid/graphics/RectF;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V

    .line 62
    .local v0, decodeTask:Lorg/vudroid/core/DecodeServiceBase$DecodeTask;
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    monitor-enter v2

    .line 63
    :try_start_0
    iget-boolean v1, p0, Lorg/vudroid/core/DecodeServiceBase;->isRecycled:Z

    if-eqz v1, :cond_0

    .line 64
    monitor-exit v2

    .line 82
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lorg/vudroid/core/DecodeServiceBase$1;

    invoke-direct {v3, p0, v0}, Lorg/vudroid/core/DecodeServiceBase$1;-><init>(Lorg/vudroid/core/DecodeServiceBase;Lorg/vudroid/core/DecodeServiceBase$DecodeTask;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    .line 77
    .local v8, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    invoke-interface {v1, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    .line 78
    .local v9, removed:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v9, :cond_1

    .line 79
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 62
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v8           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v9           #removed:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEffectivePagesHeight()I
    .locals 2

    .prologue
    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v0

    .line 189
    .local v0, page:Lorg/vudroid/core/codec/CodecPage;
    invoke-direct {p0, v0}, Lorg/vudroid/core/DecodeServiceBase;->calculateScale(Lorg/vudroid/core/codec/CodecPage;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/vudroid/core/DecodeServiceBase;->getScaledHeight(Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v1

    return v1
.end method

.method public getEffectivePagesWidth()I
    .locals 2

    .prologue
    .line 183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v0

    .line 184
    .local v0, page:Lorg/vudroid/core/codec/CodecPage;
    invoke-direct {p0, v0}, Lorg/vudroid/core/DecodeServiceBase;->calculateScale(Lorg/vudroid/core/codec/CodecPage;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/vudroid/core/DecodeServiceBase;->getScaledWidth(Lorg/vudroid/core/codec/CodecPage;F)I

    move-result v1

    return v1
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->document:Lorg/vudroid/core/codec/CodecDocument;

    invoke-interface {v0}, Lorg/vudroid/core/codec/CodecDocument;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getPageHeight(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v0

    invoke-interface {v0}, Lorg/vudroid/core/codec/CodecPage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/vudroid/core/DecodeServiceBase;->getPage(I)Lorg/vudroid/core/codec/CodecPage;

    move-result-object v0

    invoke-interface {v0}, Lorg/vudroid/core/codec/CodecPage;->getWidth()I

    move-result v0

    return v0
.end method

.method public open(Landroid/net/Uri;)V
    .locals 2
    .parameter "fileUri"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->codecContext:Lorg/vudroid/core/codec/CodecContext;

    .line 54
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->contentResolver:Landroid/content/ContentResolver;

    .line 53
    invoke-static {v1, p1}, Lorg/vudroid/core/utils/PathFromUri;->retrieve(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/vudroid/core/codec/CodecContext;->openDocument(Ljava/lang/String;)Lorg/vudroid/core/codec/CodecDocument;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->document:Lorg/vudroid/core/codec/CodecDocument;

    .line 55
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    monitor-enter v2

    .line 233
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/vudroid/core/DecodeServiceBase;->isRecycled:Z

    .line 232
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/vudroid/core/DecodeServiceBase$2;

    invoke-direct {v2, p0}, Lorg/vudroid/core/DecodeServiceBase$2;-><init>(Lorg/vudroid/core/DecodeServiceBase;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 251
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 252
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 235
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/vudroid/core/DecodeServiceBase;->stopDecoding(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setContainerView(Landroid/view/View;)V
    .locals 0
    .parameter "containerView"

    .prologue
    .line 49
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase;->containerView:Landroid/view/View;

    .line 50
    return-void
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 44
    iput-object p1, p0, Lorg/vudroid/core/DecodeServiceBase;->contentResolver:Landroid/content/ContentResolver;

    .line 45
    iget-object v0, p0, Lorg/vudroid/core/DecodeServiceBase;->codecContext:Lorg/vudroid/core/codec/CodecContext;

    invoke-interface {v0, p1}, Lorg/vudroid/core/codec/CodecContext;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 46
    return-void
.end method

.method public stopDecoding(Ljava/lang/Object;)V
    .locals 2
    .parameter "decodeKey"

    .prologue
    .line 85
    iget-object v1, p0, Lorg/vudroid/core/DecodeServiceBase;->decodingFutures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 86
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 89
    :cond_0
    return-void
.end method
