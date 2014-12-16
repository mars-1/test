.class Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    .line 698
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$4(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$5(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleMobileCellScroll()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$6(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mIsWaitingForScrollFinish:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$7(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$8(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 747
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$4(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$9(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$9(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)J

    move-result-wide v1

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$10(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V

    .line 750
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleCellSwitch()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$11(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    .line 753
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 760
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 761
    .local v0, currentLastVisibleItem:I
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 762
    .local v1, previousLastVisibleItem:I
    if-eq v0, v1, :cond_0

    .line 763
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mCellIsMobile:Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$4(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$9(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$9(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)J

    move-result-wide v3

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->updateNeighborViewsForId(J)V
    invoke-static {v2, v3, v4}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$10(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V

    .line 765
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleCellSwitch()V
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$11(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    .line 768
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, -0x1

    .line 704
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentFirstVisibleItem:I

    .line 705
    iput p3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentVisibleItemCount:I

    .line 707
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    .line 708
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    .line 710
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->checkAndHandleFirstVisibleCellChange()V

    .line 711
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->checkAndHandleLastVisibleCellChange()V

    .line 713
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    .line 714
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    .line 715
    return-void

    .line 707
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 708
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 719
    iput p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->mCurrentScrollState:I

    .line 720
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$3(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;I)V

    .line 721
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$3;->isScrollCompleted()V

    .line 722
    return-void
.end method
