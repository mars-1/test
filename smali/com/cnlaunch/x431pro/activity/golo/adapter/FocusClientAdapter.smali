.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
.super Landroid/widget/BaseAdapter;
.source "FocusClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusClientAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field

.field imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mHandler:Landroid/os/Handler;

.field options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "mHandler"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 33
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->setImageConfig()V

    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->initOptions()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "mHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 48
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->initOptions()V

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initOptions()V
    .locals 3

    .prologue
    const v2, 0x7f020236

    const/4 v1, 0x1

    .line 55
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 56
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 64
    return-void
.end method

.method private setImageConfig()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 42
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 43
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 44
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"

    .prologue
    .line 153
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 163
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 154
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, sortStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, firstChar:C
    if-eq v0, p1, :cond_0

    .line 153
    .end local v0           #firstChar:C
    .end local v2           #sortStr:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 94
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030030

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)V

    .line 96
    .local v6, viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;
    const v7, 0x7f0d00b0

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    .line 97
    const v7, 0x7f0d00b1

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    .line 98
    const v7, 0x7f0d00ae

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    .line 100
    const v7, 0x7f0d00b4

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    .line 101
    const v7, 0x7f0d00b2

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    .line 102
    const v7, 0x7f0d00b3

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, name:Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, signature:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 119
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_3
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v8, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v8, v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 128
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNewMsgCount()I

    move-result v0

    .line 129
    .local v0, count:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getLastTime()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, time:Ljava/lang/String;
    iget-object v8, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    if-lez v0, :cond_5

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getStatus()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, status:Ljava/lang/String;
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 135
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v8, 0x7f0205da

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :cond_0
    :goto_5
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    new-instance v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;

    invoke-direct {v8, p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object p2

    .line 106
    .end local v0           #count:I
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #signature:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    .end local v5           #time:Ljava/lang/String;
    .end local v6           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;

    .line 107
    .restart local v6       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 108
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0088

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 110
    :cond_2
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 114
    .restart local v2       #name:Ljava/lang/String;
    :cond_3
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 122
    .restart local v3       #signature:Ljava/lang/String;
    :cond_4
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 130
    .restart local v0       #count:I
    .restart local v1       #imageUrl:Ljava/lang/String;
    .restart local v5       #time:Ljava/lang/String;
    :cond_5
    const/16 v7, 0x8

    goto/16 :goto_4

    .line 136
    .restart local v4       #status:Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 137
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v8, 0x7f0205d8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 138
    :cond_7
    const-string/jumbo v7, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, v6, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v8, 0x7f0205d9

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->datas:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
