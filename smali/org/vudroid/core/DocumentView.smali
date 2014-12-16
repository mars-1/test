.class public Lorg/vudroid/core/DocumentView;
.super Landroid/view/View;
.source "DocumentView.java"

# interfaces
.implements Lorg/vudroid/core/events/ZoomListener;


# static fields
.field private static final DOUBLE_TAP_TIME:I = 0x1f4


# instance fields
.field private final currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

.field decodeService:Lorg/vudroid/core/DecodeService;

.field private inZoom:Z

.field private isInitialized:Z

.field private lastDownEventTime:J

.field private lastX:F

.field private lastY:F

.field private multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

.field private pageToGoTo:I

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
            "Lorg/vudroid/core/Page;",
            ">;"
        }
    .end annotation
.end field

.field progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

.field private final scroller:Landroid/widget/Scroller;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewRect:Landroid/graphics/RectF;

.field final zoomModel:Lorg/vudroid/core/models/ZoomModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/vudroid/core/models/ZoomModel;Lorg/vudroid/core/models/DecodingProgressModel;Lorg/vudroid/core/models/CurrentPageModel;)V
    .locals 3
    .parameter "context"
    .parameter "zoomModel"
    .parameter "progressModel"
    .parameter "currentPageModel"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    .line 46
    iput-object p2, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    .line 47
    iput-object p3, p0, Lorg/vudroid/core/DocumentView;->progressModel:Lorg/vudroid/core/models/DecodingProgressModel;

    .line 48
    iput-object p4, p0, Lorg/vudroid/core/DocumentView;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    .line 49
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setKeepScreenOn(Z)V

    .line 50
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    .line 51
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lorg/vudroid/core/DocumentView;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-direct {p0, p2}, Lorg/vudroid/core/DocumentView;->initMultiTouchZoomIfAvailable(Lorg/vudroid/core/models/ZoomModel;)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lorg/vudroid/core/DocumentView;)Lorg/vudroid/core/models/CurrentPageModel;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    return-object v0
.end method

