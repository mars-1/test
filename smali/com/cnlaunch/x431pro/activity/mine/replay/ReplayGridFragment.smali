.class public Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;
.super Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;
.source "ReplayGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;"
    }
.end annotation


# static fields
.field private static DS_COUNT_PER_PAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GraphGridFragment"

.field private static mChanngelChanged:Ljava/lang/Boolean;

.field private static mIsRecording:Ljava/lang/Boolean;

.field private static mIsSingleGraphVisible:Z


# instance fields
.field private mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

.field private mCurrentPageIndex:I

.field private mGridGraphContainer:Landroid/support/v4/view/ViewPager;

.field private mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

.field private mIsPaging:Z

.field private mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

.field private mLatestDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;",
            ">;"
        }
    .end annotation
.end field

.field private mPageSum:I

.field private mShowingType:Ljava/lang/String;

.field private mStreamCount:I

.field private mTimes:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0xf

    sput v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 64
    sput-boolean v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsRecording:Ljava/lang/Boolean;

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mChanngelChanged:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mMaskList:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    .line 241
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    .line 480
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    .line 54
    return-void
.end method

.method public static IsSingleGraphVisible()Z
    .locals 1

    .prologue
    .line 435
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    return v0
.end method

.method private getSingleGraphDataStreamPosition(II)I
    .locals 8
    .parameter "inComeStreamDataCount"
    .parameter "graphPosition"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, currentPosition:I
    sget v2, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 399
    .local v2, perBigPageStreamCount:I
    const/4 v0, 0x0

    .line 401
    .local v0, currentPageStreamCount:I
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mStreamCount:I

    if-ne v4, p1, :cond_0

    .line 402
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    mul-int/2addr v3, v2

    add-int v1, v3, p2

    :goto_0
    move v3, v1

    .line 430
    :goto_1
    return v3

    .line 405
    :cond_0
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 406
    if-ne p1, v2, :cond_1

    .line 407
    move v1, p2

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v4, "GraphGridFragment"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "getSingleGraphDataStreamPosition - The data source error-1!"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 414
    :cond_2
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 415
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mStreamCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v2

    sub-int v0, v4, v5

    .line 416
    if-ne p1, v0, :cond_3

    .line 417
    move v1, p2

    .line 418
    goto :goto_0

    .line 420
    :cond_3
    const-string/jumbo v4, "GraphGridFragment"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "getSingleGraphDataStreamPosition - The data source error-2!"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 425
    :cond_4
    const-string/jumbo v4, "GraphGridFragment"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "getSingleGraphDataStreamPosition - The data source error-3!"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private initIndicatorGridView()V
    .locals 6

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0151

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 173
    .local v0, indicatorGridView:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;
    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 174
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 178
    .local v2, singleWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    mul-int/2addr v3, v2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 182
    return-void
.end method

.method private initPages()V
    .locals 9

    .prologue
    .line 128
    const/4 v7, 0x0

    .line 129
    .local v7, streamSum:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 135
    :goto_0
    sget v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    rem-int v1, v7, v1

    if-lez v1, :cond_1

    sget v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    div-int v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, startIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    if-lt v2, v1, :cond_2

    .line 154
    return-void

    .line 132
    .end local v2           #i:I
    .end local v3           #startIndex:I
    :cond_0
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mStreamCount:I

    goto :goto_0

    .line 135
    :cond_1
    sget v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    div-int v1, v7, v1

    goto :goto_1

    .line 140
    .restart local v2       #i:I
    .restart local v3       #startIndex:I
    :cond_2
    sget v4, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 141
    .local v4, psCount:I
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageSum:I

    add-int/lit8 v5, v2, 0x1

    if-ne v1, v5, :cond_3

    .line 142
    sget v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    mul-int/2addr v1, v2

    sub-int v4, v7, v1

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v5, "productType"

    const-string/jumbo v8, ""

    invoke-virtual {v1, v5, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, strType:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;-><init>(Landroid/content/Context;IIILcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;Ljava/lang/String;)V

    .line 147
    .local v0, gridPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 149
    add-int/2addr v3, v4

    .line 139
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    :cond_4
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    .line 164
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 165
    .local v0, largeGraphContainer:Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setOnGraphVisibleChangedListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;)V

    .line 168
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->initIndicatorGridView()V

    .line 169
    return-void
