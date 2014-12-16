.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DatastreamSelectListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;,
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$SortRuleCollator;,
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private isOnClickable:Z

.field private isReplayDatastream:Z

.field private isSort:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCollator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskCount:I

.field private mMaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskStr:Ljava/lang/StringBuilder;

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "isSort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isOnClickable:Z

    .line 33
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSort:Z

    .line 35
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mCollator:Ljava/util/Comparator;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    .line 39
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    .line 40
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isReplayDatastream:Z

    .line 74
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->initMaskBuilder()V

    .line 46
    iput-boolean p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSort:Z

    .line 47
    invoke-virtual {p0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setSort(Z)V

    .line 48
    if-eqz p3, :cond_0

    .line 49
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$SortRuleCollator;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$SortRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mCollator:Ljava/util/Comparator;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mCollator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 52
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 53
    return-void
.end method

.method private initMaskBuilder()V
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 291
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSelectItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->isCheck()Z

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInitMask(IIZ)V
    .locals 2
    .parameter "oldIndex"
    .parameter "currentIndex"
    .parameter "selected"

    .prologue
    .line 267
    if-eqz p3, :cond_0

    .line 268
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    .line 269
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    sget v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    if-ne v0, v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    .line 274
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->initMaskBuilder()V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskStr:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->initMaskBuilder()V

    goto :goto_0
.end method


# virtual methods
.method public antiSelectItem()V
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCheckFirstPosition()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    move v0, v2

    .line 218
    :cond_1
    :goto_0
    return v0

    .line 213
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    move v0, v2

    .line 218
    goto :goto_0

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->isCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMaskString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSort:Z

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$BaseRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mCollator:Ljava/util/Comparator;

    .line 230
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mCollator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 232
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 233
    :cond_1
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSelectItem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "1"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_1
.end method

.method public getMaskStringList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    .line 244
    const/4 v1, 0x0

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskCount:I

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->mMaskList:Ljava/util/ArrayList;

    return-object v1

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getNum()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->isCheck()Z

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setInitMask(IIZ)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectMaskCount()I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 261
    return v0

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 78
    if-nez p2, :cond_1

    .line 79
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    .line 80
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 81
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    const v1, 0x7f0c0259

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    const v1, 0x7f0c0258

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 83
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->id:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSelectItem(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 92
    move v0, p1

    .line 93
    .local v0, index:I
    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isOnClickable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isReplayDatastream:Z

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 104
    return-object p2

    .line 85
    .end local v0           #index:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public isSort()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSort:Z

    return v0
.end method

.method public selectAllItem()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectAllItem(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public selectPageItem(II)V
    .locals 3
    .parameter "firstPosition"
    .parameter "lastPosition"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-le v0, p2, :cond_3

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setItemCheck(IZ)V
    .locals 1
    .parameter "which"
    .parameter "flag"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method public setItemCheck(I)Z
    .locals 2
    .parameter "which"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->isCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 109
    .local v0, flag:Z
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    .line 111
    return v0

    .line 108
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnClickable(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isOnClickable:Z

    .line 57
    return-void
.end method

.method public setReplaydatastreamFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isReplayDatastream:Z

    .line 334
    return-void
.end method

.method public setSort(Z)V
    .locals 0
    .parameter "isSort"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->isSort:Z

    .line 330
    return-void
.end method

.method public unSelectItem()V
    .locals 3

    .prologue
    .line 182
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
