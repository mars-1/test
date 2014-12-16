.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;
.source "TextListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private helpIndex:I

.field private isPaging:Z

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

.field private mMaxPageCount:I

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

    .line 65
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 43
    const-string/jumbo v0, "TextListFragment"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->TAG:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 49
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    .line 50
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    .line 52
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 61
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 63
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 3
    .parameter "recorder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 43
    const-string/jumbo v0, "TextListFragment"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->TAG:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 49
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    .line 50
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    .line 52
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    .line 54
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    .line 55
    const/16 v0, 0x23

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 61
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 63
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    .line 70
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 72
    return-void
.end method

.method private createViewpager(Ljava/lang/String;)V
    .locals 6
    .parameter "mask"

    .prologue
    .line 155
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamJumpType()I

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const v4, 0x7f070694

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070695

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, pageViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    if-lt v1, v4, :cond_1

    .line 168
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-direct {v4, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 169
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 170
    return-void

    .line 160
    :cond_1
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v4, p1, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 163
    .local v0, adapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initImageGridView()V
    .locals 4

    .prologue
    .line 346
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 347
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 348
    .local v1, singleWith:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    mul-int/2addr v2, v1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 349
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 351
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 352
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0d00ef

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, btnSelectAll:Landroid/widget/Button;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    div-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    .line 120
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    if-le v2, v5, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f07056d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v2, v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 122
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    if-le v2, v5, :cond_4

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    :goto_1
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    .line 123
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0d01d6

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerLayout:Landroid/widget/RelativeLayout;

    .line 124
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0d00eb

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 126
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamMask:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->createViewpager(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPagerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0d0151

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 132
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    if-le v2, v4, :cond_5

    .line 133
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setVisibility(I)V

    .line 134
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    invoke-direct {v2, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 135
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->initImageGridView()V

    .line 141
    :goto_2
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    .line 142
    .local v1, pagesPerBigPage:I
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 143
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v4, "810"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    sget v4, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-ge v2, v4, :cond_2

    .line 144
    :cond_1
    iput v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 146
    return-void

    .end local v1           #pagesPerBigPage:I
    :cond_3
    move v2, v4

    .line 119
    goto/16 :goto_0

    .line 122
    :cond_4
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageCount:I

    goto/16 :goto_1

    .line 138
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showData(Ljava/util/List;)V
    .locals 4
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
    .line 220
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 223
    return-void

    .line 221
    :cond_0
    const-string/jumbo v2, "bcf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " data["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] title ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 178
    .local p1, updateList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamCount()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 183
    :cond_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v7

    if-nez v7, :cond_3

    .line 184
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamCount()I

    move-result v7

    sget v8, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-le v7, v8, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamCount()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 188
    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 189
    .local v0, currentPage:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v8, "900"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 190
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    rem-int v0, v7, v8

    .line 192
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v6, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-static {p1}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->copyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .end local v6           #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    check-cast v6, Ljava/util/ArrayList;

    .line 196
    .restart local v6       #tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int v5, v0, v7

    .line 197
    .local v5, subStart:I
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int/2addr v7, v0

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    add-int v4, v7, v8

    .line 198
    .local v4, subEnd:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    if-ge v7, v8, :cond_5

    .line 199
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int/2addr v7, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int v4, v7, v8

    .line 206
    :cond_5
    :try_start_0
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    if-lt v7, v8, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 216
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v7, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->updateList(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 210
    :try_start_1
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 211
    :catch_1
    move-exception v2

    .line 212
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
    .line 104
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getBigPage()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    .line 105
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getPageItemCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    .line 106
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getMaxPageCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mMaxPageCount:I

    .line 107
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->initView()V

    .line 108
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 113
    :goto_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

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
    .line 89
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v1, "DataStreamMask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamMask:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "DataStreamShow_Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "DataStreamCurPage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    .line 96
    const-string/jumbo v1, "DataStreamCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamCount:I

    .line 97
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mDataStreamMask:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    .line 99
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 357
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d01d6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 362
    .local v0, position:I
    if-nez v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

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
    .line 76
    const v0, 0x7f03007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onDestroyView()V

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 85
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
    .line 227
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 228
    .local v0, tempIndex:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    rem-int/2addr v1, v2

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int v0, v1, v2

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->setCheck(I)V

    .line 237
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getItemSelect()I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    .line 238
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    add-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionItem(I)V

    .line 243
    :cond_0
    return-void

    .line 232
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int v0, v1, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mPageItemCount:I

    mul-int v0, v1, v2

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 290
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 295
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f070695

    const v3, 0x7f070694

    const/4 v2, 0x1

    .line 311
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    .line 312
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 313
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    .line 314
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->setItemSelect(I)V

    .line 315
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->helpIndex:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionItem(I)V

    .line 316
    if-nez p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    div-int v1, p1, v1

    if-ge v0, v1, :cond_3

    .line 324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    .line 334
    :cond_0
    :goto_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    .line 336
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "9"

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    .line 338
    const/4 v4, 0x4

    .line 337
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackPageStreamMessage(Ljava/lang/String;Ljava/lang/String;II)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->updateDataList(Ljava/util/List;)V

    .line 341
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->updateDataStreamPage(I)V

    .line 342
    return-void

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 328
    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCurrentBigPageCount:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mBigPage:I

    div-int v1, p1, v1

    if-le v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onResume()V

    .line 300
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 302
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapterArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    .line 304
    .local v0, temp:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->reUpdateList()V

    goto :goto_0
.end method

.method public setAllItemChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->setAllItemChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method public setRecorder(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 278
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

    .line 248
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 251
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 252
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    .line 253
    invoke-direct {p0, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->updateDataList(Ljava/util/List;)V

    .line 254
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-nez v1, :cond_3

    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 265
    :goto_2
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    if-eqz v1, :cond_3

    .line 266
    const v1, 0x7f070694

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070695

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v0           #i:I
    :cond_3
    iput-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    .line 270
    :cond_4
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    .line 271
    invoke-direct {p0, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->updateDataList(Ljava/util/List;)V

    goto :goto_0

    .line 259
    .restart local v0       #i:I
    :cond_5
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->mLatestData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;->isPaging:Z

    goto :goto_2

    .line 258
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
