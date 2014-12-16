.class public abstract Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .parameter "context"
    .parameter

    .prologue
    .line 80
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .line 85
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, animStyle:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    return-void
.end method

.method private addIndicatorViews()V
    .locals 9

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v8, 0x0

    const v7, 0x7f0c00df

    const/4 v6, -0x2

    .line 336
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 337
    .local v0, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 339
    .local v2, refreshableViewWrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-nez v3, :cond_2

    .line 341
    new-instance v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    .line 342
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 344
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 345
    const/16 v3, 0x35

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-nez v3, :cond_3

    .line 356
    new-instance v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    .line 357
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 359
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 360
    const/16 v3, 0x55

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 361
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 348
    :cond_2
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 351
    iput-object v8, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 366
    iput-object v8, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    goto :goto_1
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "lp"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, newLp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #newLp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .restart local v0       #newLp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 49
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 51
    .restart local p0
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .prologue
    .line 371
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 375
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 377
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    :cond_0
    const-string/jumbo v2, "PullToRefresh"

    const-string/jumbo v4, "isFirstItemVisible. Empty View."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 400
    :goto_0
    return v2

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    .line 393
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, firstVisibleChild:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 395
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1           #firstVisibleChild:Landroid/view/View;
    :cond_3
    move v2, v4

    .line 400
    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 10

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 404
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 406
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 408
    :cond_0
    const-string/jumbo v5, "PullToRefresh"

    const-string/jumbo v7, "isLastItemVisible. Empty View."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 436
    :goto_0
    return v5

    .line 412
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 413
    .local v2, lastItemPosition:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 416
    .local v4, lastVisiblePosition:I
    const-string/jumbo v5, "PullToRefresh"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "isLastItemVisible. Last Item Position: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Last Visible Pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 417
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 416
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    .line 428
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 429
    .local v1, childIndex:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 430
    .local v3, lastVisibleChild:Landroid/view/View;
    if-eqz v3, :cond_3

    .line 431
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1           #childIndex:I
    .end local v3           #lastVisibleChild:Landroid/view/View;
    :cond_3
    move v5, v7

    .line 436
    goto :goto_0
.end method

.method private removeIndicatorViews()V
    .locals 3

    .prologue
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v2, 0x0

    .line 440
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 442
    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 447
    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    .line 449
    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .prologue
    .line 452
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->show()V

    .line 464
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->show()V

    .line 475
    :cond_1
    :goto_1
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->hide()V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->hide()V

    goto :goto_1
.end method


# virtual methods
.method public getShowIndicator()Z
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 304
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 305
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .line 312
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 308
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 248
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    .line 250
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshing(Z)V
    .locals 1
    .parameter "doScroll"

    .prologue
    .line 266
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    .line 268
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 271
    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 275
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    .line 277
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 294
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onReset()V

    .line 296
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 299
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 107
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const-string/jumbo v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "First Visible: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Visible Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string/jumbo v2, ". Total Items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    .line 116
    if-lez p4, :cond_3

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 128
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 317
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 318
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 321
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "state"

    .prologue
    .line 135
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 142
    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 153
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 154
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .parameter "newEmptyView"

    .prologue
    .line 170
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 172
    .local v2, refreshableViewWrapper:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    .line 175
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 178
    .local v1, newEmptyViewParent:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #newEmptyViewParent:Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 185
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 197
    :goto_1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    .line 198
    return-void

    .line 188
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    .local p1, listener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    .line 214
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 217
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 218
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .parameter "doScroll"

    .prologue
    .line 221
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 222
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 1
    .parameter "showIndicator"

    .prologue
    .line 233
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 235
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method

.method protected updateUIForMode()V
    .locals 1

    .prologue
    .line 325
    .local p0, this:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 328
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    goto :goto_0
.end method
