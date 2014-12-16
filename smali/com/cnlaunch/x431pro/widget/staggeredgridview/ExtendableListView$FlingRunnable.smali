.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;
.super Ljava/lang/Object;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 2
    .parameter

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2022
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 2041
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->endFling()V

    return-void
.end method

.method private endFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2042
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 2043
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2045
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->reportScrollStateChange(I)V

    .line 2046
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2048
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2049
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2052
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$6(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2099
    :goto_0
    return-void

    .line 2057
    :pswitch_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 2058
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 2062
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2063
    .local v4, scroller:Landroid/widget/Scroller;
    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 2064
    .local v2, more:Z
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2068
    .local v5, y:I
    iget v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mLastFlingY:I

    sub-int v1, v6, v5

    .line 2071
    .local v1, delta:I
    if-lez v1, :cond_2

    .line 2073
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget v7, v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v6, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$12(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2075
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2086
    :goto_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->moveTheChildren(II)Z
    invoke-static {v6, v1, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$13(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;II)Z

    move-result v0

    .line 2088
    .local v0, atEnd:Z
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 2089
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->invalidate()V

    .line 2090
    iput v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 2091
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V
    invoke-static {v6, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$10(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2079
    .end local v0           #atEnd:Z
    :cond_2
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 2080
    .local v3, offsetToLast:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget v7, v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v7, v3

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v6, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$12(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2083
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    neg-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 2094
    .end local v3           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 2052
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 2025
    if-gez p1, :cond_0

    move v2, v6

    .line 2026
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 2027
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2028
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2029
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v1, 0x2

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2030
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V
    invoke-static {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$10(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Ljava/lang/Runnable;)V

    .line 2031
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2025
    goto :goto_0
.end method

.method startScroll(II)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 2034
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 2035
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mLastFlingY:I

    .line 2036
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2037
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v1, 0x2

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 2038
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$FlingRunnable;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postOnAnimate(Ljava/lang/Runnable;)V
    invoke-static {v0, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$10(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Ljava/lang/Runnable;)V

    .line 2039
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 2034
    goto :goto_0
.end method
