.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
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
    .parameter "handler"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 36
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->setImageConfig()V

    .line 39
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->initOptions()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->setImageConfig()V

    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->initOptions()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initOptions()V
    .locals 3

    .prologue
    const v2, 0x7f020236

    const/4 v1, 0x1

    .line 59
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 61
    return-void
.end method

.method private setImageConfig()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 53
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 54
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"

    .prologue
    .line 150
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 158
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 151
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, sortStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 153
    .local v0, firstChar:C
    if-eq v0, p1, :cond_0

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030030

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;

    invoke-direct {v8, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;)V

    .line 92
    .local v8, viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;
    const v9, 0x7f0d00b0

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    .line 93
    const v9, 0x7f0d00b1

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    .line 94
    const v9, 0x7f0d00ae

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    .line 95
    const v9, 0x7f0d00b4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    .line 96
    const v9, 0x7f0d00b2

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    .line 97
    const v9, 0x7f0d00b3

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, name:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " - "

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, auto_code:Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 108
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_3
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSignature()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, signature:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 115
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_4
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getFace()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, imageUrl:Ljava/lang/String;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v10, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v10, v11, v12}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 124
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, status:Ljava/lang/String;
    const-string/jumbo v9, "1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 126
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205da

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_5
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v1

    .line 135
    .local v1, count:I
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v7

    .line 136
    .local v7, tipCount:I
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getLastTime()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, time:Ljava/lang/String;
    iget-object v10, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    add-int v9, v1, v7

    if-lez v9, :cond_8

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    new-instance v10, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$1;

    invoke-direct {v10, p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;I)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object p2

    .line 100
    .end local v0           #auto_code:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #imageUrl:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #signature:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #time:Ljava/lang/String;
    .end local v7           #tipCount:I
    .end local v8           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;

    .line 101
    .restart local v8       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0088

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 102
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0088

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 105
    :cond_1
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 106
    .restart local v3       #name:Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    goto/16 :goto_2

    .line 110
    .restart local v0       #auto_code:Ljava/lang/String;
    :cond_3
    iget-object v10, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userName:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 118
    .restart local v4       #signature:Ljava/lang/String;
    :cond_4
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 127
    .restart local v2       #imageUrl:Ljava/lang/String;
    .restart local v5       #status:Ljava/lang/String;
    :cond_5
    const-string/jumbo v9, "2"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 128
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 129
    :cond_6
    const-string/jumbo v9, "3"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 132
    :cond_7
    iget-object v9, v8, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter$ViewHold;->status:Landroid/widget/ImageView;

    const v10, 0x7f0205d9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 137
    .restart local v1       #count:I
    .restart local v6       #time:Ljava/lang/String;
    .restart local v7       #tipCount:I
    :cond_8
    const/16 v9, 0x8

    goto/16 :goto_6
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->datas:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method
