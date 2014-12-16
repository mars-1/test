.class Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mResIdOfDynamicTouchChild:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$0(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mDynamicTouchChildTouched:Z
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$1(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Z)V

    .line 182
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$1;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->makeCellMobile()V
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$2(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)V

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
