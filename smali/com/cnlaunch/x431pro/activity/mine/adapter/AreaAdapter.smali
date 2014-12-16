.class public Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;
.super Landroid/widget/BaseAdapter;
.source "AreaAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 5
    .parameter "section"

    .prologue
    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 89
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 82
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, sortStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, firstChar:C
    if-eq v0, p1, :cond_0

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, viewHolder:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    .line 48
    .local v0, mContent:Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;
    if-nez p2, :cond_0

    .line 49
    new-instance v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;

    .end local v2           #viewHolder:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;-><init>()V

    .line 50
    .restart local v2       #viewHolder:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 51
    const v4, 0x7f030138

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    const v3, 0x7f0c0375

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_area_name:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f0c0374

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 60
    .local v1, section:I
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->getPositionForSection(I)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 61
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getSortLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    iget-object v4, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_area_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2

    .line 57
    .end local v1           #section:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHolder:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    check-cast v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;
    goto :goto_0

    .line 64
    .restart local v1       #section:I
    :cond_1
    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter$ViewHolder;->tv_letter:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/widget/sortlistview/SortModel;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->list:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/AreaAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
