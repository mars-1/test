.class public Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "mfragment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 64
    if-nez p2, :cond_1

    .line 65
    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    .line 66
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03013c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    const v1, 0x7f0d0376

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_name:Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    const v1, 0x7f0d0377

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_cartype:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    const v1, 0x7f0d0378

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_serialnumber:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    const v1, 0x7f0d0379

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_time:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_serialnumber:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 76
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-object p2

    .line 80
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    .line 81
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_serialnumber:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 85
    .restart local v0       #formatter:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->holder:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter$ViewHolder;->tv_myreport_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->getReportTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
