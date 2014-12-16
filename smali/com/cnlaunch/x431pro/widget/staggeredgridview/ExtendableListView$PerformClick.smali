.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$WindowRunnnable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2865
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;-><init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2869
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$3(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2883
    :cond_0
    :goto_0
    return-void

    .line 2871
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v0, v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2872
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->mClickMotionPosition:I

    .line 2873
    .local v2, motionPosition:I
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mItemCount:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$11(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)I

    move-result v4

    if-lez v4, :cond_0

    .line 2874
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2875
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2876
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2878
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 2879
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget v4, v4, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mFirstPosition:I

    add-int v1, v2, v4

    .line 2880
    .local v1, clickPosition:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v4, v3, v1, v5, v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
