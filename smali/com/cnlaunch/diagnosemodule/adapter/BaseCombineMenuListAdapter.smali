.class public Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseCombineMenuListAdapter.java"


# instance fields
.field private firtItem:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 0
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
    .line 27
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->list:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p3, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->firtItem:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackCmd(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "008"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->firtItem:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->firtItem:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, feedback:Ljava/lang/String;
    return-object v0

    .line 59
    .end local v0           #feedback:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->firtItem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getFeedbackType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "46"

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/adapter/BaseCombineMenuListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 50
    return-object p2
.end method