.method static synthetic access$1(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->updatePageVisibility()V

    return-void
.end method

.method static synthetic access$2(Lorg/vudroid/core/DocumentView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->init()V

    return-void
.end method

.method private getBottomLimit()I
    .locals 3

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vudroid/core/Page;

    iget-object v1, v1, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    .line 277
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 276
    sub-int/2addr v1, v2

    .line 280
    :goto_0
    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    const/16 v1, 0x3c

    goto :goto_0
.end method

.method private getLeftLimit()I
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method private getRightLimit()I
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v1}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollScaleRatio()F
    .locals 4

    .prologue
    .line 369
    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 370
    .local v0, page:Lorg/vudroid/core/Page;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 371
    :cond_0
    const/4 v2, 0x0

    .line 374
    :goto_0
    return v2

    .line 373
    :cond_1
    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v2}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v1

    .line 374
    .local v1, v:F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    iget-object v3, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTopLimit()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method private goToPageImpl(I)V
    .locals 3
    .parameter "toPage"

    .prologue
    .line 86
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    invoke-virtual {v0}, Lorg/vudroid/core/Page;->getTop()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 87
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 71
    iget-boolean v3, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-eqz v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getEffectivePagesWidth()I

    move-result v2

    .line 75
    .local v2, width:I
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getEffectivePagesHeight()I

    move-result v0

    .line 76
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v3}, Lorg/vudroid/core/DecodeService;->getPageCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    .line 81
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 82
    iget v3, p0, Lorg/vudroid/core/DocumentView;->pageToGoTo:I

    invoke-direct {p0, v3}, Lorg/vudroid/core/DocumentView;->goToPageImpl(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lorg/vudroid/core/Page;

    invoke-direct {v5, p0, v1}, Lorg/vudroid/core/Page;-><init>(Lorg/vudroid/core/DocumentView;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/vudroid/core/Page;

    invoke-virtual {v3, v2, v0}, Lorg/vudroid/core/Page;->setAspectRatio(II)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initMultiTouchZoomIfAvailable(Lorg/vudroid/core/models/ZoomModel;)V
    .locals 5
    .parameter "zoomModel"

    .prologue
    .line 58
    .line 59
    :try_start_0
    const-string/jumbo v1, "org.vudroid.core.multitouch.MultiTouchZoomImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 60
    const-class v4, Lorg/vudroid/core/models/ZoomModel;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vudroid/core/multitouch/MultiTouchZoom;

    .line 58
    iput-object v1, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Multi touch zoom is not available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invalidateScroll(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 357
    iget-boolean v1, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-nez v1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 361
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 362
    .local v0, page:Lorg/vudroid/core/Page;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    goto :goto_0
.end method

.method private lineByLineMoveTo(I)V
    .locals 7
    .parameter "direction"

    .prologue
    .line 254
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 256
    :cond_0
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v3

    .line 257
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v4

    sub-int/2addr v0, v4

    mul-int v4, p1, v0

    int-to-float v5, p1

    .line 258
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getCurrentPage()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    iget-object v0, v0, Lorg/vudroid/core/Page;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v5

    const/high16 v5, 0x4248

    div-float/2addr v0, v5

    float-to-int v0, v0

    .line 256
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 263
    :goto_0
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidate()V

    .line 264
    return-void

    .line 255
    :cond_1
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 260
    :cond_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    .line 261
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    .line 260
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_0
.end method

.method private setLastPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/vudroid/core/DocumentView;->lastX:F

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/vudroid/core/DocumentView;->lastY:F

    .line 224
    return-void
.end method

.method private stopScroller()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 381
    :cond_0
    return-void
.end method

.method private updatePageVisibility()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    return-void

    .line 111
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 112
    .local v0, page:Lorg/vudroid/core/Page;
    invoke-virtual {v0}, Lorg/vudroid/core/Page;->updateVisibility()V

    goto :goto_0
.end method

.method private verticalDpadScroll(I)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 248
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    .line 249
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v4

    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x2

    .line 248
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 250
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidate()V

    .line 251
    return-void
.end method


# virtual methods
.method public commitZoom()V
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    .line 121
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 118
    .local v0, page:Lorg/vudroid/core/Page;
    invoke-virtual {v0}, Lorg/vudroid/core/Page;->invalidate()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 320
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 244
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 231
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->lineByLineMoveTo(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0, v2}, Lorg/vudroid/core/DocumentView;->lineByLineMoveTo(I)V

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->verticalDpadScroll(I)V

    goto :goto_0

    .line 240
    :pswitch_3
    invoke-direct {p0, v2}, Lorg/vudroid/core/DocumentView;->verticalDpadScroll(I)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentPage()I
    .locals 4

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, pageIndex:I
    iget-object v2, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    return v1

    .line 144
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/vudroid/core/Page;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/vudroid/core/Page;

    invoke-virtual {v2}, Lorg/vudroid/core/Page;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method getPreShowViewRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 307
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 309
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 310
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 308
    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method getViewRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 296
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v3

    .line 297
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 296
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    .local v0, rectF:Landroid/graphics/RectF;
    return-object v0
.end method

.method public goToPage(I)V
    .locals 1
    .parameter "toPage"

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->goToPageImpl(I)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iput p1, p0, Lorg/vudroid/core/DocumentView;->pageToGoTo:I

    goto :goto_0
.end method

.method invalidatePageSizes()V
    .locals 10

    .prologue
    .line 341
    iget-boolean v6, p0, Lorg/vudroid/core/DocumentView;->isInitialized:Z

    if-nez v6, :cond_1

    .line 354
    :cond_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, heightAccum:F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v4

    .line 346
    .local v4, width:I
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v6}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v5

    .line 347
    .local v5, zoom:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 348
    iget-object v6, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/vudroid/core/Page;

    .line 349
    .local v2, page:Lorg/vudroid/core/Page;
    invoke-virtual {v2, v4, v5}, Lorg/vudroid/core/Page;->getPageHeight(IF)F

    move-result v3

    .line 350
    .local v3, pageHeight:F
    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    int-to-float v8, v4

    mul-float/2addr v8, v5

    .line 351
    add-float v9, v0, v3

    invoke-direct {v6, v7, v0, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    invoke-virtual {v2, v6}, Lorg/vudroid/core/Page;->setBounds(Landroid/graphics/RectF;)V

    .line 352
    add-float/2addr v0, v3

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isPageShow(I)Z
    .locals 2
    .parameter "pageIndex"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    invoke-virtual {v0}, Lorg/vudroid/core/Page;->isPageShow()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 325
    iget-object v1, p0, Lorg/vudroid/core/DocumentView;->pages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    return-void

    .line 325
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vudroid/core/Page;

    .line 326
    .local v0, page:Lorg/vudroid/core/Page;
    invoke-virtual {v0, p1}, Lorg/vudroid/core/Page;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 333
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 334
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getScrollScaleRatio()F

    move-result v0

    .line 335
    .local v0, scrollScaleRatio:F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 336
    invoke-direct {p0, v0}, Lorg/vudroid/core/DocumentView;->invalidateScroll(F)V

    .line 337
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->commitZoom()V

    .line 338
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 93
    new-instance v0, Lorg/vudroid/core/DocumentView$1;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$1;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    .line 98
    iget-boolean v0, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lorg/vudroid/core/DocumentView$2;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$2;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    invoke-interface {v0, p1}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return v9

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    invoke-interface {v0}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->isResetLastPointAfterZoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    .line 184
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->multiTouchZoom:Lorg/vudroid/core/multitouch/MultiTouchZoom;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/vudroid/core/multitouch/MultiTouchZoom;->setResetLastPointAfterZoom(Z)V

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 191
    :cond_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 196
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/vudroid/core/DocumentView;->lastDownEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 198
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v0}, Lorg/vudroid/core/models/ZoomModel;->toggleZoomControls()V

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/vudroid/core/DocumentView;->lastDownEventTime:J

    goto :goto_0

    .line 204
    :pswitch_1
    iget v0, p0, Lorg/vudroid/core/DocumentView;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lorg/vudroid/core/DocumentView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/vudroid/core/DocumentView;->scrollBy(II)V

    .line 205
    invoke-direct {p0, p1}, Lorg/vudroid/core/DocumentView;->setLastPosition(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 208
    :pswitch_2
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 209
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    .line 210
    iget-object v3, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    .line 211
    iget-object v4, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v5

    .line 212
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v6

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getTopLimit()I

    move-result v7

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getBottomLimit()I

    move-result v8

    .line 209
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 213
    iget-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getLeftLimit()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getRightLimit()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 291
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getTopLimit()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->getBottomLimit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    invoke-super {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vudroid/core/DocumentView;->viewRect:Landroid/graphics/RectF;

    .line 293
    return-void
.end method

.method public setDecodeService(Lorg/vudroid/core/DecodeService;)V
    .locals 0
    .parameter "decodeService"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/vudroid/core/DocumentView;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 68
    return-void
.end method

.method public showDocument()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lorg/vudroid/core/DocumentView$3;

    invoke-direct {v0, p0}, Lorg/vudroid/core/DocumentView$3;-><init>(Lorg/vudroid/core/DocumentView;)V

    invoke-virtual {p0, v0}, Lorg/vudroid/core/DocumentView;->post(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method

.method public zoomChanged(FF)V
    .locals 4
    .parameter "newZoom"
    .parameter "oldZoom"

    .prologue
    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/vudroid/core/DocumentView;->inZoom:Z

    .line 164
    invoke-direct {p0}, Lorg/vudroid/core/DocumentView;->stopScroller()V

    .line 165
    div-float v0, p1, p2

    .line 166
    .local v0, ratio:F
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->invalidatePageSizes()V

    .line 168
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 169
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 167
    invoke-virtual {p0, v1, v2}, Lorg/vudroid/core/DocumentView;->scrollTo(II)V

    .line 170
    invoke-virtual {p0}, Lorg/vudroid/core/DocumentView;->postInvalidate()V

    .line 171
    return-void
.end method
