.class public Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToolsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 59
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
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0301ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    const v0, 0x7f0c0080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;->img_icon:Landroid/widget/ImageView;

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    const v0, 0x7f0c004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;->img_icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getImageResid()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;->getTitleResid()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-object p2

    .line 81
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->holder:Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter$ViewHolder;

    goto :goto_0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/tool/model/ToolBaseDataInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/tools/adapter/ToolsAdapter;->list:Ljava/util/List;

    .line 90
    return-void
.end method
