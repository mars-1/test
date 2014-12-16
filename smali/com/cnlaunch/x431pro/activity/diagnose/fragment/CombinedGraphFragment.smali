.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;
.source "CombinedGraphFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static DS_COUNT_PER_BIG_PAGE:I = 0x0

.field private static final DS_COUNT_PER_SMALL_PAGE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CombineGraphFragment"

.field private static mIsRecording:Ljava/lang/Boolean;


# instance fields
.field private mBigPageSum:I

.field private mCombinedContainer:Landroid/support/v4/view/ViewPager;

.field private mCurrentPageIndex:I

.field private mCurrentSmallPageIndex:I

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

.field private mMaxPageCount:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xf

    sput v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIsRecording:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 50
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    .line 51
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mDataAllList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    .line 59
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 60
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 66
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentSmallPageIndex:I

    .line 68
    const/16 v0, 0x23

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    .line 43
    return-void
.end method

.method private initPages()V
    .locals 15

    .prologue
    .line 145
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v14, "900"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 146
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 147
    .local v10, streamSum:I
    rem-int/lit8 v13, v10, 0x4

    if-lez v13, :cond_1

    div-int/lit8 v13, v10, 0x4

    add-int/lit8 v13, v13, 0x1

    :goto_0
    iput v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    .line 148
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    iget v14, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-le v13, v14, :cond_2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    .line 149
    .local v3, iMaxPageCount:I
    :goto_1
    const/4 v9, 0x0

    .line 150
    .local v9, startIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-lt v2, v3, :cond_3

    .line 269
    .end local v2           #i:I
    .end local v3           #iMaxPageCount:I
    :cond_0
    return-void

    .line 147
    .end local v9           #startIndex:I
    :cond_1
    div-int/lit8 v13, v10, 0x4

    goto :goto_0

    .line 148
    :cond_2
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    goto :goto_1

    .line 151
    .restart local v2       #i:I
    .restart local v3       #iMaxPageCount:I
    .restart local v9       #startIndex:I
    :cond_3
    const/4 v8, 0x4

    .line 152
    .local v8, psCount:I
    add-int/lit8 v13, v2, 0x1

    if-ne v3, v13, :cond_4

    .line 153
    mul-int/lit8 v13, v2, 0x4

    sub-int v8, v10, v13

    .line 155
    :cond_4
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v0, v13, v2, v9, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 156
    .local v0, combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/2addr v9, v8

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    .end local v2           #i:I
    .end local v3           #iMaxPageCount:I
    .end local v8           #psCount:I
    .end local v9           #startIndex:I
    .end local v10           #streamSum:I
    :cond_5
    iget v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mStreamCount:I

    .line 162
    .restart local v10       #streamSum:I
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int v11, v10, v13

    .line 165
    .local v11, unalignedCount:I
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    div-int/lit8 v7, v13, 0x4

    .line 168
    .local v7, pagesPerBigPage:I
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    add-int/2addr v7, v13

    .line 175
    rem-int/lit8 v13, v11, 0x4

    if-lez v13, :cond_9

    div-int/lit8 v13, v11, 0x4

    add-int/lit8 v12, v13, 0x1

    .line 179
    .local v12, unalignedPage:I
    :goto_4
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    div-int v13, v10, v13

    iput v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    .line 181
    iget v14, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int v13, v10, v13

    if-lez v13, :cond_a

    const/4 v13, 0x1

    :goto_5
    add-int/2addr v13, v14

    iput v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    .line 185
    if-lez v12, :cond_b

    .line 186
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    add-int/lit8 v13, v13, -0x1

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    iput v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    .line 191
    :goto_6
    const/4 v9, 0x0

    .line 192
    .restart local v9       #startIndex:I
    const/4 v5, 0x0

    .line 194
    .local v5, pageIndex:I
    if-gtz v12, :cond_6

    if-lez v11, :cond_11

    .line 195
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    add-int/lit8 v13, v13, -0x1

    if-lt v2, v13, :cond_c

    .line 219
    const/4 v9, 0x0

    .line 220
    const/4 v2, 0x0

    move v6, v5

    .end local v5           #pageIndex:I
    .local v6, pageIndex:I
    :goto_8
    if-ge v2, v12, :cond_0

    .line 221
    const/4 v1, 0x4

    .line 224
    .local v1, dsCount:I
    add-int/lit8 v13, v2, 0x1

    if-ne v12, v13, :cond_7

    .line 225
    mul-int/lit8 v13, v2, 0x4

    sub-int v1, v11, v13

    .line 227
    :cond_7
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-eq v6, v13, :cond_0

    .line 229
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    iget v14, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v0, v13, v14, v9, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 230
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    add-int/2addr v9, v1

    .line 220
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    goto :goto_8

    .line 168
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    .end local v1           #dsCount:I
    .end local v2           #i:I
    .end local v6           #pageIndex:I
    .end local v9           #startIndex:I
    .end local v12           #unalignedPage:I
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 175
    :cond_9
    div-int/lit8 v12, v11, 0x4

    goto :goto_4

    .line 181
    .restart local v12       #unalignedPage:I
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 188
    :cond_b
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    mul-int/2addr v13, v7

    iput v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    goto :goto_6

    .line 196
    .restart local v2       #i:I
    .restart local v5       #pageIndex:I
    .restart local v9       #startIndex:I
    :cond_c
    const/4 v9, 0x0

    .line 197
    const/4 v4, 0x0

    .local v4, j:I
    move v6, v5

    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    :goto_9
    if-lt v4, v7, :cond_e

    .line 195
    :cond_d
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    goto :goto_7

    .line 198
    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    :cond_e
    const/4 v1, 0x4

    .line 203
    .restart local v1       #dsCount:I
    add-int/lit8 v13, v4, 0x1

    if-ne v7, v13, :cond_f

    .line 206
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_10

    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v1, v13, 0x4

    .line 210
    :cond_f
    :goto_a
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-eq v6, v13, :cond_d

    .line 212
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v0, v13, v2, v9, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 213
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/2addr v9, v1

    .line 197
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    goto :goto_9

    .line 206
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_10
    const/4 v1, 0x4

    goto :goto_a

    .line 237
    .end local v1           #dsCount:I
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    :cond_11
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 238
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mBigPageSum:I

    if-ge v2, v13, :cond_0

    .line 239
    const/4 v9, 0x0

    .line 240
    const/4 v4, 0x0

    .restart local v4       #j:I
    move v6, v5

    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    :goto_c
    if-lt v4, v7, :cond_13

    .line 238
    :cond_12
    add-int/lit8 v2, v2, 0x1

    move v5, v6

    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    goto :goto_b

    .line 241
    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    :cond_13
    const/4 v1, 0x4

    .line 247
    .restart local v1       #dsCount:I
    add-int/lit8 v13, v4, 0x1

    if-ne v7, v13, :cond_14

    .line 251
    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v13, v13, 0x4

    if-lez v13, :cond_15

    sget v13, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v1, v13, 0x4

    .line 255
    :cond_14
    :goto_d
    iget v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-eq v6, v13, :cond_12

    .line 257
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v0, v13, v2, v9, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V

    .line 258
    .restart local v0       #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    iget-object v13, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pageIndex:I
    .restart local v5       #pageIndex:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/2addr v9, v1

    .line 240
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5           #pageIndex:I
    .restart local v6       #pageIndex:I
    goto :goto_c

    .line 251
    .end local v0           #combinedPage:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_15
    const/4 v1, 0x4

    goto :goto_d
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 277
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 278
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0150

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    .line 279
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-le v2, v3, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07056f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 281
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    :goto_0
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    .line 283
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    if-le v2, v7, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0151

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 285
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 286
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 288
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 289
    .local v1, singleWith:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    mul-int/2addr v2, v1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 292
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 295
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #singleWith:I
    :cond_1
    return-void

    .line 281
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mSmallPageSum:I

    goto :goto_0
