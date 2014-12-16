.class Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;
.super Ljava/lang/Object;
.source "ExtendableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->onTouchUpTap(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

.field private final synthetic val$child:Landroid/view/View;

.field private final synthetic val$performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;Landroid/view/View;Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->val$performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1065
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1066
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->setPressed(Z)V

    .line 1067
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mDataChanged:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$3(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->val$performClick:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->post(Ljava/lang/Runnable;)Z

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->mTouchMode:I
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;->access$5(Lcom/cnlaunch/x431pro/widget/staggeredgridview/ExtendableListView;I)V

    .line 1071
    return-void
.end method
