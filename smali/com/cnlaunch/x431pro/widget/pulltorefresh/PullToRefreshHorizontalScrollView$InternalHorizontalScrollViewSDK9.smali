.class final Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;
.super Landroid/widget/HorizontalScrollView;
.source "PullToRefreshHorizontalScrollView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalHorizontalScrollViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView;

    .line 83
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 109
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 8
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 90
    invoke-super/range {p0 .. p9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    .line 94
    .local v7, returnValue:Z
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView;

    .line 95
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getScrollRange()I

    move-result v5

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v6, p9

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    .line 97
    return v7
.end method