.end method

.method private static isRecording()Z
    .locals 2

    .prologue
    .line 128
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadPages()V
    .locals 4

    .prologue
    .line 134
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphPagerAdapter;-><init>(Ljava/util/Map;)V

    .line 135
    .local v1, pageerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 137
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 139
    sget v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    sget v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    div-int/lit8 v2, v3, 0x4

    .line 140
    .local v2, pagesPerBigPage:I
    :goto_0
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    mul-int v0, v3, v2

    .line 141
    .local v0, currentItemIndex:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 142
    return-void

    .line 139
    .end local v0           #currentItemIndex:I
    .end local v2           #pagesPerBigPage:I
    :cond_0
    sget v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v3, 0x1

    goto :goto_0
.end method

.method public static setRecordingStatus(Z)V
    .locals 2
    .parameter "isRecording"

    .prologue
    .line 121
    sget-object v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIsRecording:Ljava/lang/Boolean;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIsRecording:Ljava/lang/Boolean;

    .line 121
    monitor-exit v1

    .line 124
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateCurrentPage(Ljava/util/List;JZ)V
    .locals 8
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
    .line 298
    .local p1, pageData:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    return-void

    .line 298
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 300
    .local v0, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    if-ne v1, v2, :cond_0

    .line 302
    sget v5, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    .line 303
    .local v5, perBigPageDataStreamCount:I
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mStreamCount:I

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->updateDataStream(Ljava/util/List;JIIZ)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 104
    sget v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    sput v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->DS_COUNT_PER_BIG_PAGE:I

    .line 105
    invoke-static {}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->getMaxPageCount()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaxPageCount:I

    .line 106
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->initPages()V

    .line 107
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->initView()V

    .line 108
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->loadPages()V

    .line 109
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v4, "DataStreamMask"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, dataStreamMask:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 92
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 96
    const-string/jumbo v4, "DataStreamShow_Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mShowingType:Ljava/lang/String;

    .line 97
    const-string/jumbo v4, "DataStreamCurPage"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    .line 98
    const-string/jumbo v4, "DataStreamCount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mStreamCount:I

    .line 100
    .end local v1           #dataStreamMask:Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 86
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

    .line 87
    .local v3, tempItem:Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v3           #tempItem:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mDataAllList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 413
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->initPages()V

    .line 417
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->initView()V

    .line 418
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->loadPages()V

    .line 420
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCombinedContainer:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 422
    .local v0, position:I
    if-nez v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

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
    .line 273
    const v0, 0x7f03006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onDestroyView()V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 338
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 342
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .parameter "position"

    .prologue
    const v7, 0x7f070696

    const/4 v6, 0x0

    const v5, 0x7f070697

    const/4 v4, 0x1

    .line 346
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mIndicatorAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 348
    if-nez p1, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->getBigPageIndex()I

    move-result v0

    .line 355
    .local v0, bigPageIndex:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    if-eq v2, v0, :cond_2

    .line 356
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    .line 406
    :cond_0
    :goto_1
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->updateDataStreamPage(I)V

    .line 407
    return-void

    .line 351
    .end local v0           #bigPageIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    goto :goto_0

    .line 357
    .restart local v0       #bigPageIndex:I
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v3, "900"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    if-ne v2, v0, :cond_3

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentSmallPageIndex:I

    if-eq v2, p1, :cond_3

    .line 364
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentSmallPageIndex:I

    .line 365
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 367
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    if-eq v2, v0, :cond_4

    .line 377
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getInstance()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->reset()V

    .line 378
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 383
    :cond_4
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_7

    .line 385
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string/jumbo v2, "CombineGraphFragment"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageSelected go previous page, old:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

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

    .line 398
    :cond_5
    :goto_3
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    .line 400
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    const-string/jumbo v3, "34"

    const-string/jumbo v4, "9"

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    .line 402
    const/4 v6, 0x4

    .line 401
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackPageStreamMessage(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_1

    .line 378
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 379
    .local v1, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->unload()V

    goto :goto_2

    .line 390
    .end local v1           #page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_7
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_5

    .line 392
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->sendDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v2, "CombineGraphFragment"

    new-array v3, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageSelected go next page, old:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mCurrentPageIndex:I

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

    goto :goto_3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onResume()V

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 116
    return-void
.end method

.method public updateDataStream(JLjava/util/List;Ljava/util/List;)V
    .locals 6
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
    .line 310
    .local p3, datas:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .local p4, latestData:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 311
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mLatestData:Ljava/util/List;

    if-nez v4, :cond_2

    .line 315
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mLatestData:Ljava/util/List;

    .line 316
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "900"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 318
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    .local v0, dataCount:I
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mShowingType:Ljava/lang/String;

    const-string/jumbo v5, "ActiveTest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 322
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_4

    .line 326
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mPageMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 333
    .end local v0           #dataCount:I
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v2           #i:I
    :goto_3
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mLatestData:Ljava/util/List;

    goto :goto_0

    .line 323
    .restart local v0       #dataCount:I
    .restart local v1       #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .restart local v2       #i:I
    :cond_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 327
    .local v3, page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    invoke-virtual {v3, v1, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->updateDataStream(Ljava/util/List;J)V

    goto :goto_2

    .line 331
    .end local v0           #dataCount:I
    .end local v1           #dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .end local v2           #i:I
    .end local v3           #page:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;
    :cond_6
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->isRecording()Z

    move-result v4

    invoke-direct {p0, p3, p1, p2, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->updateCurrentPage(Ljava/util/List;JZ)V

    goto :goto_3
.end method
