.class public Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;
.super Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;
.source "ReplayCombinedFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final DS_COUNT_PER_BIG_PAGE:I = 0xf

.field private static final DS_COUNT_PER_SMALL_PAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CombineGraphFragment"


# instance fields
.field private mBigPageSum:I

.field private mCombinedContainer:Landroid/support/v4/view/ViewPager;

.field private mCurrentPageIndex:I

.field private mDataAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

.field private mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

.field private mMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
            "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingType:Ljava/lang/String;

.field private mSmallPageSum:I

.field private mStreamCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;-><init>()V

    .line 42
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    .line 43
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mDataAllList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 52
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 37
    return-void
.end method

.method private initPages()V
    .locals 13

    .prologue
    .line 117
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v12, "900"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 118
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 119
    .local v8, streamSum:I
    rem-int/lit8 v11, v8, 0x4

    if-lez v11, :cond_1

    div-int/lit8 v11, v8, 0x4

    add-int/lit8 v11, v11, 0x1

    :goto_0
    iput v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, startIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    if-lt v1, v11, :cond_2

    .line 187
    .end local v7           #startIndex:I
    :cond_0
    return-void

    .line 119
    .end local v1           #i:I
    :cond_1
    div-int/lit8 v11, v8, 0x4

    goto :goto_0

    .line 123
    .restart local v1       #i:I
    .restart local v7       #startIndex:I
    :cond_2
    const/4 v6, 0x4

    .line 124
    .local v6, psCount:I
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    add-int/lit8 v12, v1, 0x1

    if-ne v11, v12, :cond_3

    .line 125
    mul-int/lit8 v11, v1, 0x4

    sub-int v6, v8, v11

    .line 127
    :cond_3
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v1, v7, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 128
    .local v0, combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/2addr v7, v6

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    .end local v1           #i:I
    .end local v6           #psCount:I
    .end local v7           #startIndex:I
    .end local v8           #streamSum:I
    :cond_4
    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mStreamCount:I

    .line 134
    .restart local v8       #streamSum:I
    rem-int/lit8 v9, v8, 0xf

    .line 135
    .local v9, unalignedCount:I
    const/4 v5, 0x4

    .line 137
    .local v5, pagesPerBigPage:I
    if-lez v9, :cond_a

    .line 138
    rem-int/lit8 v11, v9, 0x4

    if-lez v11, :cond_6

    div-int/lit8 v11, v9, 0x4

    add-int/lit8 v10, v11, 0x1

    .line 140
    .local v10, unalignedPage:I
    :goto_2
    div-int/lit8 v11, v8, 0xf

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    .line 141
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    add-int/lit8 v11, v11, -0x1

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    iput v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    .line 143
    const/4 v7, 0x0

    .line 144
    .restart local v7       #startIndex:I
    const/4 v3, 0x0

    .line 145
    .local v3, pageIndex:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_7

    .line 159
    const/4 v7, 0x0

    .line 160
    const/4 v1, 0x0

    move v4, v3

    .end local v3           #pageIndex:I
    .local v4, pageIndex:I
    :goto_4
    if-ge v1, v10, :cond_0

    .line 161
    const/4 v6, 0x4

    .line 162
    .restart local v6       #psCount:I
    add-int/lit8 v11, v1, 0x1

    if-ne v10, v11, :cond_5

    .line 163
    mul-int/lit8 v11, v1, 0x4

    sub-int v6, v9, v11

    .line 165
    :cond_5
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v0, v11, v12, v7, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 166
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #pageIndex:I
    .restart local v3       #pageIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/2addr v7, v6

    .line 160
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    goto :goto_4

    .line 138
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    .end local v1           #i:I
    .end local v4           #pageIndex:I
    .end local v6           #psCount:I
    .end local v7           #startIndex:I
    .end local v10           #unalignedPage:I
    :cond_6
    div-int/lit8 v10, v9, 0x4

    goto :goto_2

    .line 146
    .restart local v1       #i:I
    .restart local v3       #pageIndex:I
    .restart local v7       #startIndex:I
    .restart local v10       #unalignedPage:I
    :cond_7
    const/4 v7, 0x0

    .line 147
    const/4 v2, 0x0

    .local v2, j:I
    move v4, v3

    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    :goto_5
    if-lt v2, v5, :cond_8

    .line 145
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #pageIndex:I
    .restart local v3       #pageIndex:I
    goto :goto_3

    .line 148
    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    :cond_8
    const/4 v6, 0x4

    .line 149
    .restart local v6       #psCount:I
    add-int/lit8 v11, v2, 0x1

    if-ne v5, v11, :cond_9

    .line 150
    const/4 v6, 0x3

    .line 152
    :cond_9
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v1, v7, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 153
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #pageIndex:I
    .restart local v3       #pageIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    add-int/2addr v7, v6

    .line 147
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    goto :goto_5

    .line 170
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v4           #pageIndex:I
    .end local v6           #psCount:I
    .end local v7           #startIndex:I
    .end local v10           #unalignedPage:I
    :cond_a
    div-int/lit8 v11, v8, 0xf

    iput v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    .line 171
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    mul-int/2addr v11, v5

    iput v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    .line 172
    const/4 v3, 0x0

    .line 173
    .restart local v3       #pageIndex:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    iget v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mBigPageSum:I

    if-ge v1, v11, :cond_0

    .line 174
    const/4 v7, 0x0

    .line 175
    .restart local v7       #startIndex:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    move v4, v3

    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    :goto_7
    if-lt v2, v5, :cond_b

    .line 173
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #pageIndex:I
    .restart local v3       #pageIndex:I
    goto :goto_6

    .line 176
    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    :cond_b
    const/4 v6, 0x4

    .line 177
    .restart local v6       #psCount:I
    if-ne v2, v5, :cond_c

    .line 178
    const/4 v6, 0x3

    .line 180
    :cond_c
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11, v1, v7, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 181
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #pageIndex:I
    .restart local v3       #pageIndex:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/2addr v7, v6

    .line 175
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #pageIndex:I
    .restart local v4       #pageIndex:I
    goto :goto_7
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0150

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    .line 197
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0151

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 198
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 199
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 201
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 202
    .local v1, singleWith:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mSmallPageSum:I

    mul-int/2addr v2, v1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 205
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 206
    return-void
