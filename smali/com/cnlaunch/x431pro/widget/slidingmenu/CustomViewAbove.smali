.class public Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;,
        Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field protected mActivePointerId:I

.field private mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "isAbove"

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 92
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchMode:I

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollX:F

    .line 856
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorEnabled:Z

    .line 163
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->initCustomViewAbove()V

    .line 164
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 548
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 549
    .local v0, needPopulate:Z
    if-eqz v0, :cond_2

    .line 551
    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 552
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 553
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v1

    .line 554
    .local v1, oldX:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v2

    .line 555
    .local v2, oldY:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 556
    .local v3, x:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 557
    .local v4, y:I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 560
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 561
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    .line 562
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;->onOpened()V

    .line 568
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 569
    return-void

    .line 564
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    .line 565
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private determineTargetPage(FII)I
    .locals 3
    .parameter "pageOffset"
    .parameter "velocity"
    .parameter "deltaX"

    .prologue
    .line 824
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    .line 825
    .local v0, targetPage:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    .line 826
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 827
    add-int/lit8 v0, v0, -0x1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 828
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 829
    add-int/lit8 v0, v0, 0x1

    .line 831
    goto :goto_0

    .line 832
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 920
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 921
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    .line 922
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 924
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 928
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .parameter "ev"
    .parameter "id"

    .prologue
    const/4 v1, -0x1

    .line 611
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 612
    .local v0, activePointerIndex:I
    if-ne v0, v1, :cond_0

    .line 613
    iput v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 614
    :cond_0
    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getSelectedTop()I
    .locals 3

    .prologue
    .line 893
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 894
    .local v0, y:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 895
    return v0
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 340
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 341
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 345
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 341
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 342
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onDrawMenuSelector(Landroid/graphics/Canvas;F)V
    .locals 7
    .parameter "canvas"
    .parameter "openPercent"

    .prologue
    .line 862
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    const v4, 0x7f0c0030

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 864
    .local v2, tag:Ljava/lang/String;
    const-string/jumbo v3, "CustomViewAboveSelectedView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getContentLeft()I

    move-result v1

    .line 866
    .local v1, right:I
    int-to-float v3, v1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 868
    .local v0, left:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 869
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getHeight()I

    move-result v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 870
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v4, v0

    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getSelectedTop()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 874
    .end local v0           #left:I
    .end local v1           #right:I
    .end local v2           #tag:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 905
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 906
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 907
    .local v1, pointerId:I
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 910
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 911
    .local v0, newPointerIndex:I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 912
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 913
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 914
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 917
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 910
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)V
    .locals 6
    .parameter "xpos"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getWidth()I

    move-result v3

    .line 519
    .local v3, widthWithMargin:I
    div-int v2, p1, v3

    .line 520
    .local v2, position:I
    rem-int v1, p1, v3

    .line 521
    .local v1, offsetPixels:I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .line 523
    .local v0, offset:F
    invoke-virtual {p0, v2, v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->onPageScrolled(IFI)V

    .line 524
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 932
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollingCacheEnabled:Z

    .line 943
    :cond_0
    return-void
.end method

.method private thisSlideAllowed(F)Z
    .locals 2
    .parameter "dx"

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, allowed:Z
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    .line 607
    :goto_0
    return v0

    .line 603
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 583
    .local v0, x:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;II)Z

    move-result v1

    .line 595
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 586
    :cond_1
    iget v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 592
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    .line 588
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1019
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1020
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1022
    :cond_0
    const/4 v1, 0x0

    .line 1024
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1026
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 1027
    if-ne p1, v4, :cond_3

    .line 1028
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 1045
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1046
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->playSoundEffect(I)V

    .line 1048
    :cond_2
    return v1

    .line 1029
    :cond_3
    if-ne p1, v5, :cond_1

    .line 1032
    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 1033
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->pageRight()Z

    move-result v1

    .line 1034
    goto :goto_0

    .line 1035
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 1038
    goto :goto_0

    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 1040
    :cond_6
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->pageLeft()Z

    move-result v1

    .line 1041
    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1043
    :cond_8
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 957
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 958
    check-cast v7, Landroid/view/ViewGroup;

    .line 959
    .local v7, group:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 960
    .local v9, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 961
    .local v10, scrollY:I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 963
    .local v6, count:I
    add-int/lit8 v8, v6, -0x1

    .local v8, i:I
    :goto_0
    if-gez v8, :cond_1

    .line 974
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_0
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 964
    .restart local v6       #count:I
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #i:I
    .restart local v9       #scrollX:I
    .restart local v10       #scrollY:I
    :cond_1
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 965
    .local v1, child:Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 966
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_2

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 967
    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    .line 968
    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 967
    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    .line 968
    if-eqz v0, :cond_2

    .line 969
    const/4 v0, 0x1

    goto :goto_1

    .line 963
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 974
    .end local v1           #child:Landroid/view/View;
    .end local v6           #count:I
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #i:I
    .end local v9           #scrollX:I
    .end local v10           #scrollY:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 495
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 496
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v0

    .line 498
    .local v0, oldX:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v1

    .line 499
    .local v1, oldY:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 500
    .local v2, x:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 502
    .local v3, y:I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 503
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 504
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->pageScrolled(I)V

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->invalidate()V

    .line 515
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_0
    return-void

    .line 514
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 843
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 845
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 847
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 850
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 981
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 307
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 308
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 309
    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 995
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1015
    :cond_0
    :goto_0
    return v0

    .line 997
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 998
    goto :goto_0

    .line 1000
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1001
    goto :goto_0

    .line 1003
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1006
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    .line 1008
    goto :goto_0

    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 995
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildWidth(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_0

    .line 363
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 359
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_0

    .line 320
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 316
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    .line 167
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setWillNotDraw(Z)V

    .line 168
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setDescendantFocusability(I)V

    .line 169
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setFocusable(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    .line 172
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 173
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchSlop:I

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mMinimumVelocity:I

    .line 175
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mMaximumVelocity:I

    .line 176
    new-instance v3, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$2;-><init>(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setInternalPageChangeListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .local v2, density:F
    const/high16 v3, 0x41c8

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mFlingDistance:I

    .line 194
    return-void
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    .line 336
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const v13, 0xff00

    const/4 v11, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 621
    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    if-nez v10, :cond_0

    .line 686
    :goto_0
    return v8

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    and-int/lit16 v0, v10, 0xff

    .line 629
    .local v0, action:I
    const/4 v10, 0x3

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    .line 630
    if-eqz v0, :cond_2

    iget-boolean v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v10, :cond_2

    .line 631
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->endDrag()V

    goto :goto_0

    .line 635
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 679
    :cond_3
    :goto_1
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v8, :cond_5

    .line 680
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_4

    .line 681
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 683
    :cond_4
    iget-object v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 686
    :cond_5
    iget-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    goto :goto_0

    .line 637
    :sswitch_0
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 638
    .local v1, activePointerId:I
    if-eq v1, v11, :cond_3

    .line 641
    invoke-direct {p0, p1, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 642
    .local v3, pointerIndex:I
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    if-eq v8, v11, :cond_3

    .line 644
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 645
    .local v4, x:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    sub-float v2, v4, v8

    .line 646
    .local v2, dx:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 647
    .local v5, xDiff:F
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 648
    .local v6, y:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 650
    .local v7, yDiff:F
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_6

    cmpl-float v8, v5, v7

    if-lez v8, :cond_6

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 652
    iput-boolean v9, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 653
    iput v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 654
    invoke-direct {p0, v9}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 655
    :cond_6
    iget v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    .line 656
    iput-boolean v9, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .line 661
    .end local v1           #activePointerId:I
    .end local v2           #dx:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    .end local v5           #xDiff:F
    .end local v6           #y:F
    .end local v7           #yDiff:F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x8

    if-lt v11, v12, :cond_7

    .line 662
    :cond_7
    and-int/2addr v10, v13

    .line 661
    iput v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 663
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    iput v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    iput v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 664
    iget v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    iput v10, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionY:F

    .line 665
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 666
    iput-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 667
    iput-boolean v8, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    .line 668
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    .line 669
    goto/16 :goto_0

    .line 671
    :cond_8
    iput-boolean v9, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 675
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 635
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 480
    sub-int v1, p4, p2

    .line 481
    .local v1, width:I
    sub-int v0, p5, p3

    .line 482
    .local v0, height:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 483
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 456
    invoke-static {v4, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .line 457
    .local v3, width:I
    invoke-static {v4, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .line 458
    .local v2, height:I
    invoke-virtual {p0, v3, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setMeasuredDimension(II)V

    .line 460
    invoke-static {p1, v4, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .line 461
    .local v1, contentWidth:I
    invoke-static {p2, v4, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .line 462
    .local v0, contentHeight:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 463
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "offset"
    .parameter "offsetPixels"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 545
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 467
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 469
    if-eq p1, p3, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 474
    iget v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 476
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 694
    const/16 v23, 0x0

    .line 810
    :goto_0
    return v23

    .line 696
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 697
    const/16 v23, 0x0

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 701
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 702
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 704
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 706
    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 810
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    .line 712
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 716
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    goto :goto_1

    .line 719
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 720
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 721
    .local v14, pointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 724
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 725
    .local v19, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v7, v19, v23

    .line 726
    .local v7, dx:F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 727
    .local v20, xDiff:F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v21

    .line 728
    .local v21, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 730
    .local v22, yDiff:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-lez v23, :cond_4

    cmpl-float v23, v20, v22

    if-lez v23, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->thisSlideAllowed(F)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 732
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    .line 733
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 734
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 737
    .end local v7           #dx:F
    .end local v14           #pointerIndex:I
    .end local v19           #x:F
    .end local v20           #xDiff:F
    .end local v21           #y:F
    .end local v22           #yDiff:F
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 740
    .local v5, activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 743
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 744
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v6, v23, v19

    .line 745
    .local v6, deltaX:F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v12, v0

    .line 747
    .local v12, oldScrollX:F
    add-float v16, v12, v6

    .line 748
    .local v16, scrollX:F
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getLeftBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v10, v0

    .line 749
    .local v10, leftBound:F
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getRightBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    .line 750
    .local v15, rightBound:F
    cmpg-float v23, v16, v10

    if-gez v23, :cond_6

    .line 751
    move/from16 v16, v10

    .line 756
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v16, v24

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 757
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->scrollTo(II)V

    .line 758
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .line 752
    :cond_6
    cmpl-float v23, v16, v15

    if-lez v23, :cond_5

    .line 753
    move/from16 v16, v15

    goto :goto_2

    .line 762
    .end local v5           #activePointerIndex:I
    .end local v6           #deltaX:F
    .end local v10           #leftBound:F
    .end local v12           #oldScrollX:F
    .end local v15           #rightBound:F
    .end local v16           #scrollX:F
    .end local v19           #x:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 764
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 766
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    .line 765
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v9, v0

    .line 767
    .local v9, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v16

    .line 771
    .local v16, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v23

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v13, v23, v24

    .line 772
    .local v13, pageOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 773
    .restart local v5       #activePointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 774
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 775
    .restart local v19       #x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 776
    .local v17, totalDelta:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v9, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .line 777
    .local v11, nextPage:I
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 781
    .end local v11           #nextPage:I
    .end local v17           #totalDelta:I
    .end local v19           #x:F
    :goto_3
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 779
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .line 783
    .end local v5           #activePointerIndex:I
    .end local v9           #initialVelocity:I
    .end local v13           #pageOffset:F
    .end local v16           #scrollX:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 785
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 789
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 791
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    .line 796
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 797
    .local v8, index:I
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 798
    .restart local v19       #x:F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    .line 799
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .line 803
    .end local v8           #index:I
    .end local v19           #x:F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 805
    .restart local v14       #pointerIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 807
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1052
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    .line 1053
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1060
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    .line 1061
    iget v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItem(IZ)V

    .line 1064
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 815
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 816
    int-to-float v0, p1

    iput v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrollX:F

    .line 817
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    .line 821
    :cond_0
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 489
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 488
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 490
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->removeView(Landroid/view/View;)V

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    .line 442
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->addView(Landroid/view/View;)V

    .line 443
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter "item"

    .prologue
    .line 204
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 205
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    .line 215
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .line 223
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 226
    if-nez p3, :cond_0

    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    .line 227
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 248
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    .line 233
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .line 234
    .local v1, dispatchSelected:Z
    :goto_1
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    .line 235
    iget v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .line 236
    .local v0, destX:I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 239
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    .line 242
    :cond_2
    if-eqz p2, :cond_4

    .line 243
    invoke-virtual {p0, v0, v2, p4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_3
    move v1, v2

    .line 233
    goto :goto_1

    .line 245
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_4
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 246
    invoke-virtual {p0, v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;)V
    .locals 0
    .parameter "cvb"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mCustomViewBehind:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewBehind;

    .line 451
    return-void
.end method

.method setInternalPageChangeListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;)Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .parameter "listener"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 284
    .local v0, oldListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mInternalPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 285
    return-object v0
.end method

.method public setOnClosedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

    .line 274
    return-void
.end method

.method public setOnOpenedListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

    .line 270
    return-void
.end method

.method public setOnPageChangeListener(Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOnPageChangeListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove$OnPageChangeListener;

    .line 258
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f0c0030

    .line 881
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 883
    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    .line 885
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 886
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    .line 887
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectedView:Landroid/view/View;

    const-string/jumbo v1, "CustomViewAboveSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 888
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->invalidate()V

    .line 890
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 899
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 900
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->refreshDrawableState()V

    .line 901
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mSelectorEnabled:Z

    .line 878
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mEnabled:Z

    .line 373
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 574
    iput p1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mTouchMode:I

    .line 575
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->smoothScrollTo(III)V

    .line 383
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "velocity"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 395
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollX()I

    move-result v2

    .line 399
    .local v2, sx:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getScrollY()I

    move-result v3

    .line 400
    .local v3, sy:I
    sub-int v4, p1, v2

    .line 401
    .local v4, dx:I
    sub-int v5, p2, v3

    .line 402
    .local v5, dy:I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->completeScroll()V

    .line 404
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mOpenedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mClosedListener:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    .line 414
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScrolling:Z

    .line 417
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .line 418
    .local v11, width:I
    div-int/lit8 v9, v11, 0x2

    .line 419
    .local v9, halfWidth:I
    const/high16 v1, 0x3f80

    const/high16 v12, 0x3f80

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 420
    .local v8, distanceRatio:F
    int-to-float v1, v9

    int-to-float v12, v9

    .line 421
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 420
    add-float v7, v1, v12

    .line 423
    .local v7, distance:F
    const/4 v6, 0x0

    .line 424
    .local v6, duration:I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 425
    if-lez p3, :cond_4

    .line 426
    const/high16 v1, 0x447a

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 432
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 434
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 435
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/CustomViewAbove;->invalidate()V

    goto :goto_0

    .line 428
    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .line 429
    .local v10, pageDelta:F
    const/high16 v1, 0x3f80

    add-float/2addr v1, v10

    const/high16 v12, 0x42c8

    mul-float/2addr v1, v12

    float-to-int v6, v1

    .line 430
    const/16 v6, 0x258

    goto :goto_1
.end method
