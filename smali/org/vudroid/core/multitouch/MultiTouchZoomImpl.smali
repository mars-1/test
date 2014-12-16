.class public Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;
.super Ljava/lang/Object;
.source "MultiTouchZoomImpl.java"

# interfaces
.implements Lorg/vudroid/core/multitouch/MultiTouchZoom;


# instance fields
.field private lastZoomDistance:F

.field private resetLastPointAfterZoom:Z

.field private final zoomModel:Lorg/vudroid/core/models/ZoomModel;


# direct methods
.method public constructor <init>(Lorg/vudroid/core/models/ZoomModel;)V
    .locals 0
    .parameter "zoomModel"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    .line 13
    return-void
.end method

.method private getZoomDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4000

    .line 36
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public isResetLastPointAfterZoom()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->resetLastPointAfterZoom:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 17
    invoke-direct {p0, p1}, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->getZoomDistance(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->lastZoomDistance:F

    .line 32
    :goto_0
    return v1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit8 v2, v2, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 21
    iput v4, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->lastZoomDistance:F

    .line 22
    iget-object v2, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v2}, Lorg/vudroid/core/models/ZoomModel;->commit()V

    .line 23
    iput-boolean v1, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->resetLastPointAfterZoom:Z

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->lastZoomDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    .line 27
    invoke-direct {p0, p1}, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->getZoomDistance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 28
    .local v0, zoomDistance:F
    iget-object v2, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    iget-object v3, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->zoomModel:Lorg/vudroid/core/models/ZoomModel;

    invoke-virtual {v3}, Lorg/vudroid/core/models/ZoomModel;->getZoom()F

    move-result v3

    mul-float/2addr v3, v0

    iget v4, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->lastZoomDistance:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/vudroid/core/models/ZoomModel;->setZoom(F)V

    .line 29
    iput v0, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->lastZoomDistance:F

    goto :goto_0

    .line 32
    .end local v0           #zoomDistance:F
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setResetLastPointAfterZoom(Z)V
    .locals 0
    .parameter "resetLastPointAfterZoom"

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/vudroid/core/multitouch/MultiTouchZoomImpl;->resetLastPointAfterZoom:Z

    .line 45
    return-void
.end method
