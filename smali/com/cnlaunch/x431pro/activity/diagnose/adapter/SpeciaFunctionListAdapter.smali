.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeciaFunctionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field colums:I

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field selectedPosition:I

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "colums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->selectedPosition:I

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->colums:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    .line 23
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    .line 24
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    iput p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->colums:I

    .line 26
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "contentView"
    .parameter "arg2"

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    const v1, 0x7f0d006e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, value:Ljava/lang/String;
    const-string/jumbo v1, "\n\n"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2

    .line 62
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public refersh(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->list:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 30
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionListAdapter;->selectedPosition:I

    .line 31
    return-void
.end method
