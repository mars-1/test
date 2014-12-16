.class public Lcom/cnlaunch/android/widget/SlideGaugeLayout;
.super Landroid/widget/RelativeLayout;
.source "SlideGaugeLayout.java"

# interfaces
.implements Lcom/cnlaunch/android/widget/SlideGauge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;
    }
.end annotation


# static fields
.field public static final DRAG_HORIZONTAL:I = 0x0

.field public static final DRAG_VERTICAL:I = 0x1


# instance fields
.field private mChildrenMaxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenMinMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragOrientation:I

.field private mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

.field private mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragOrientation:I

    .line 43
    const/high16 v0, 0x3f80

    new-instance v1, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;-><init>(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Lcom/cnlaunch/android/widget/SlideGaugeLayout$DragHelperCallback;)V

    invoke-static {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)Lcom/cnlaunch/android/widget/MeasureSubject;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/android/widget/SlideGaugeLayout;Landroid/view/View;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->notifyCursorPositonChanged(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/android/widget/SlideGaugeLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method private layoutDraggedChildren()V
    .locals 9

    .prologue
    .line 193
    iget-object v4, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getChildCount()I

    move-result v1

    .line 196
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 207
    .end local v1           #childCount:I
    .end local v2           #i:I
    :cond_0
    return-void

    .line 198
    .restart local v1       #childCount:I
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, child:Landroid/view/View;
    iget-object v4, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 200
    .local v3, position:Landroid/graphics/Point;
    if-eqz v3, :cond_2

    .line 202
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 203
    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 202
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 196
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notifyCursorPositonChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "changedView"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/cnlaunch/android/widget/MeasureResultObserver;->notifyHorizontalCursorChanged(Lcom/cnlaunch/android/widget/MeasureSubject;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v0, v1, p0, p1, p3}, Lcom/cnlaunch/android/widget/MeasureResultObserver;->notifyVerticalCursorChanged(Lcom/cnlaunch/android/widget/MeasureSubject;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0
.end method

.method private updateChildPosition(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public forceUpdateChildPosition(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->updateChildPosition(Landroid/view/View;II)V

    .line 99
    return-void
.end method

.method public getCursorLeft(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 288
    .local v0, position:Landroid/graphics/Point;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorTop(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 294
    .local v0, position:Landroid/graphics/Point;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValidLeft(Landroid/view/View;I)I
    .locals 7
    .parameter "child"
    .parameter "left"

    .prologue
    .line 72
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const v1, 0xfffff

    .line 73
    .local v1, maxValue:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v6}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMeasureLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 74
    .local v0, leftBound:I
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 75
    .local v2, minValue:I
    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v5}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMeasureRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 76
    .local v4, rightBound:I
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    .local v3, newLeft:I
    return v3

    .line 72
    .end local v0           #leftBound:I
    .end local v1           #maxValue:I
    .end local v2           #minValue:I
    .end local v3           #newLeft:I
    .end local v4           #rightBound:I
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 74
    .restart local v0       #leftBound:I
    .restart local v1       #maxValue:I
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public getValidTop(Landroid/view/View;I)I
    .locals 7
    .parameter "child"
    .parameter "top"

    .prologue
    .line 61
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const v1, 0xfffff

    .line 62
    .local v1, maxValue:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v6}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMeasureTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 63
    .local v4, topBound:I
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 64
    .local v2, minValue:I
    :goto_1
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    invoke-interface {v5}, Lcom/cnlaunch/android/widget/MeasureSubject;->getMeasureBottom()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    .local v0, bottomBound:I
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 66
    .local v3, newTop:I
    return v3

    .line 61
    .end local v0           #bottomBound:I
    .end local v1           #maxValue:I
    .end local v2           #minValue:I
    .end local v3           #newTop:I
    .end local v4           #topBound:I
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 63
    .restart local v1       #maxValue:I
    .restart local v4       #topBound:I
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public isHorizontal()Z
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 158
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 159
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 162
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 184
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 185
    invoke-direct {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->layoutDraggedChildren()V

    .line 186
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 179
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cnlaunch/android/widget/MeasureResultObserver;->notifyCursorPanelSizeChanged(IIII)V

    .line 218
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 172
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 252
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 253
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 254
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 255
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenPositionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 246
    return-void
.end method

.method public setDragOrient(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "orientation must be DRAG_HORIZONTAL or DRAG_VERTICAL!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput p1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mDragOrientation:I

    .line 263
    return-void
.end method

.method public setMeasureResultObserver(Lcom/cnlaunch/android/widget/MeasureResultObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureObserver:Lcom/cnlaunch/android/widget/MeasureResultObserver;

    .line 56
    return-void
.end method

.method public setMeasureSubject(Lcom/cnlaunch/android/widget/MeasureSubject;)V
    .locals 0
    .parameter "measureSubject"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mMeasureSubject:Lcom/cnlaunch/android/widget/MeasureSubject;

    .line 51
    return-void
.end method

.method public setValidLeftArea(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public setValidTopArea(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMaxMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->mChildrenMinMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public updateChildVisible(IZ)V
    .locals 6
    .parameter "childId"
    .parameter "visible"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 299
    invoke-virtual {p0, p1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 304
    .local v1, positionX:I
    const/4 v2, 0x0

    .line 305
    .local v2, positionY:I
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->isHorizontal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    invoke-virtual {p0, v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getCursorLeft(Landroid/view/View;)I

    move-result v1

    .line 308
    if-eqz p2, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 311
    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 313
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getHeight()I

    move-result v3

    neg-int v2, v3

    .line 318
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p0, v0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getCursorTop(Landroid/view/View;)I

    move-result v2

    .line 325
    if-eqz p2, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 328
    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 330
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->getWidth()I

    move-result v3

    neg-int v1, v3

    .line 335
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    invoke-virtual {p0, v0, v1, v2}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->forceUpdateChildPosition(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public updateDraggedViewPosition(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 85
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 86
    .local v1, y:I
    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->updateChildPosition(Landroid/view/View;II)V

    .line 87
    invoke-direct {p0, p1, v0, v1}, Lcom/cnlaunch/android/widget/SlideGaugeLayout;->notifyCursorPositonChanged(Landroid/view/View;II)V

    .line 88
    return-void
.end method
