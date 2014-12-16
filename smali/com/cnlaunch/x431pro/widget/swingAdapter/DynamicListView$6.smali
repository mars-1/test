.class Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "DynamicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->touchEventsEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

.field private final synthetic val$mobileView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->val$mobileView:Landroid/view/View;

    .line 579
    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const-wide/16 v1, -0x1

    .line 587
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mAboveItemId:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$15(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V

    .line 588
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mMobileItemId:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$16(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V

    .line 589
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mBelowItemId:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$17(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)V

    .line 590
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->val$mobileView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    const/4 v1, 0x0

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mHoverCell:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$18(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->invalidate()V

    .line 594
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemMovedListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$19(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mOnItemMovedListener:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$19(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mLastMovedToIndex:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$20(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$OnItemMovedListener;->onItemMoved(I)V

    .line 597
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$6;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->setEnabled(Z)V

    .line 583
    return-void
.end method
