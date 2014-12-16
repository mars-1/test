.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataStreamShowListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private itemIsActive:I

.field private mContext:Landroid/content/Context;

.field private mCurrentType:Ljava/lang/String;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "type"
    .parameter "mask"
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->itemIsActive:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mCurrentType:Ljava/lang/String;

    .line 43
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->initCheckBox(Ljava/lang/String;)V

    .line 44
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private initCheckBox(Ljava/lang/String;)V
    .locals 4
    .parameter "mask"

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 127
    return-void

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x31

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSelectItem(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 135
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public antiSelectItem()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 181
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

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

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 53
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
    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelect()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->itemIsActive:I

    return v0
.end method

.method public getMaskString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 192
    :cond_0
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->isSelectItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "1"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_1
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 70
    monitor-enter p0

    if-nez p2, :cond_0

    .line 71
    :try_start_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;)V

    .line 72
    .local v0, viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    const v1, 0x7f0d006e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0d013f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0d0257

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->unit:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0d0255

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->id:Ljava/lang/String;

    .line 82
    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->unit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 86
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->isSelectItem(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 88
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->itemIsActive:I

    if-ne v1, p1, :cond_1

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_1
    monitor-exit p0

    return-object p2

    .line 79
    .end local v0           #viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;

    .restart local v0       #viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;
    goto :goto_0

    .line 91
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local v0           #viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter$ViewHolder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getselectNum()I
    .locals 3

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, selectNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 207
    return v1

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->isSelectItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reUpdateList()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    .line 230
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method

.method public selectPageItem(II)V
    .locals 3
    .parameter "firstPosition"
    .parameter "lastPosition"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-le v0, p2, :cond_3

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mIsSelect:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCheck(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->itemIsActive:I

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setItemSelect(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 220
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->itemIsActive:I

    .line 221
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    .line 222
    return-void
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, mlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->mData:Ljava/util/List;

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DataStreamShowListAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method
