.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isFirstItem:Z

.field private isLastItem:Z

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 608
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isLastItem:Z

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 634
    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isFirstItem:Z

    if-eqz v5, :cond_3

    .line 635
    if-ne p2, v4, :cond_2

    move v3, v4

    .line 636
    .local v3, onSecondItemList:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 637
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 646
    .end local v3           #onSecondItemList:Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isLastItem:Z

    if-eqz v5, :cond_6

    .line 647
    add-int v5, p2, p3

    add-int/lit8 v6, p4, -0x1

    if-ne v5, v6, :cond_5

    move v0, v4

    .line 648
    .local v0, onBeforeLastItemList:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 649
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isLastItem:Z

    .line 658
    .end local v0           #onBeforeLastItemList:Z
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    .line 635
    goto :goto_0

    .line 640
    :cond_3
    if-nez p2, :cond_4

    move v1, v4

    .line 641
    .local v1, onFirstItemList:Z
    :goto_4
    if-eqz v1, :cond_0

    .line 642
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isFirstItem:Z

    .line 643
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onFirstListItem()V

    goto :goto_1

    .end local v1           #onFirstItemList:Z
    :cond_4
    move v1, v2

    .line 640
    goto :goto_4

    :cond_5
    move v0, v2

    .line 647
    goto :goto_2

    .line 652
    :cond_6
    add-int v5, p2, p3

    if-lt v5, p4, :cond_7

    move v2, v4

    .line 653
    .local v2, onLastItemList:Z
    :cond_7
    if-eqz v2, :cond_1

    .line 654
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->isLastItem:Z

    .line 655
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onLastListItem()V

    goto :goto_3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "absListView"
    .parameter "scrollState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 612
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    if-eq p2, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 613
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeClosesAllItemsWhenListMoves:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$5(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 616
    :cond_0
    if-ne p2, v1, :cond_1

    .line 617
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #setter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->listViewMoving:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$6(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;Z)V

    .line 618
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->setEnabled(Z)V

    .line 620
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_2

    .line 621
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #setter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->listViewMoving:Z
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$6(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;Z)V

    .line 622
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    const/4 v1, -0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->downPosition:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$7(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;I)V

    .line 623
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->resetScrolling()V

    .line 624
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7$1;-><init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$7;)V

    .line 628
    const-wide/16 v2, 0x1f4

    .line 624
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 612
    goto :goto_0
.end method
