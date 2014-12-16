.class public Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "MyReportFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
        "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "MyReportFragment"


# instance fields
.field private adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

.field private btnMore:Landroid/widget/Button;

.field private items_diagnosis_report:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private items_iagnosis_playback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private items_remote_diagnosis_report:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private login_state:Ljava/lang/String;

.field private lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

.field private mHandler:Landroid/os/Handler;

.field private mReportType:Ljava/lang/String;

.field private page:I

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

.field private tv_diagnosis_playback:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

.field private tv_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

.field private tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    .line 74
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I

    .line 293
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I

    return v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    return-object v0
.end method

.method private getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "filePath"
    .parameter "reportType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v8, reportList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 184
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 185
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v11, v4

    if-lt v6, v11, :cond_1

    .line 216
    new-instance v11, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$4;

    invoke-direct {v11, p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 229
    .end local v6           #i:I
    :cond_0
    return-object v8

    .line 186
    .restart local v6       #i:I
    :cond_1
    aget-object v2, v4, v6

    .line 187
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, filetype:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 191
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    .line 192
    .local v9, time:J
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    const-string/jumbo v11, "0"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 195
    const-string/jumbo v11, ".txt"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, ".jpg"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 196
    :cond_2
    new-instance v7, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    .end local v7           #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-direct {v7}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;-><init>()V

    .line 197
    .restart local v7       #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportName(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportTime(Ljava/util/Date;)V

    .line 199
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    :cond_4
    const-string/jumbo v11, "2"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 202
    const-string/jumbo v11, "x431"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 203
    new-instance v7, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    .end local v7           #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-direct {v7}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;-><init>()V

    .line 204
    .restart local v7       #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportTime(Ljava/util/Date;)V

    .line 206
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_5
    const-string/jumbo v11, "1"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 209
    new-instance v7, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;

    .end local v7           #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-direct {v7}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;-><init>()V

    .line 210
    .restart local v7       #mReport:Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportName(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/cnlaunch/x431pro/module/mine/model/ReportFileInfo;->setReportTime(Ljava/util/Date;)V

    .line 212
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getRemoteReport(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 315
    return-object v1

    .line 310
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;

    .line 311
    .local v0, item:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 312
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initViews()V
    .locals 6

    .prologue
    const v5, 0x7f0705a4

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 109
    const v0, 0x7f07059c

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->setTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0375

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v1, "login_state"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0374

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0371

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0372

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0373

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_diagnosis_playback:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_diagnosis_playback:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d01e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->radioGroup:Landroid/widget/RadioGroup;

    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 176
    return-void

    .line 130
    :cond_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    .line 132
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    :cond_2
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->tv_remote_diagnosis_report:Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/button/MequeeRadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 5
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 275
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 265
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, useID:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v1, 0x0

    goto :goto_0

    .line 269
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, action:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->page:I

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->queryReport(Ljava/lang/String;I)Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;

    move-result-object v1

    .line 271
    .local v1, reportResponse:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    .line 86
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    .line 87
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->initViews()V

    .line 88
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/16 v3, 0x8

    .line 234
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    .line 238
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 242
    :pswitch_1
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    .line 244
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->remoteAdapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/RemoteReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0706d8

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 250
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 248
    const/16 v0, 0x7531

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->request(I)V

    goto :goto_1

    .line 253
    :pswitch_2
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    .line 254
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    .line 255
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->lv_myreport:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->adapter:Lcom/cnlaunch/x431pro/activity/mine/adapter/MyReportAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->btnMore:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0371
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v0, 0x7f03013b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 326
    if-eqz p2, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 332
    :cond_0
    return-void
.end method

.method public onRefresh(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, refreshView:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase;,"Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mReportType:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/16 v0, 0x7531

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->request(I)V

    .line 323
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 98
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_diagnosis_report:Ljava/util/List;

    .line 101
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_iagnosis_playback:Ljava/util/List;

    .line 102
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->initViews()V

    .line 103
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_0

    .line 289
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 283
    check-cast v0, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;

    .line 284
    .local v0, reportResponse:Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/report/model/DownLoadReportResponse;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->getRemoteReport(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->items_remote_diagnosis_report:Ljava/util/ArrayList;

    .line 285
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_0
    .end packed-switch
.end method
