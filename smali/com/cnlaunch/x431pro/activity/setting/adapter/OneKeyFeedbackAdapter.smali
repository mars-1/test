.class public Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "OneKeyFeedbackAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static isSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, vList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 50
    .end local v0           #i:I
    :cond_0
    return-void

    .line 47
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setIsSelected(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, isSelected:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    sput-object p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    .line 66
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsSelected()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    if-nez p2, :cond_1

    .line 89
    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    .line 90
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030156

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v1, 0x7f0d03c0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    .line 92
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v1, 0x7f0d03c1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v1, 0x7f0d03c2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v1, 0x7f0d03c3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, ctime:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0           #ctime:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    return-object p2

    .line 103
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    .line 104
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .restart local v0       #ctime:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getmList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    return-object v0
.end method

.method public setmList(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, mList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    .line 58
    return-void
.end method
