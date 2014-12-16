.class final Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;
.source "PullToRefreshGridView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalGridViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 7
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
    .line 94
    invoke-super/range {p0 .. p9}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 98
    .local v6, returnValue:Z
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V

    .line 100
    return v6
.end method