.end method

.method private loadPages()V
    .locals 4

    .prologue
    .line 106
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;-><init>(Ljava/util/Map;)V

    .line 107
    .local v1, pageerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 111
    const/4 v2, 0x4

    .line 112
    .local v2, pagesPerBigPage:I
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    mul-int v0, v3, v2

    .line 113
    .local v0, currentItemIndex:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 114
    return-void
.end method

.method private updateCurrentPage(Ljava/util/List;J)V
    .locals 4
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
    .line 209
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    return-void

    .line 209
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 210
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    if-ne v2, v3, :cond_0

    .line 211
    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->updateDataStream(Ljava/util/List;J)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->initPages()V

    .line 93
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->loadPages()V

    .line 96
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v4, "DataStreamMask"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, dataStreamMask:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 80
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 84
    const-string/jumbo v4, "DataStreamShow_Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mShowingType:Ljava/lang/String;

    .line 85
    const-string/jumbo v4, "DataStreamCurPage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    .line 86
    const-string/jumbo v4, "DataStreamCount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mStreamCount:I

    .line 88
    .end local v1           #dataStreamMask:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 74
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

    .line 75
    .local v3, tempItem:Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v3           #tempItem:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mDataAllList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 191
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onDestroyView()V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 236
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 240
    return-void
.end method

.method public onPageSelected(I)V
    .locals 9
    .parameter "position"

    .prologue
    const v8, 0x7f070697

    const v4, 0x7f070696

    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 244
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 253
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 255
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v0

    .line 257
    .local v0, bigPageIndex:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v3, "900"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    if-eq v2, v0, :cond_0

    .line 259
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->reset()V

    .line 260
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 265
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_3

    .line 267
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v3, "34"

    const-string/jumbo v4, "9"

    invoke-interface {v2, v3, v4, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    const-string/jumbo v2, "CombineGraphFragment"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageSelected go previous page, old:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :cond_1
    :goto_1
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    .line 279
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->updateDataStreamPage(I)V

    .line 280
    return-void

    .line 260
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 261
    .local v1, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->unload()V

    goto :goto_0

    .line 270
    .end local v1           #page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    .line 272
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v3, "34"

    const-string/jumbo v4, "8"

    invoke-interface {v2, v3, v4, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    const-string/jumbo v2, "CombineGraphFragment"

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageSelected go next page, old:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mCurrentPageIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/BaseDataStreamReplayFragment;->onResume()V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 103
    return-void
.end method

.method public updateDataStream(JLjava/util/List;Ljava/util/List;)V
    .locals 5
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
    .line 219
    .local p3, datas:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .local p4, latestData:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v4, "900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v1           #i:I
    :goto_2
    return-void

    .line 222
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .restart local v1       #i:I
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 226
    .local v2, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v2, v0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->updateDataStream(Ljava/util/List;J)V

    goto :goto_1

    .line 230
    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v1           #i:I
    .end local v2           #page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_2
    invoke-direct {p0, p3, p1, p2}, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;->updateCurrentPage(Ljava/util/List;J)V

    goto :goto_2
.end method
