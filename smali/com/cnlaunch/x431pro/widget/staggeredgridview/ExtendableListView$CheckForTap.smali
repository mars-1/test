.class final Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;
.super Ljava/lang/Object;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 852
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$6(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 853
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v4, 0x4

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 854
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$2(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 856
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v4, 0x0

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mLayoutMode:I
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$7(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 858
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$3(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 859
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->layoutChildren()V

    .line 860
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 861
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 863
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 864
    .local v2, longPressTimeout:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->isLongClickable()Z

    move-result v1

    .line 866
    .local v1, longClickable:Z
    if-eqz v1, :cond_2

    .line 867
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$8(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    move-result-object v3

    if-nez v3, :cond_0

    .line 868
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    new-instance v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;)V

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$9(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;)V

    .line 870
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$8(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 871
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mPendingCheckForLongPress:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$8(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;

    move-result-object v4

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    .end local v0           #child:Landroid/view/View;
    .end local v1           #longClickable:Z
    .end local v2           #longPressTimeout:I
    :cond_1
    :goto_0
    return-void

    .line 873
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #longClickable:Z
    .restart local v2       #longPressTimeout:I
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v3, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    goto :goto_0

    .line 876
    .end local v1           #longClickable:Z
    .end local v2           #longPressTimeout:I
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForTap;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v3, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    goto :goto_0
.end method
