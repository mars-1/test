.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/GridView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .parameter "context"
    .parameter

    .prologue
    .line 40
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .line 44
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, style:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/GridView;
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 56
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridViewSDK9;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .local v0, gv:Landroid/widget/GridView;
    :goto_0
    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setId(I)V

    .line 63
    return-object v0

    .line 58
    .end local v0           #gv:Landroid/widget/GridView;
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView$InternalGridView;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #gv:Landroid/widget/GridView;
    goto :goto_0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method
