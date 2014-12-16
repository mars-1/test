.class public Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;
.super Ljava/lang/Object;
.source "FlingAnimation.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/polites/Animation;


# instance fields
.field private factor:F

.field private listener:Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;

.field private threshold:F

.field private velocityX:F

.field private velocityY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0x3f733333

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->factor:F

    .line 29
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->threshold:F

    .line 22
    return-void
.end method


# virtual methods
.method public setFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 68
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->factor:F

    .line 69
    return-void
.end method

.method public setListener(Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->listener:Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;

    .line 73
    return-void
.end method

.method public setVelocityX(F)V
    .locals 0
    .parameter "velocityX"

    .prologue
    .line 60
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityX:F

    .line 61
    return-void
.end method

.method public setVelocityY(F)V
    .locals 0
    .parameter "velocityY"

    .prologue
    .line 64
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityY:F

    .line 65
    return-void
.end method

.method public update(Lcom/cnlaunch/x431pro/widget/polites/GestureImageView;J)Z
    .locals 6
    .parameter "view"
    .parameter "time"

    .prologue
    .line 38
    long-to-float v4, p2

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 40
    .local v3, seconds:F
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityX:F

    mul-float v1, v4, v3

    .line 41
    .local v1, dx:F
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityY:F

    mul-float v2, v4, v3

    .line 43
    .local v2, dy:F
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityX:F

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->factor:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityX:F

    .line 44
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityY:F

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->factor:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityY:F

    .line 46
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->threshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->velocityY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->threshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v0, 0x1

    .line 48
    .local v0, active:Z
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->listener:Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->listener:Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;

    invoke-interface {v4, v1, v2}, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;->onMove(FF)V

    .line 51
    if-nez v0, :cond_0

    .line 52
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimation;->listener:Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/widget/polites/FlingAnimationListener;->onComplete()V

    .line 56
    :cond_0
    return v0

    .line 46
    .end local v0           #active:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
