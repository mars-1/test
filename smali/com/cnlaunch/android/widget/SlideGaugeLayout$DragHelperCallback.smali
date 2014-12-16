.class Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SlideGaugeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/android/widget/SlideGaugeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;-><init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .parameter "child"
    .parameter "left"
    .parameter "dx"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getValidLeft(Landroid/view/View;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .parameter "child"
    .parameter "top"
    .parameter "dy"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getValidTop(Landroid/view/View;I)I

    move-result v0

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
    .line 133
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    #getter for: Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;
    invoke-static {v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->access$0(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)Lcom/cnlaunch/android/widget/MeasureSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    #calls: Lcom/cnlaunch/android/widget/SlideGaugeLayout;->notifyCursorPositonChanged(Landroid/view/View;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->access$1(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Landroid/view/View;II)V

    .line 143
    :cond_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3
    .parameter "releasedChild"
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    #getter for: Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->access$2(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 149
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->updateDraggedViewPosition(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 151
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .parameter "child"
    .parameter "pointerId"

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 113
    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;->this$0:Lcom/cnlaunch/android/widget/SlideGaugeLayout;

    invoke-virtual {v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->invalidate()V

    goto :goto_0
.end method
