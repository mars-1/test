.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
.source "FlipLoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I = null

.field static final FLIP_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I
    .locals 3

    .prologue
    .line 34
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8
    .parameter "context"
    .parameter
    .parameter
    .parameter "attrs"

    .prologue
    .line 41
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, scrollDirection:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 43
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p2, v0, :cond_0

    const/16 v7, -0xb4

    .line 45
    .local v7, rotateAngle:I
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 46
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 45
    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 51
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    .line 52
    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 56
    return-void

    .line 43
    .end local v7           #rotateAngle:I
    :cond_0
    const/16 v7, 0xb4

    goto :goto_0
.end method

.method private getDrawableRotationAngle()F
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, angle:F
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mMode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 126
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mScrollDirection:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_1

    .line 127
    const/high16 v0, 0x42b4

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const/high16 v0, 0x4334

    .line 131
    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mScrollDirection:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_0

    .line 135
    const/high16 v0, 0x4387

    .line 137
    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0204ae

    return v0
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "imageDrawable"

    .prologue
    const/high16 v7, 0x4000

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 62
    .local v0, dHeight:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 69
    .local v1, dWidth:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 70
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 77
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .local v3, matrix:Landroid/graphics/Matrix;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->getDrawableRotationAngle()F

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 81
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 83
    .end local v0           #dHeight:I
    .end local v1           #dWidth:I
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 0
    .parameter "scaleOfLayout"

    .prologue
    .line 88
    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    return-void
.end method

.method protected resetImpl()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    return-void
.end method
