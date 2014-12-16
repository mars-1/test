.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateRevealAnimate(Landroid/view/View;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

.field private final synthetic val$position:I

.field private final synthetic val$swap:Z

.field private final synthetic val$swapRight:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$swap:Z

    iput p3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    iput-boolean p4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$swapRight:Z

    .line 558
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 561
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->resetScrolling()V

    .line 562
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$swap:Z

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$3(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 564
    .local v0, aux:Z
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->opened:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$3(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    if-eqz v0, :cond_2

    .line 566
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onOpened(IZ)V

    .line 567
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$4(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$swapRight:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v0           #aux:Z
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #calls: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetCell()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$2(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    .line 573
    return-void

    .line 563
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 569
    .restart local v0       #aux:Z
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->swipeListView:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$0(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #getter for: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->openedRight:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$4(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$6;->val$position:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListView;->onClosed(IZ)V

    goto :goto_1
.end method
