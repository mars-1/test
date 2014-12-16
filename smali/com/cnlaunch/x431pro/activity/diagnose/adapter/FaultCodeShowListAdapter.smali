.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FaultCodeShowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private itemIsActive:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->itemIsActive:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    .line 28
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 29
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 38
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
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->itemIsActive:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 56
    if-nez p2, :cond_1

    .line 57
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    const v1, 0x7f0d006e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    const v1, 0x7f0d013f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    const v1, 0x7f0d0140

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->statue:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->id:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, context:Ljava/lang/String;
    const-string/jumbo v1, "CONSULT HANDBOOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070563

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;->statue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->itemIsActive:I

    if-ne v1, p1, :cond_2

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 80
    :goto_1
    return-object p2

    .line 64
    .end local v0           #context:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter$ViewHolder;

    goto :goto_0

    .line 78
    .restart local v0       #context:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1
.end method

.method public setItemIsActive(I)V
    .locals 0
    .parameter "itemIsActive"

    .prologue
    .line 105
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->itemIsActive:I

    .line 106
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->list:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
