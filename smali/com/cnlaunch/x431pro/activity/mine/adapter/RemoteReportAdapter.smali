.class public Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


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
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;>;"
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    .line 26
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    const v0, 0x7f0d025e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;->tv_reportName:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    const v0, 0x7f0d01b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;->tv_diagnose_time:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;->tv_reportName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;->tv_diagnose_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->getDiagnosis_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter$ViewHolder;

    goto :goto_0
.end method