.end method

.method private static isChanngelChanged()Z
    .locals 2

    .prologue
    .line 461
    sget-object v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mChanngelChanged:Ljava/lang/Boolean;

    monitor-enter v1

    .line 462
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mChanngelChanged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isRecording()Z
    .locals 2

    .prologue
    .line 447
    sget-object v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 448
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadPages()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;-><init>(Ljava/util/Map;)V

    .line 122
    .local v0, pageerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 123
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    return-void
.end method

.method public static setChanngelChangedStatus(Z)V
    .locals 2
    .parameter "isChanged"

    .prologue
    .line 454
    sget-object v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mChanngelChanged:Ljava/lang/Boolean;

    monitor-enter v1

    .line 455
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mChanngelChanged:Ljava/lang/Boolean;

    .line 454
    monitor-exit v1

    .line 457
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setRecordingStatus(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 440
    sget-object v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 441
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsRecording:Ljava/lang/Boolean;

    .line 440
    monitor-exit v1

    .line 443
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showData(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 231
    return-void

    .line 224
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 225
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 227
    .local v1, bdsb:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    const-string/jumbo v4, "GraphGridFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " pageData[ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ]\'s title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateCurrentPage(Ljava/util/List;J)V
    .locals 6
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const-string/jumbo v1, "GraphGridFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCurrentPage position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 203
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updatePageDataStream(Ljava/util/List;J)V

    .line 206
    :cond_0
    return-void
.end method

.method private updateCurrentPage(Ljava/util/List;JZ)V
    .locals 7
    .parameter
    .parameter "times"
    .parameter "isRecording"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;JZ)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v5, 0x0

    .line 214
    .local v5, perBigPageDataStreamCount:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 215
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    if-eqz v0, :cond_0

    .line 216
    sget v5, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 217
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mStreamCount:I

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updatePageDataStream(Ljava/util/List;JIIZ)V

    .line 219
    :cond_0
    return-void
.end method

.method private updateGridData(Ljava/util/List;J)V
    .locals 3
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;J)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    return-void

    .line 194
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 195
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updateDataStream(Ljava/util/List;J)V

    goto :goto_0
.end method


# virtual methods
.method public callBackonSetMaxMinClick()V
    .locals 3

    .prologue
    .line 576
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, setValue:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->IsSettingMaxMin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getMaxLineValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setMaxValue(F)V

    .line 580
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getMinLineValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setMinValue(F)V

    .line 585
    :cond_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->show()V

    .line 586
    return-void
.end method

.method public getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getGraphPageNum()I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 107
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->initPages()V

    .line 108
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->initView()V

    .line 109
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->loadPages()V

    .line 111
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v4, "DataStreamMask"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, dataStreamMask:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 96
    const-string/jumbo v4, "DataStreamShow_Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    .line 97
    const-string/jumbo v4, "DataStreamCurPage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    .line 98
    const-string/jumbo v4, "DataStreamCount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mStreamCount:I

    .line 101
    .end local v1           #dataStreamMask:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 90
    .restart local v1       #dataStreamMask:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, tempItem:Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mMaskList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCallKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 597
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 598
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getGraphPageNum()I

    move-result v1

    sput v1, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->DS_COUNT_PER_PAGE:I

    .line 603
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->initPages()V

    .line 604
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->initView()V

    .line 605
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->loadPages()V

    .line 607
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 609
    .local v0, position:I
    if-nez v0, :cond_2

    .line 610
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onDestroyView()V

    .line 81
    return-void
.end method

