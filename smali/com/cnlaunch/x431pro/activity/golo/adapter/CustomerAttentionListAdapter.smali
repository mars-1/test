.class public Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomerAttentionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 56
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    .line 32
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    new-instance v1, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const v1, 0x7f020239

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    .line 62
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030080

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    const v1, 0x7f0d01e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->use_carmsg:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    const v1, 0x7f0d01de

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->lastload_time:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    const v1, 0x7f0d017f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->use_name:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    const v1, 0x7f0d01dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 67
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->use_carmsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->use_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getFace_url()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, uri:Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 76
    return-object p2

    .line 69
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->holder:Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->mInfoList:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/adapter/CustomerAttentionListAdapter;->notifyDataSetChanged()V

    .line 95
    return-void
.end method
