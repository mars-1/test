.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeciaFunctionListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private itemIsActive:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mScreenWidth:I

.field scale:[I

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;[II)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "scale"
    .parameter "mScreenWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;",
            "Landroid/content/Context;",
            "[II)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->itemIsActive:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    .line 37
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->list:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->scale:[I

    .line 41
    iput p4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mScreenWidth:I

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
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
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->itemIsActive:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;)V

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    .line 69
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0300c8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    const v7, 0x7f0c0262

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v8, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 71
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 77
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 78
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_1

    .line 95
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->itemIsActive:I

    if-ne v7, p1, :cond_3

    .line 96
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setActivated(Z)V

    .line 100
    :goto_2
    return-object p2

    .line 73
    .end local v0           #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .end local v1           #i:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    goto :goto_0

    .line 79
    .restart local v0       #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .restart local v1       #i:I
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-virtual {v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->scale:[I

    aget v7, v7, v1

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float v6, v7, v8

    .line 82
    .local v6, width:F
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mScreenWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 83
    .local v4, tvWidth:I
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f08005d

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v2, margin:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x3

    const/16 v8, 0xf

    const/4 v9, 0x3

    const/16 v10, 0xf

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2

    .line 89
    new-instance v5, Landroid/view/View;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 90
    .local v5, view:Landroid/view/View;
    const v7, -0x19191a

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;

    iget-object v7, v7, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter$ViewHolder;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 98
    .end local v2           #margin:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #tv:Landroid/widget/TextView;
    .end local v4           #tvWidth:I
    .end local v6           #width:F
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2
.end method

.method public setItemIsActive(I)V
    .locals 0
    .parameter "itemIsActive"

    .prologue
    .line 125
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->itemIsActive:I

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->notifyDataSetChanged()V

    .line 127
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->list:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListViewAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method
