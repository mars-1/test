.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;
.source "GraphGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;",
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

.field private static mIsRecording:Ljava/lang/Boolean;

.field private static mIsSingleGraphVisible:Z


# instance fields
.field private bLargeGraphInit:Z

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

.field private mMaxPageCount:I

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

    .line 61
    const/16 v0, 0xf

    sput v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    .line 66
    sput-boolean v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsRecording:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    .line 75
    const/16 v0, 0x23

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    .line 78
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    .line 270
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    .line 453
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    .line 56
    return-void
.end method

.method public static IsSingleGraphVisible()Z
    .locals 1

    .prologue
    .line 420
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    return v0
.end method

.method private checkDataSum()V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->show()V

    .line 178
    :cond_0
    return-void
.end method

.method private getSingleGraphDataStreamPosition(II)I
    .locals 8
    .parameter "inComeStreamDataCount"
    .parameter "graphPosition"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, currentPosition:I
    sget v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    .line 389
    .local v2, perBigPageStreamCount:I
    const/4 v0, 0x0

    .line 391
    .local v0, currentPageStreamCount:I
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    if-ne v4, p1, :cond_0

    .line 392
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    mul-int/2addr v3, v2

    add-int v1, v3, p2

    :goto_0
    move v3, v1

    .line 415
    :goto_1
    return v3

    .line 394
    :cond_0
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    .line 395
    if-ne p1, v2, :cond_1

    .line 396
    move v1, p2

    .line 397
    goto :goto_0

    .line 398
    :cond_1
    const-string/jumbo v4, "GraphGridFragment"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "getSingleGraphDataStreamPosition - The data source error-1!"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 401
    :cond_2
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 402
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v2

    sub-int v0, v4, v5

    .line 403
    if-ne p1, v0, :cond_3

    .line 404
    move v1, p2

    .line 405
    goto :goto_0

    .line 406
    :cond_3
    const-string/jumbo v4, "GraphGridFragment"

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "getSingleGraphDataStreamPosition - The data source error-2!"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 410
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
    .line 197
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d0151

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 198
    .local v0, indicatorGridView:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;
    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    invoke-direct {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 199
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 202
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 203
    .local v2, singleWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    mul-int/2addr v3, v2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 207
    return-void
.end method

.method private initPages()V
    .locals 10

    .prologue
    .line 130
    const/4 v8, 0x0

    .line 131
    .local v8, streamSum:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 137
    :goto_0
    sget v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    rem-int v1, v8, v1

    if-lez v1, :cond_1

    sget v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    div-int v1, v8, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    .line 138
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    if-le v1, v5, :cond_2

    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    .line 141
    .local v7, iMaxPageCount:I
    :goto_2
    const/4 v3, 0x0

    .line 142
    .local v3, startIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-lt v2, v7, :cond_3

    .line 159
    return-void

    .line 134
    .end local v2           #i:I
    .end local v3           #startIndex:I
    .end local v7           #iMaxPageCount:I
    :cond_0
    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    goto :goto_0

    .line 137
    :cond_1
    sget v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    div-int v1, v8, v1

    goto :goto_1

    .line 138
    :cond_2
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    goto :goto_2

    .line 143
    .restart local v2       #i:I
    .restart local v3       #startIndex:I
    .restart local v7       #iMaxPageCount:I
    :cond_3
    sget v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    .line 144
    .local v4, psCount:I
    add-int/lit8 v1, v2, 0x1

    if-ne v7, v1, :cond_4

    .line 145
    sget v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    mul-int/2addr v1, v2

    sub-int v4, v8, v1

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v5, "productType"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v5, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, strType:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;-><init>(Landroid/content/Context;IIILcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage$GridGraphItemClickCallBack;Ljava/lang/String;)V

    .line 151
    .local v0, gridPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 153
    add-int/2addr v3, v4

    .line 142
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 155
    :cond_5
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 180
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 181
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    .line 182
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 183
    .local v0, largeGraphContainer:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    if-nez v1, :cond_0

    .line 184
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    .line 185
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setOnGraphVisibleChangedListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$OnSingleLargeGraphVisibleChangeListener;)V

    .line 187
    :cond_0
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    if-le v1, v2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f07056d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 189
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    :goto_0
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    .line 191
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    if-le v1, v6, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->initIndicatorGridView()V

    .line 194
    :cond_2
    return-void

    .line 189
    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageSum:I

    goto :goto_0
.end method

