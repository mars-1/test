.class Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->handleCellSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

.field private final synthetic val$deltaY:I

.field private final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field private final synthetic val$switchItemId:J

.field private final synthetic val$switchViewStartTop:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$observer:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$switchItemId:J

    iput p5, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$deltaY:I

    iput p6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$switchViewStartTop:I

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 511
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 513
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$switchItemId:J

    #calls: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->getViewForId(J)Landroid/view/View;
    invoke-static {v4, v5, v6}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$12(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;J)Landroid/view/View;

    move-result-object v2

    .line 515
    .local v2, switchView:Landroid/view/View;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->this$0:Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;

    #getter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$13(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;)I

    move-result v5

    iget v6, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$deltaY:I

    add-int/2addr v5, v6

    #setter for: Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->mTotalOffset:I
    invoke-static {v4, v5}, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;->access$14(Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView;I)V

    .line 517
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 518
    .local v3, switchViewNewTop:I
    iget v4, p0, Lcom/cnlaunch/x431pro/widget/swingAdapter/DynamicListView$4;->val$switchViewStartTop:I

    sub-int v1, v4, v3

    .line 520
    .local v1, delta:I
    int-to-float v4, v1

    invoke-static {v2, v4}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 522
    const-string/jumbo v4, "translationY"

    new-array v5, v8, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 523
    .local v0, animator:Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 524
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 526
    return v8
.end method
