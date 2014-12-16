.class public Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;
.super Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;
.source "ReplayListFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private helpIndex:I

.field isPaging:Z

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

.field private mAdapterArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mBigPage:I

.field private mCurrentBigPageCount:I

.field private mCurrentDatastreamType:Ljava/lang/String;

.field private mCurrentPage:I

.field private mDataStreamCount:I

.field private mDataStreamMask:Ljava/lang/String;

.field private mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

.field private mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

.field private mLatestData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCount:I

.field private mPageItemCount:I

.field private mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

.field private mViewPagerLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;-><init>()V

    .line 38
    const-string/jumbo v0, "TextListFragment"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->TAG:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 44
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamCount:I

    .line 45
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    .line 47
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 54
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->helpIndex:I

    .line 281
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 3
    .parameter "recorder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;-><init>()V

    .line 38
    const-string/jumbo v0, "TextListFragment"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->TAG:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 44
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamCount:I

    .line 45
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    .line 47
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 54
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->helpIndex:I

    .line 281
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    .line 58
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 60
    return-void
.end method

.method private createViewpager(Ljava/lang/String;)V
    .locals 6
    .parameter "mask"

    .prologue
    .line 155
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v3, pageViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    if-lt v1, v4, :cond_0

    .line 166
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-direct {v4, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 167
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    return-void

    .line 158
    :cond_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 159
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v4, p1, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 161
    .local v0, adapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initImageGridView()V
    .locals 4

    .prologue
    .line 317
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 318
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 319
    .local v1, singleWith:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    mul-int/2addr v2, v1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 320
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 322
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 323
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/16 v4, 0x23

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0c00ef

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    .local v0, btnSelectAll:Landroid/widget/Button;
    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamCount:I

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    div-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    .line 127
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    if-le v2, v4, :cond_3

    move v2, v4

    :goto_2
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0c01d9

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerLayout:Landroid/widget/RelativeLayout;

    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f0c00eb

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamMask:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->createViewpager(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPagerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0151

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 139
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 140
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->initImageGridView()V

    .line 143
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    .line 144
    .local v1, pagesPerBigPage:I
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    .line 145
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 126
    .end local v1           #pagesPerBigPage:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 127
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageCount:I

    goto :goto_2
.end method

.method private updateDataList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    .line 177
    .local v0, currentPage:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    rem-int v0, v7, v8

    .line 180
    :cond_0
    if-nez p1, :cond_2

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v6, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    mul-int v5, v0, v7

    .line 186
    .local v5, subStart:I
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    add-int v4, v7, v8

    .line 187
    .local v4, subEnd:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    if-ge v7, v8, :cond_3

    .line 188
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    mul-int/2addr v7, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 195
    :cond_3
    :try_start_0
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    if-lt v7, v8, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 205
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v7, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->updateList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 199
    :try_start_1
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .local v2, e2:Ljava/lang/Exception;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->initView()V

    .line 112
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 117
    :goto_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v1, "DataStreamMask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 102
    const-string/jumbo v1, "DataStreamShow_Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    .line 103
    const-string/jumbo v1, "DataStreamCurPage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    .line 104
    const-string/jumbo v1, "DataStreamCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamCount:I

    .line 105
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mDataStreamMask:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    .line 107
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->initView()V

    .line 84
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataList(Ljava/util/List;)V

    .line 90
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataStreamPage(I)V

    .line 91
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_1
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onDestroyView()V

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
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
    .line 212
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->setCheck(I)V

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getItemSelect()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->helpIndex:I

    .line 214
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mPageItemCount:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->helpIndex:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionItem(I)V

    .line 218
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 262
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 267
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 285
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentPage:I

    .line 286
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 295
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    div-int v1, p1, v1

    if-ge v0, v1, :cond_2

    .line 299
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    .line 301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    :cond_0
    :goto_0
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataList(Ljava/util/List;)V

    .line 312
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataStreamPage(I)V

    .line 313
    return-void

    .line 303
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCurrentBigPageCount:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mBigPage:I

    div-int v1, p1, v1

    if-le v0, v1, :cond_0

    .line 304
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    .line 306
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "9"

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onResume()V

    .line 272
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 274
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    .line 276
    .local v0, temp:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->reUpdateList()V

    goto :goto_0
.end method

.method public setAllItemChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->setAllItemChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setRecorder(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 250
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

    .line 223
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 226
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 227
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    .line 228
    invoke-direct {p0, p4}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataList(Ljava/util/List;)V

    .line 229
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 240
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->isPaging:Z

    .line 242
    .end local v0           #i:I
    :cond_3
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    .line 243
    invoke-direct {p0, p4}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->updateDataList(Ljava/util/List;)V

    goto :goto_0

    .line 235
    .restart local v0       #i:I
    :cond_4
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

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

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
