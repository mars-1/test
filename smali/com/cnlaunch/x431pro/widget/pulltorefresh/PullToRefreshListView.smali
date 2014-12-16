.class public Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
.super Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;,
        Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I


# instance fields
.field private mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

.field private mListViewExtrasEnabled:Z

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

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
    sput-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode:[I

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
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .parameter "context"
    .parameter

    .prologue
    .line 55
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter

    .prologue
    .line 59
    .local p2, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    .local p3, style:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;"
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 60
    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 210
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    .local v0, lv:Landroid/widget/ListView;
    :goto_0
    return-object v0

    .line 212
    .end local v0           #lv:Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0       #lv:Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 3
    .parameter "includeStart"
    .parameter "includeEnd"

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v1

    .line 193
    .local v1, proxy:Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 196
    .local v0, mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 199
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 204
    .end local v0           #mode:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;"
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    .line 222
    .local v0, lv:Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 223
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 7
    .parameter "a"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 228
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 230
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    .line 232
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_0

    .line 233
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 234
    const/4 v3, -0x2

    .line 233
    invoke-direct {v1, v2, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 237
    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, frame:Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 239
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 243
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    .line 244
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->createLoadingLayout(Landroid/content/Context;Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 245
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 256
    .end local v0           #frame:Landroid/widget/FrameLayout;
    .end local v1           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 9
    .parameter "doScroll"

    .prologue
    const/4 v8, 0x0

    .line 73
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 74
    .local v0, adapter:Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 79
    :cond_2
    invoke-super {p0, v8}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 84
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 96
    .local v3, origLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 97
    .local v1, listViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 98
    .local v2, oppositeListViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v5, 0x0

    .line 99
    .local v5, selection:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .line 104
    .local v4, scrollToY:I
    :goto_1
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 105
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->hideAllViews()V

    .line 108
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 112
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    .line 114
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V

    .line 120
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 124
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 127
    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->smoothScrollTo(I)V

    goto :goto_0

    .line 87
    .end local v1           #listViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2           #oppositeListViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .end local v3           #origLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .end local v4           #scrollToY:I
    .end local v5           #selection:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 88
    .restart local v3       #origLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 89
    .restart local v1       #listViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 90
    .restart local v2       #oppositeListViewLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 91
    .restart local v5       #selection:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .line 92
    .restart local v4       #scrollToY:I
    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 136
    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-nez v5, :cond_0

    .line 137
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    .line 187
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->$SWITCH_TABLE$com$cnlaunch$x431pro$widget$pulltorefresh$PullToRefreshBase$Mode()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 157
    .local v1, originalLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 158
    .local v0, listViewLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .line 159
    .local v3, scrollToHeight:I
    const/4 v4, 0x0

    .line 160
    .local v4, selection:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_3

    .line 166
    .local v2, scrollLvToEdge:Z
    :goto_1
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->showInvisibleViews()V

    .line 172
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 179
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getState()Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    .line 180
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 186
    :cond_1
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    goto :goto_0

    .line 148
    .end local v0           #listViewLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .end local v1           #originalLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2           #scrollLvToEdge:Z
    .end local v3           #scrollToHeight:I
    .end local v4           #selection:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 149
    .restart local v1       #originalLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;

    .line 150
    .restart local v0       #listViewLoadingLayout:Lcom/cnlaunch/x431pro/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 151
    .restart local v4       #selection:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .line 152
    .restart local v3       #scrollToHeight:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_2

    .line 153
    .restart local v2       #scrollLvToEdge:Z
    :goto_2
    goto :goto_1

    .end local v2           #scrollLvToEdge:Z
    :cond_2
    move v2, v6

    .line 152
    goto :goto_2

    :cond_3
    move v2, v6

    .line 160
    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 341
    return-void
.end method
