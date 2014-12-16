.class Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;-><init>(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3
    .parameter "child"
    .parameter "top"
    .parameter "dy"

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$9(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #calls: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$10(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v1

    .line 1131
    .local v1, topBound:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v2

    add-int v0, v1, v2

    .line 1137
    .local v0, bottomBound:I
    :goto_0
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 1133
    .end local v0           #bottomBound:I
    .end local v1           #topBound:I
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    .line 1134
    .restart local v0       #bottomBound:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v2

    sub-int v1, v0, v2

    .restart local v1       #topBound:I
    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .parameter "capturedChild"
    .parameter "activePointerId"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1083
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1058
    .local v0, anchoredTop:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$3(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$5(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    if-eq v1, v2, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1062
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$6(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->dispatchOnPanelExpanded(Landroid/view/View;)V

    .line 1063
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->EXPANDED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    #setter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$7(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v1

    int-to-float v2, v0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 1066
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$5(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    if-eq v1, v2, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->updateObscuredViewVisibility()V

    .line 1068
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$6(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->dispatchOnPanelAnchored(Landroid/view/View;)V

    .line 1069
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->ANCHORED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    #setter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$7(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;)V

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$5(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    if-eq v1, v2, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$6(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->dispatchOnPanelCollapsed(Landroid/view/View;)V

    .line 1073
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    sget-object v2, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;->COLLAPSED:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;

    #setter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideState:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$7(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$SlideState;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .parameter "changedView"
    .parameter "left"
    .parameter "top"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #calls: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->onPanelDragged(I)V
    invoke-static {v0, p3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$8(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;I)V

    .line 1088
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->invalidate()V

    .line 1089
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 9
    .parameter "releasedChild"
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 1093
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$9(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #calls: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$10(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v2

    .line 1095
    .local v2, top:I
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_5

    .line 1098
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsSlidingUp:Z
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$9(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1099
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1100
    .local v1, anchoredTop:I
    int-to-float v3, v1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 1106
    .local v0, anchorOffset:F
    :goto_1
    cmpl-float v3, p3, v6

    if-gtz v3, :cond_0

    cmpl-float v3, p3, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    add-float v4, v8, v0

    div-float/2addr v4, v7

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 1107
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1116
    .end local v0           #anchorOffset:F
    .end local v1           #anchoredTop:I
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$3(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 1117
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->invalidate()V

    .line 1118
    return-void

    .line 1093
    .end local v2           #top:I
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #calls: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->getSlidingTop()I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$10(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v4

    sub-int v2, v3, v4

    goto :goto_0

    .line 1102
    .restart local v2       #top:I
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$11(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 1103
    .restart local v1       #anchoredTop:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mPanelHeight:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$11(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0       #anchorOffset:F
    goto :goto_1

    .line 1108
    :cond_4
    cmpl-float v3, p3, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    add-float v4, v8, v0

    div-float/2addr v4, v7

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    div-float v4, v0, v7

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1109
    int-to-float v3, v2

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mAnchorPoint:F
    invoke-static {v5}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$1(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 1112
    goto :goto_2

    .end local v0           #anchorOffset:F
    .end local v1           #anchoredTop:I
    :cond_5
    cmpl-float v3, p3, v6

    if-gtz v3, :cond_6

    cmpl-float v3, p3, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideOffset:F
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$4(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)F

    move-result v3

    const/high16 v4, 0x3f00

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1113
    :cond_6
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$2(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_2
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .parameter "child"
    .parameter "pointerId"

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    #getter for: Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->access$0(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
