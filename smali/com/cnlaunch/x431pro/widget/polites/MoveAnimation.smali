.class public Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;
.super Ljava/lang/Object;
.source "MoveAnimation.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/Animation;


# instance fields
.field private animationTimeMS:J

.field private firstFrame:Z

.field private moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

.field private startX:F

.field private startY:F

.field private targetX:F

.field private targetY:F

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->firstFrame:Z

    .line 32
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->animationTimeMS:J

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    .line 23
    return-void
.end method


# virtual methods
.method public getAnimationTimeMS()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->animationTimeMS:J

    return-wide v0
.end method

.method public getTargetX()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetX:F

    return v0
.end method

.method public getTargetY()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetY:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->firstFrame:Z

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    .line 75
    return-void
.end method

.method public setAnimationTimeMS(J)V
    .locals 0
    .parameter "animationTimeMS"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->animationTimeMS:J

    .line 102
    return-void
.end method

.method public setMoveAnimationListener(Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;)V
    .locals 0
    .parameter "moveAnimationListener"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

    .line 106
    return-void
.end method

.method public setTargetX(F)V
    .locals 0
    .parameter "targetX"

    .prologue
    .line 84
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetX:F

    .line 85
    return-void
.end method

.method public setTargetY(F)V
    .locals 0
    .parameter "targetY"

    .prologue
    .line 93
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetY:F

    .line 94
    return-void
.end method

.method public update(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;J)Z
    .locals 8
    .parameter "view"
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    .line 44
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->firstFrame:Z

    if-eqz v4, :cond_0

    .line 45
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->firstFrame:Z

    .line 46
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageX()F

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startX:F

    .line 47
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;->getImageY()F

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startY:F

    .line 50
    :cond_0
    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    iget-wide v6, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->animationTimeMS:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 52
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->totalTime:J

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->animationTimeMS:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 54
    .local v2, ratio:F
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetX:F

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startX:F

    add-float v0, v3, v4

    .line 55
    .local v0, newX:F
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetY:F

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->startY:F

    add-float v1, v3, v4

    .line 57
    .local v1, newY:F
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

    invoke-interface {v3, v0, v1}, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;->onMove(FF)V

    .line 61
    :cond_1
    const/4 v3, 0x1

    .line 69
    .end local v0           #newX:F
    .end local v1           #newY:F
    .end local v2           #ratio:F
    :cond_2
    :goto_0
    return v3

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

    if-eqz v4, :cond_2

    .line 65
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->moveAnimationListener:Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetX:F

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimation;->targetY:F

    invoke-interface {v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/polites/MoveAnimationListener;->onMove(FF)V

    goto :goto_0
.end method
