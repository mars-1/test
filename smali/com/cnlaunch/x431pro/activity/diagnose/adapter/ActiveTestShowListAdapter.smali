.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveTestShowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mCurrentActiveType:Ljava/lang/String;

.field private mIsSelect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .parameter "type"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mCurrentActiveType:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    .line 42
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mCurrentActiveType:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->initCheckBox(Ljava/util/List;)V

    .line 47
    return-void
.end method

.method private initCheckBox(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 120
    .end local v0           #i:I
    :cond_0
    return-void

    .line 117
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSelectItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public antiSelectItem()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMaskString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 189
    :cond_0
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->isSelectItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "1"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    if-nez p2, :cond_1

    .line 73
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    const v0, 0x7f0c0258

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    const v0, 0x7f0c006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    const v0, 0x7f0c013f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    const v0, 0x7f0c025a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->unit:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->id:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;->unit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mCurrentActiveType:Ljava/lang/String;

    const-string/jumbo v1, "610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-object p2

    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getselectNum()I
    .locals 3

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, selectNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 204
    return v1

    .line 202
    :cond_0
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->isSelectItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public selectPageItem(II)V
    .locals 3
    .parameter "firstPosition"
    .parameter "lastPosition"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-le v0, p2, :cond_3

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCheck(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->mlist:Ljava/util/List;

    .line 101
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->initCheckBox(Ljava/util/List;)V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->notifyDataSetChanged()V

    .line 103
    return-void
.end method
