.class final Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IIJLcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2
    .parameter
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"
    .parameter

    .prologue
    .line 1601
    .local p6, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1598
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1599
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1602
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1603
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1604
    #getter for: Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->access$0(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1605
    iput-wide p4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1606
    iput-object p6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1607
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 1616
    iget-wide v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 1617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1635
    :goto_0
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v3, v4, :cond_2

    .line 1636
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v3, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1642
    :cond_0
    :goto_1
    return-void

    .line 1625
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v3, v5

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v1, v3, v5

    .line 1626
    .local v1, normalizedTime:J
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1628
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1629
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v1

    const/high16 v6, 0x447a

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1628
    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1630
    .local v0, deltaY:I
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1631
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 1638
    .end local v0           #deltaY:I
    .end local v1           #normalizedTime:J
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v3, :cond_0

    .line 1639
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1646
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1647
    return-void
.end method
