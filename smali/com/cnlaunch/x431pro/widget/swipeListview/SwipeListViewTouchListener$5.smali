.class Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SwipeListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->generateDismissAnimate(Landroid/view/View;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

.field private final synthetic val$position:I

.field private final synthetic val$swap:Z

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;ZLandroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$swap:Z

    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iput p4, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$position:I

    .line 522
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$swap:Z

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->closeOpenedItems()V

    .line 527
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->val$position:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->performDismiss(Landroid/view/View;IZ)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener$5;->this$0:Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;

    #calls: Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->resetCell()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;->access$2(Lcom/cnlaunch/x431pro/widget/swipeListview/SwipeListViewTouchListener;)V

    .line 530
    return-void
.end method
