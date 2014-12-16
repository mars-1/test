.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImagePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private itemIsActive:I

.field private pageCount:I

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "mContext"
    .parameter "num"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->itemIsActive:I

    .line 21
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->pageCount:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    .line 24
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->pageCount:I

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->pageCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->itemIsActive:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    const v0, 0x7f0c0256

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->itemIsActive:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 56
    return-object p2

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter$ViewHolder;

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setItemIsActive(I)V
    .locals 0
    .parameter "itemIsActive"

    .prologue
    .line 69
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->itemIsActive:I

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ImagePageAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method
