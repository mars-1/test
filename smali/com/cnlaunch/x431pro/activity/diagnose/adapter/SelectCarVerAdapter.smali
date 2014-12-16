.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCarVerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$SortRuleCollator;,
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field delListenter:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemIsActive:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private softName:Ljava/lang/String;

.field private viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;)V
    .locals 3
    .parameter "mContext"
    .parameter
    .parameter "softName"
    .parameter "delListenter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->softName:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->delListenter:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;

    .line 70
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    .line 36
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    .line 37
    if-eqz p2, :cond_1

    .line 38
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$SortRuleCollator;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$SortRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    .line 46
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->softName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->delListenter:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 49
    return-void

    .line 44
    :cond_1
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 74
    if-nez p2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    .line 77
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    const v0, 0x7f0c01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 78
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    const v0, 0x7f0c01ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->ver:Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    const v0, 0x7f0c01c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->del:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->softName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->ver:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->del:Landroid/widget/ImageView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;->del:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    if-ne v0, p1, :cond_2

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 99
    :goto_2
    return-object p2

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 93
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method public setItemIsActive(I)V
    .locals 0
    .parameter "itemIsActive"

    .prologue
    .line 113
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/diagnose/model/CarVersionInfo;>;"
    const/4 v1, -0x1

    .line 127
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_0
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->notifyDataSetChanged()V

    .line 137
    return-void

    .line 132
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    if-ne v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->itemIsActive:I

    goto :goto_0
.end method
