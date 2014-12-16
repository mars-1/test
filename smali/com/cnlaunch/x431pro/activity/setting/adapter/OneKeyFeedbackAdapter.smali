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

.field private mFragment:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "fragment"
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
            ">;",
            "Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, vList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    .line 49
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    .line 52
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 57
    .end local v0           #i:I
    :cond_0
    return-void

    .line 54
    .restart local v0       #i:I
    :cond_1
    sget-object v1, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    return-object v0
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
    .line 72
    .local p0, isSelected:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    sput-object p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    .line 73
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 80
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
    .line 68
    sget-object v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->isSelected:Ljava/util/HashMap;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 95
    if-nez p2, :cond_1

    .line 96
    new-instance v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;-><init>(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030158

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 98
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v2, 0x7f0c03d6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v3, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    .line 99
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v2, 0x7f0c03d7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    .line 100
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v2, 0x7f0c03d8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    .line 101
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    const v2, 0x7f0c03d9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, ctime:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v1           #ctime:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    move v0, p1

    .line 119
    .local v0, checkpPosition:I
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->cb_feedback_log_choice:Landroid/widget/CheckBox;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    return-object p2

    .line 110
    .end local v0           #checkpPosition:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    .line 111
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getVehicleSoftname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v3, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_filename:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getCreateDate()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1       #ctime:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->holder:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;

    iget-object v2, v2, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter$ViewHolder;->tv_feedback_log_time:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 60
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
    .line 64
    .local p1, mList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->mList:Ljava/util/Vector;

    .line 65
    return-void
.end method
