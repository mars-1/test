.class public Lcom/cnlaunch/x431pro/activity/GuideActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private button_jump:Landroid/widget/RelativeLayout;

.field private guidePages:Landroid/support/v4/view/ViewPager;

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

.field private mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

.field private mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

.field private pageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private pages:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 39
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 33
    return-void
.end method

.method private initImageGridView(I)V
    .locals 4
    .parameter "mPageCount"

    .prologue
    .line 129
    const v2, 0x7f0c0151

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    .line 130
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-direct {v2, p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    .line 131
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setNumColumns(I)V

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 134
    .local v1, singleWith:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-int v2, v1, p1

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setColumnWidth(I)V

    .line 137
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageGrid:Lcom/cnlaunch/x431pro/widget/NoScrollGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/NoScrollGridView;->setStretchMode(I)V

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f0300e2

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->setContentView(I)V

    .line 49
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "guide_pages"

    invoke-virtual {v1, v2, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    .line 51
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/cnlaunch/x431pro/utils/VersionInfoUtils;->setAllVerState(Landroid/content/Context;Z)V

    .line 52
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->setHeadVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    .line 57
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    if-lt v1, v4, :cond_0

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    const v2, 0x7f0300e3

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 61
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    const v2, 0x7f0300e4

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 64
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    const v2, 0x7f0300e5

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 67
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    const v2, 0x7f0300e6

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 70
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    const v2, 0x7f0300e7

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_4
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    .line 74
    const v1, 0x7f0c0044

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->guidePages:Landroid/support/v4/view/ViewPager;

    .line 75
    const v1, 0x7f0c02ae

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->button_jump:Landroid/widget/RelativeLayout;

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->button_jump:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/GuideActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/GuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pageViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/GuideActivity;->initImageGridView(I)V

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->guidePages:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->guidePages:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 90
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 95
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 100
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->mImageAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->setItemIsActive(I)V

    .line 107
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->pages:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/GuideActivity;->button_jump:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    :cond_0
    return-void
.end method
