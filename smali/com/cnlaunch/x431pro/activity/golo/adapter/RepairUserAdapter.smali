.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "RepairUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;,
        Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    }
.end annotation


# instance fields
.field private imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    .line 33
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 34
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->setImageConfig()V

    .line 35
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->initOptions()V

    .line 36
    return-void
.end method

.method private displayRepairInfo(Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;I)V
    .locals 9
    .parameter "viewHold"
    .parameter "position"

    .prologue
    .line 130
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 131
    .local v0, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_phone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getFace()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, imageUrl:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    .line 148
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, time:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Lcom/cnlaunch/x431pro/utils/Tools;->getTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    return-void

    .line 135
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v3           #time:Ljava/lang/String;
    :cond_1
    iget-object v4, p1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initOptions()V
    .locals 3

    .prologue
    const v2, 0x7f02023b

    const/4 v1, 0x1

    .line 47
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 48
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 56
    return-void
.end method

.method private setImageConfig()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, builder:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 41
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 42
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCacheAware;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    const/4 v1, 0x0

    .line 86
    .local v1, titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, object:Ljava/lang/Object;
    if-nez p2, :cond_1

    .line 89
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v3, :cond_0

    .line 90
    new-instance p2, Landroid/widget/TextView;

    .end local p2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local p2
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;

    .end local v1           #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;
    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;)V

    .restart local v1       #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;
    move-object v3, p2

    .line 92
    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;->title:Landroid/widget/TextView;

    .line 93
    iget-object v3, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;->title:Landroid/widget/TextView;

    const v4, 0x7f0204db

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->displayRepairInfo(Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;I)V

    .line 126
    return-object p2

    .line 96
    :cond_0
    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;

    .end local v2           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;)V

    .line 97
    .restart local v2       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 99
    const v3, 0x7f0c00b0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userName:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f0c00b1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userCar:Landroid/widget/TextView;

    .line 103
    const v3, 0x7f0c00ae

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 102
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->userImage:Landroid/widget/ImageView;

    .line 105
    const v3, 0x7f0c00b4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->msgTime:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f0c00b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;->tipNew:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v3, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;
    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;

    .line 113
    .restart local v1       #titleViewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$TitleViewHold;
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    check-cast v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;

    .restart local v2       #viewHold:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter$ViewHold;
    goto :goto_0
.end method

.method public refresh(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->mDatas:Ljava/util/List;

    .line 78
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method
