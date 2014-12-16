.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;


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
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    .line 28
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->list:Ljava/util/ArrayList;

    .line 29
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    const v0, 0x7f0d006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object p2

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter$ViewHolder;

    goto :goto_0
.end method
