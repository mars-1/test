.class public Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeciaFunctionButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field activeTestButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    .line 31
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, -0x2

    .line 59
    if-nez p2, :cond_0

    .line 60
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    .line 61
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    const v1, 0x7f0c004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 64
    .local v0, tp:Landroid/text/TextPaint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 65
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .end local v0           #tp:Landroid/text/TextPaint;
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-object p2

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->viewHolder:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter$ViewHolder;

    goto :goto_0
.end method

.method public updateList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 80
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->notifyDataSetChanged()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->activeTestButton:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SpeciaFunctionButtonAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
