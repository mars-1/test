.class public Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;
.super Ljava/lang/Object;
.source "ZoomAnimation.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/Animation;


# instance fields
.field private animationLengthMS:J

.field private firstFrame:Z

.field private scaleDiff:F

.field private startScale:F

.field private startX:F

.field private startY:F

.field private totalTime:J

.field private touchX:F

.field private touchY:F

.field private xDiff:F

.field private yDiff:F

.field private zoom:F

.field private zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->firstFrame:Z

    .line 42
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->animationLengthMS:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->totalTime:J

    .line 25
    return-void
.end method


# virtual methods
.method public getAnimationLengthMS()J
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->animationLengthMS:J

    return-wide v0
.end method

.method public getTouchX()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchX:F

    return v0
.end method

.method public getTouchY()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchY:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoom:F

    return v0
.end method

.method public getZoomAnimationListener()Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->firstFrame:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->totalTime:J

    .line 126
    return-void
.end method

.method public setAnimationLengthMS(J)V
    .locals 0
    .parameter "animationLengthMS"

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->animationLengthMS:J

    .line 158
    return-void
.end method

.method public setTouchX(F)V
    .locals 0
    .parameter "touchX"

    .prologue
    .line 141
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchX:F

    .line 142
    return-void
.end method

.method public setTouchY(F)V
    .locals 0
    .parameter "touchY"

    .prologue
    .line 149
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchY:F

    .line 150
    return-void
.end method

.method public setZoom(F)V
    .locals 0
    .parameter "zoom"

    .prologue
    .line 133
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoom:F

    .line 134
    return-void
.end method

.method public setZoomAnimationListener(Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;)V
    .locals 0
    .parameter "zoomAnimationListener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    .line 166
    return-void
.end method

.method public update(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;J)Z
    .locals 11
    .parameter "view"
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 52
    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->firstFrame:Z

    if-eqz v7, :cond_0

    .line 53
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->firstFrame:Z

    .line 55
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageX()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    .line 56
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageY()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    .line 57
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getScale()F

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startScale:F

    .line 58
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoom:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startScale:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->scaleDiff:F

    .line 60
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->scaleDiff:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    .line 62
    new-instance v5, Lcom/cnlaunch/x431pro/widget/polites/VectorF;

    invoke-direct {v5}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;-><init>()V

    .line 65
    .local v5, vector:Lcom/cnlaunch/x431pro/widget/polites/VectorF;
    new-instance v7, Landroid/graphics/PointF;

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchX:F

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->touchY:F

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->setStart(Landroid/graphics/PointF;)V

    .line 66
    new-instance v7, Landroid/graphics/PointF;

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    iget v9, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v7}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->setEnd(Landroid/graphics/PointF;)V

    .line 68
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->calculateAngle()F

    .line 71
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->calculateLength()F

    move-result v0

    .line 74
    .local v0, length:F
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoom:F

    mul-float/2addr v7, v0

    iput v7, v5, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->length:F

    .line 77
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->calculateEndPoint()V

    .line 79
    iget-object v7, v5, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->xDiff:F

    .line 80
    iget-object v7, v5, Lcom/cnlaunch/x431pro/widget/polites/VectorF;->end:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->yDiff:F

    .line 89
    .end local v0           #length:F
    .end local v5           #vector:Lcom/cnlaunch/x431pro/widget/polites/VectorF;
    :cond_0
    :goto_0
    iget-wide v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->totalTime:J

    add-long/2addr v7, p2

    iput-wide v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->totalTime:J

    .line 91
    iget-wide v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->totalTime:J

    long-to-float v7, v7

    iget-wide v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->animationLengthMS:J

    long-to-float v8, v8

    div-float v4, v7, v8

    .line 93
    .local v4, ratio:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .line 95
    cmpl-float v6, v4, v10

    if-lez v6, :cond_1

    .line 97
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->scaleDiff:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startScale:F

    add-float v1, v6, v7

    .line 98
    .local v1, newScale:F
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->xDiff:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    add-float v2, v6, v7

    .line 99
    .local v2, newX:F
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->yDiff:F

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    add-float v3, v6, v7

    .line 101
    .local v3, newY:F
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    if-eqz v6, :cond_1

    .line 102
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    invoke-interface {v6, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;->onZoom(FFF)V

    .line 106
    .end local v1           #newScale:F
    .end local v2           #newX:F
    .end local v3           #newY:F
    :cond_1
    const/4 v6, 0x1

    .line 119
    :cond_2
    :goto_1
    return v6

    .line 84
    .end local v4           #ratio:F
    :cond_3
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getCenterX()F

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->xDiff:F

    .line 85
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getCenterY()F

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->yDiff:F

    goto :goto_0

    .line 110
    .restart local v4       #ratio:F
    :cond_4
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->scaleDiff:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startScale:F

    add-float v1, v7, v8

    .line 111
    .restart local v1       #newScale:F
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->xDiff:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startX:F

    add-float v2, v7, v8

    .line 112
    .restart local v2       #newX:F
    iget v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->yDiff:F

    iget v8, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->startY:F

    add-float v3, v7, v8

    .line 114
    .restart local v3       #newY:F
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    invoke-interface {v7, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;->onZoom(FFF)V

    .line 116
    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimation;->zoomAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;

    invoke-interface {v7}, Lcom/cnlaunch/x431pro/widget/polites/ZoomAnimationListener;->onComplete()V

    goto :goto_1
.end method
