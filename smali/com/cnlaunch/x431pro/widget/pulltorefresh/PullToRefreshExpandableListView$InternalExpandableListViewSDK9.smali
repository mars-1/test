.class final Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalExpandableListViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
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
    .line 93
    invoke-super/range {p0 .. p9}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 97
    .local v6, returnValue:Z
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V

    .line 100
    return v6
.end method
