.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ExpandableListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .parameter "context"
    .parameter

    .prologue
    .line 39
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .line 43
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, style:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ExpandableListView;
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 55
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    .local v0, lv:Landroid/widget/ExpandableListView;
    :goto_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    .line 62
    return-object v0

    .line 57
    .end local v0           #lv:Landroid/widget/ExpandableListView;
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #lv:Landroid/widget/ExpandableListView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