.method private static isRecording()Z
    .locals 2

    .prologue
    .line 433
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 434
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 433
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
    .line 123
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;-><init>(Ljava/util/Map;)V

    .line 124
    .local v0, pageerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 127
    return-void
.end method

.method public static setRecordingStatus(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 426
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 427
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsRecording:Ljava/lang/Boolean;

    .line 426
    monitor-exit v1

    .line 429
    return-void

    .line 426
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
    .line 251
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 259
    return-void

    .line 252
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 253
    .local v0, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 255
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

    .line 253
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
    .line 225
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const-string/jumbo v1, "GraphGridFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateCurrentPage position:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 228
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updatePageDataStream(Ljava/util/List;J)V

    .line 231
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
    .line 237
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v5, 0x0

    .line 240
    .local v5, perBigPageDataStreamCount:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 241
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    if-eqz v0, :cond_0

    .line 242
    sget v5, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    .line 243
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updatePageDataStream(Ljava/util/List;JIIZ)V

    .line 245
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
    .line 219
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    return-void

    .line 219
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;

    .line 220
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;
    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GridGraphPage;->updateDataStream(Ljava/util/List;J)V

    goto :goto_0
.end method


# virtual methods
.method public callBackonSetMaxMinClick()V
    .locals 3

    .prologue
    .line 559
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;-><init>(Landroid/content/Context;)V

    .line 560
    .local v0, setValue:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;
    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setfromFragment(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;)V

    .line 561
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->IsSettingMaxMin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getMaxLineValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setMaxValue(F)V

    .line 563
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getMinLineValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->setMinValue(F)V

    .line 568
    :cond_0
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->show()V

    .line 569
    return-void
.end method

.method public getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getGraphPageNum()I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->DS_COUNT_PER_PAGE:I

    .line 108
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getMaxPageCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaxPageCount:I

    .line 109
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->initPages()V

    .line 110
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->initView()V

    .line 111
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->loadPages()V

    .line 112
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->checkDataSum()V

    .line 113
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 90
    const-string/jumbo v4, "DataStreamMask"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, dataStreamMask:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 98
    const-string/jumbo v4, "DataStreamShow_Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    .line 99
    const-string/jumbo v4, "DataStreamCurPage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    .line 100
    const-string/jumbo v4, "DataStreamCount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    .line 102
    .end local v1           #dataStreamMask:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 92
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

    .line 93
    .local v3, tempItem:Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCallKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 554
    invoke-virtual {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 582
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d017c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->initPages()V

    .line 586
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->initView()V

    .line 587
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->loadPages()V

    .line 589
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 591
    .local v0, position:I
    if-nez v0, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

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
    .line 163
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onDestroyView()V

    .line 83
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

    .line 511
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

    .line 513
    move v0, p2

    .line 514
    .local v0, positionInList:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    add-int v0, p1, p2

    .line 518
    :cond_0
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, unit:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-static {p2}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v0, v6, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->resetGraphStyle(IIZ)V

    .line 520
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    .line 521
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    iget-wide v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mTimes:J

    invoke-virtual {v2, p3, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    .line 527
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->show()V

    .line 528
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 529
    return-void

    :cond_2
    move v2, v4

    .line 519
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
    .line 534
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mGridGraphContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 537
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mStreamCount:I

    if-eq v2, v0, :cond_0

    .line 441
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->hide()V

    .line 442
    sput-boolean v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 446
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 507
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 451
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .parameter "position"

    .prologue
    const v7, 0x7f070695

    const v6, 0x7f070694

    const/4 v5, 0x1

    .line 458
    const-string/jumbo v0, "GraphGridFragment"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPageSelected position:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    if-nez p1, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 467
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v1, "900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_3

    .line 476
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    .line 494
    :cond_0
    :goto_1
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    .line 496
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "9"

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    .line 498
    const/4 v4, 0x4

    .line 497
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackPageStreamMessage(Ljava/lang/String;Ljava/lang/String;II)V

    .line 502
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->updateDataStreamPage(I)V

    .line 503
    return-void

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 483
    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_0

    .line 485
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iput-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 120
    return-void
.end method

.method public onSetMaxMin(DD)V
    .locals 1
    .parameter "maxValue"
    .parameter "minValue"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->SetMaxMin(DD)V

    .line 575
    :cond_0
    return-void
.end method

.method public onSingleLargeGraphVisibleChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 215
    :cond_0
    return-void
.end method

.method public setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 544
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

    .line 348
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;->setShowingType(Ljava/lang/String;)V

    .line 352
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 353
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 354
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    .line 355
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->updateGraphDataStream(JLjava/util/List;)V

    .line 356
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    goto :goto_0

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-nez v1, :cond_6

    .line 360
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 369
    :goto_2
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    if-eqz v1, :cond_3

    .line 370
    const v1, 0x7f070694

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070695

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0           #i:I
    :cond_3
    :goto_3
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    if-nez v1, :cond_0

    .line 377
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->updateGraphDataStream(JLjava/util/List;)V

    goto :goto_0

    .line 362
    .restart local v0       #i:I
    :cond_4
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLatestDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    goto :goto_2

    .line 361
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v0           #i:I
    :cond_6
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsPaging:Z

    goto :goto_3
.end method

.method public updateGraphDataStream(JLjava/util/List;)V
    .locals 12
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
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 273
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mTimes:J

    .line 275
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v9, "900"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v2, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 278
    .local v1, dataCount:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v9, "ActiveTest"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 280
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v1, :cond_4

    .line 283
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 284
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    if-nez v6, :cond_2

    .line 285
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, unit:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-static {v7}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v9, v7, v10, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->resetGraphStyle(IIZ)V

    .line 287
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setFromOneGraph(Z)V

    .line 288
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 289
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v6, :cond_1

    .line 290
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v6, v7, v11}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 293
    :cond_1
    iput-boolean v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    .line 295
    .end local v5           #unit:Ljava/lang/String;
    :cond_2
    sput-boolean v8, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 296
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getPositon()I

    move-result v3

    .line 297
    .local v3, graphPosition:I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 298
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v7, v6, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    .line 342
    .end local v1           #dataCount:I
    .end local v2           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v3           #graphPosition:I
    .end local v4           #i:I
    :cond_3
    :goto_2
    return-void

    .line 281
    .restart local v1       #dataCount:I
    .restart local v2       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .restart local v4       #i:I
    :cond_4
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mMaskList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v5       #unit:Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 286
    goto :goto_1

    .line 301
    .end local v5           #unit:Ljava/lang/String;
    :cond_6
    sput-boolean v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 302
    invoke-direct {p0, v2, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->updateGridData(Ljava/util/List;J)V

    goto :goto_2

    .line 306
    .end local v1           #dataCount:I
    .end local v2           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v4           #i:I
    :cond_7
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 307
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    if-nez v6, :cond_9

    .line 308
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v6}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v5

    .line 309
    .restart local v5       #unit:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-static {v7}, Lcom/cnlaunch/x431pro/module/diagnose/GraphConfiguration;->getPaintColor(I)I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v7

    :goto_3
    invoke-virtual {v9, v7, v10, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->resetGraphStyle(IIZ)V

    .line 310
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->setFromOneGraph(Z)V

    .line 311
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 312
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v6, :cond_8

    .line 313
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v6, v7, v11}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 316
    :cond_8
    iput-boolean v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->bLargeGraphInit:Z

    .line 318
    .end local v5           #unit:Ljava/lang/String;
    :cond_9
    sput-boolean v8, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 319
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->getPositon()I

    move-result v3

    .line 320
    .restart local v3       #graphPosition:I
    const/4 v0, 0x0

    .line 321
    .local v0, currentPosition:I
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 322
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getSingleGraphDataStreamPosition(II)I

    move-result v0

    .line 327
    :goto_4
    const/4 v6, -0x1

    if-eq v6, v0, :cond_3

    .line 331
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mLargeGraph:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v7, v6, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->updateData(Ljava/util/List;J)V

    goto/16 :goto_2

    .end local v0           #currentPosition:I
    .end local v3           #graphPosition:I
    .restart local v5       #unit:Ljava/lang/String;
    :cond_a
    move v6, v8

    .line 309
    goto :goto_3

    .line 324
    .end local v5           #unit:Ljava/lang/String;
    .restart local v0       #currentPosition:I
    .restart local v3       #graphPosition:I
    :cond_b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {p0, v6, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getSingleGraphDataStreamPosition(II)I

    move-result v0

    goto :goto_4

    .line 335
    .end local v0           #currentPosition:I
    .end local v3           #graphPosition:I
    :cond_c
    sput-boolean v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->mIsSingleGraphVisible:Z

    .line 337
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->isRecording()Z

    move-result v6

    invoke-direct {p0, p3, p1, p2, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->updateCurrentPage(Ljava/util/List;JZ)V

    goto/16 :goto_2
.end method