.method public onGridGraphItemClick(IILjava/util/List;)V
    .locals 8
    .parameter "startIndex"
    .parameter "offset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 528
    const-string/jumbo v2, "GraphGridFragment"

    new-array v5, v4, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onGridGraphItemClick startIndex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    move v0, p2

    .line 531
    .local v0, positionInList:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    add-int v0, p1, p2

    .line 535
    :cond_0
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, unit:Ljava/lang/String;
    const-string/jumbo v2, "pengzhe"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unit: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-static {p2}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v0, v6, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->resetGraphStyle(IIZ)V

    .line 538
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v2, :cond_1

    .line 540
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mTimes:J

    invoke-virtual {v2, p3, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    .line 544
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->show()V

    .line 545
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 546
    return-void

    :cond_2
    move v2, v4

    .line 537
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 554
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 467
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->hide()V

    .line 469
    sput-boolean v0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 470
    const/4 v0, 0x1

    .line 473
    :cond_0
    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 524
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 478
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .parameter "position"

    .prologue
    const v8, 0x7f070695

    const v7, 0x7f070694

    const/4 v6, 0x4

    .line 485
    const-string/jumbo v1, "GraphGridFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageSelected position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 496
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 498
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    if-eq v1, p1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 503
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->reset()V

    .line 506
    :cond_0
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_3

    .line 508
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v2, "34"

    const-string/jumbo v3, "9"

    invoke-interface {v1, v2, v3, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 518
    :cond_1
    :goto_1
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    .line 519
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->updateDataStreamPage(I)V

    .line 520
    return-void

    .line 500
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 501
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->unload()V

    goto :goto_0

    .line 510
    .end local v0           #page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCurrentPageIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    .line 512
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v2, "34"

    const-string/jumbo v3, "8"

    invoke-interface {v1, v2, v3, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 118
    return-void
.end method

.method public onSetMaxMin(DD)V
    .locals 1
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->SetMaxMin(DD)V

    .line 592
    :cond_0
    return-void
.end method

.method public onSingleLargeGraphVisibleChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 190
    :cond_0
    return-void
.end method

.method public setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 561
    return-void
.end method

.method public updateDataStream(JLjava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter "times"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, datas:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .local p4, latestData:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v3, 0x0

    .line 302
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->setShowingType(Ljava/lang/String;)V

    .line 309
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 310
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 311
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    .line 312
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->updateGraphDataStream(JLjava/util/List;)V

    .line 313
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    goto :goto_0

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-nez v1, :cond_3

    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 326
    :goto_2
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    if-eqz v1, :cond_3

    .line 327
    const v1, 0x7f070694

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070695

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .end local v0           #i:I
    :cond_3
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    .line 331
    :cond_4
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->updateGraphDataStream(JLjava/util/List;)V

    goto :goto_0

    .line 318
    .restart local v0       #i:I
    :cond_5
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 319
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 320
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsPaging:Z

    goto :goto_2

    .line 317
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateGraphDataStream(JLjava/util/List;)V
    .locals 8
    .parameter "times"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, datas:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 245
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mTimes:J

    .line 246
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 251
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    sput-boolean v7, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 253
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getPositon()I

    move-result v2

    .line 254
    .local v2, graphPosition:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 255
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    .line 298
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v2           #graphPosition:I
    .end local v3           #i:I
    :cond_0
    :goto_1
    return-void

    .line 249
    .restart local v1       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .restart local v3       #i:I
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_2
    sput-boolean v6, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 259
    invoke-direct {p0, v1, p1, p2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->updateGridData(Ljava/util/List;J)V

    goto :goto_1

    .line 263
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v3           #i:I
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    sput-boolean v7, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 265
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getPositon()I

    move-result v2

    .line 278
    .restart local v2       #graphPosition:I
    const/4 v0, 0x0

    .line 279
    .local v0, currentPosition:I
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 280
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getSingleGraphDataStreamPosition(II)I

    move-result v0

    .line 286
    :goto_2
    const/4 v4, -0x1

    if-eq v4, v0, :cond_0

    .line 290
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    goto :goto_1

    .line 283
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->getSingleGraphDataStreamPosition(II)I

    move-result v0

    goto :goto_2

    .line 293
    .end local v0           #currentPosition:I
    .end local v2           #graphPosition:I
    :cond_5
    sput-boolean v6, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->mIsSingleGraphVisible:Z

    .line 295
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->isRecording()Z

    move-result v4

    invoke-direct {p0, p3, p1, p2, v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;->updateCurrentPage(Ljava/util/List;JZ)V

    goto :goto_1
.end method
