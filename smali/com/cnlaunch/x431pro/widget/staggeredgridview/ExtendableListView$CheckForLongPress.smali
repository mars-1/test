.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;
.super Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 155
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$2(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v5

    .line 156
    .local v5, motionPosition:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 158
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$2(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v4

    .line 159
    .local v4, longPressPosition:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v6, v6, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mMotionPosition:I
    invoke-static {v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$2(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget v8, v8, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 161
    .local v2, longPressId:J
    const/4 v1, 0x0

    .line 162
    .local v1, handled:Z
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$3(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 163
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget v7, v7, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int/2addr v7, v4

    #calls: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->performLongPress(Landroid/view/View;IJ)Z
    invoke-static {v6, v0, v7, v2, v3}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$4(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;IJ)Z

    move-result v1

    .line 165
    :cond_0
    if-eqz v1, :cond_2

    .line 166
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v6, v9}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 167
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v6, v9}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 168
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 174
    .end local v1           #handled:Z
    .end local v2           #longPressId:J
    .end local v4           #longPressPosition:I
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v1       #handled:Z
    .restart local v2       #longPressId:J
    .restart local v4       #longPressPosition:I
    :cond_2
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$CheckForLongPress;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v7, 0x5

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    goto :goto_0
.end method
