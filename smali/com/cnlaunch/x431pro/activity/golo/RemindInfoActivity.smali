.class public Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "RemindInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;,
        Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;
    }
.end annotation


# static fields
.field private static final MSG_FAIL:I = 0x1

.field private static final MSG_SUC:I = 0x2

.field private static final REQUEST_REMIND_DETAIL:I = 0x30d41

.field private static final REQUEST_REMIND_READ:I = 0x30d42

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

.field private customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

.field private fragmentView:Landroid/view/View;

.field private full:Landroid/widget/ImageView;

.field private historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

.field private lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

.field private mContext:Landroid/content/Context;

.field private mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

.field private final mHandler:Landroid/os/Handler;

.field private mPageNo:I

.field private mPageSize:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSourceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private msgTitleBar:Landroid/view/View;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private pub_id:Ljava/lang/String;

.field private pub_name:Ljava/lang/String;

.field private remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

.field private seriNo:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private zoom:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    .line 81
    const/16 v0, 0x14

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageSize:I

    .line 95
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mHandler:Landroid/os/Handler;

    .line 571
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->checkNetWork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    return v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mTotalSize:I

    return v0
.end method

.method private addScheduledDetail()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->hasSheduled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v1, :cond_3

    .line 395
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;-><init>()V

    .line 396
    .local v0, info:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setGoloRemoteOrderInfo(Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V

    .line 397
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V

    .line 398
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 399
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->addDataList(ILjava/util/List;)Ljava/util/List;

    .line 400
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 401
    .end local v0           #info:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    instance-of v1, v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v1, :cond_1

    .line 402
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;-><init>()V

    .line 403
    .restart local v0       #info:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setGoloRepairInfo(Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;)V

    .line 404
    sget-object v1, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V

    .line 405
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 406
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->addDataList(ILjava/util/List;)Ljava/util/List;

    .line 407
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private checkNetWork()Z
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRemindInfo()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->checkNetWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x30d41

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->request(I)V

    .line 146
    :cond_0
    return-void
.end method

.method private getRemindItemInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/History;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, mTipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 433
    :cond_0
    return-object v1

    .line 426
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/History;

    .line 427
    .local v2, tmp:Lcom/cnlaunch/x431pro/module/golo/model/History;
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;-><init>()V

    .line 428
    .local v0, remindItemInfo:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setHistory(Lcom/cnlaunch/x431pro/module/golo/model/History;)V

    .line 429
    sget-object v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V

    .line 430
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getScreenHeight()I
    .locals 2

    .prologue
    .line 540
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 541
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 542
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method private hasSheduled()Z
    .locals 4

    .prologue
    .line 413
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 414
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    .line 415
    .local v0, tmp:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REMOTE:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->REPAIR:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    if-ne v2, v3, :cond_0

    .line 416
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 8

    .prologue
    const v7, 0x7f0d0041

    .line 150
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->btn_left:Landroid/widget/ImageButton;

    const/high16 v6, 0x41f0

    invoke-static {p0, v6}, Lcom/cnlaunch/x431pro/utils/Tools;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setMaxHeight(I)V

    .line 151
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->btn_left:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 152
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->btn_left:Landroid/widget/ImageButton;

    const v6, 0x7f0204d4

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 153
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->btn_left:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v5, 0x7f0d01f2

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 155
    new-instance v5, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    .line 156
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v6, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    const v5, 0x7f0d039b

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->title:Landroid/widget/TextView;

    .line 201
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->title:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->userName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v5, 0x7f0d039d

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    .line 203
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    const v5, 0x7f0d039e

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->zoom:Landroid/widget/ImageView;

    .line 206
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->zoom:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v5, 0x7f0d0419

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->msgTitleBar:Landroid/view/View;

    .line 208
    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    .line 209
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showHalfScreen()V

    .line 210
    const v5, 0x7f0d039c

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, exit:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 212
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 213
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 214
    .local v3, ft:Landroid/app/FragmentTransaction;
    new-instance v4, Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;-><init>()V

    .line 219
    .local v4, msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, args:Landroid/os/Bundle;
    const-string/jumbo v5, "chatroom"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 221
    invoke-virtual {v4, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    invoke-virtual {v3, v7, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 223
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 224
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setOnRefreshListener()V

    .line 226
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 566
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 567
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "login_cancle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    return-void
.end method

.method private setOnRefreshListener()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 261
    return-void
.end method

.method private setRefreshMode(III)V
    .locals 2
    .parameter "totalSize"
    .parameter "pageNo"
    .parameter "type"

    .prologue
    .line 282
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageSize:I

    mul-int/2addr v0, p2

    if-ge v0, p1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageSize:I

    mul-int/2addr v0, p2

    if-lt v0, p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    sget-object v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setMode(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    goto :goto_0
.end method

.method private showFullScreen()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 516
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setHeadVisibility(I)V

    .line 517
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 518
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getScreenHeight()I

    move-result v1

    .line 519
    .local v1, screenHeight:I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->msgTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v1, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 521
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 523
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    const v3, 0x7f020450

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 524
    return-void
.end method

.method private showHalfScreen()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 528
    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setHeadVisibility(I)V

    .line 529
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 530
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getScreenHeight()I

    move-result v2

    .line 531
    .local v2, screenHeight:I
    div-int/lit8 v0, v2, 0x2

    .line 532
    .local v0, height:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 533
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v3, v0, -0x32

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 534
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 535
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    const v4, 0x7f02044f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 537
    return-void
.end method

.method private showMinWindow()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setHeadVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->zoom:Landroid/widget/ImageView;

    const v1, 0x7f020452

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 510
    return-void
.end method

.method private showNormalWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->full:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showFullScreen()V

    .line 500
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->zoom:Landroid/widget/ImageView;

    const v1, 0x7f020451

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 501
    return-void

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showHalfScreen()V

    goto :goto_0
.end method

.method public static startBundingActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "chatRoom"
    .parameter "seriNo"

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "seriNo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "chatroom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 593
    return-void
.end method

.method public static startFollowedActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "chatRoom"
    .parameter "prefix"

    .prologue
    .line 604
    invoke-static {p0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->startImActivity(Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public static startScheduledActivity(Landroid/content/Context;Lcom/cnlaunch/newgolo/model/ChatRoom;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;)V
    .locals 2
    .parameter "context"
    .parameter "chatRoom"
    .parameter "prefix"
    .parameter "object"

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "prefix"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v1, "chatroom"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 599
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 8
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 326
    packed-switch p1, :pswitch_data_0

    .line 346
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 328
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->userId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->seriNo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, detail:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, cc:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->seriNo:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageSize:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 333
    .end local v0           #cc:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 334
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x30d41
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected loadRemindDetail(ILjava/lang/String;)V
    .locals 4
    .parameter "position"
    .parameter "serial_num"

    .prologue
    .line 229
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 230
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 232
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$TipDetailAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 475
    .local v0, id:I
    const v1, 0x7f0d039d

    if-ne v0, v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showFullScreen()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showHalfScreen()V

    goto :goto_0

    .line 481
    :cond_2
    const v1, 0x7f0d039e

    if-ne v0, v1, :cond_4

    .line 482
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showMinWindow()V

    goto :goto_0

    .line 485
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showNormalWindow()V

    goto :goto_0

    .line 487
    :cond_4
    const v1, 0x7f0d0289

    if-ne v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 553
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 554
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showHalfScreen()V

    goto :goto_0

    .line 560
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->showFullScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v1, 0x7f030170

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setContentView(I)V

    .line 123
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    .line 125
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "seriNo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->seriNo:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "chatroom"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    .line 128
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->userId:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->userName:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_id:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_name:Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->customerInfo:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    .line 133
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pub_id :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pub_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->pub_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mWindowManager:Landroid/view/WindowManager;

    .line 135
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->initView()V

    .line 136
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->registerBroadcastReceiver()V

    .line 137
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getRemindInfo()V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 608
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 609
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 439
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->finish()V

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 7
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 351
    packed-switch p1, :pswitch_data_0

    .line 384
    :goto_0
    :pswitch_0
    return-void

    .line 353
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->lv_remind_info:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 357
    if-eqz p2, :cond_1

    move-object v1, p2

    .line 358
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;

    .line 359
    .local v1, remindResponse:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getCode()I

    move-result v3

    if-nez v3, :cond_4

    .line 360
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    .line 361
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, mTipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getRemindItemInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->addDataList(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;

    .line 365
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mTotalSize:I

    .line 367
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getUnreadsize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getUnreadsize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 369
    .local v2, unRead:I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const v5, 0x7f0706c7

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mTotalSize:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setTitle(Ljava/lang/String;)V

    .line 370
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mTotalSize:I

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mPageNo:I

    invoke-direct {p0, v3, v5, v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setRefreshMode(III)V

    .line 376
    .end local v0           #mTipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    .end local v1           #remindResponse:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    .end local v2           #unRead:I
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->addScheduledDetail()V

    goto/16 :goto_0

    .restart local v0       #mTipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    .restart local v1       #remindResponse:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :cond_2
    move v3, v4

    .line 366
    goto :goto_1

    :cond_3
    move v2, v4

    .line 367
    goto :goto_2

    .line 373
    .end local v0           #mTipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x30d41
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
