.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CombineMenuShowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "firtItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 20
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->list:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    const v0, 0x7f0d006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    const v0, 0x7f0d013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 56
    return-object p2

    .line 50
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->list:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;->notifyDataSetChanged()V

    .line 67
    return-void
.end method
