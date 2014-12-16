.class public Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "GoloFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;,
        Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;
    }
.end annotation


# static fields
.field private static final ID_TIP_CUSTOMER:I = 0x2

.field private static final MSG_GET_DATA_FAIL:I = 0x1

.field private static final MSG_GET_DATA_PUBID_FAIL:I = 0x4

.field private static final MSG_GET_DATA_SUC:I = 0x2

.field private static final MSG_SHOW_GOLO_DETAIL:I = 0x5

.field private static final MSG_UPDATA_BUNDING_DISPLAY:I = 0x8

.field private static final MSG_UPDATA_CONFLICT_STATUS:I = 0xa

.field private static final MSG_UPDATA_COUNT:I = 0x6

.field private static final MSG_UPDATA_REMOTEDIAGNOSE_DATA:I = 0x7

.field private static final MSG_UPDAT_REMOTEORDER_USERS:I = 0x9

.field private static final REQUEST_BUNDINGLIST:I = 0x1

.field private static final REQUEST_GZLIST:I = 0x3

.field private static final REQUEST_REMOTELIST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GoloFragment"

.field private static final TYPE_ATT_USER:I = 0x2

.field private static final TYPE_BUNDING_USER:I = 0x0

.field private static final TYPE_REMOTE_USER:I = 0x1

.field private static conflictList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static myIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private allBundingNewMsg:I

.field private allNewCount_a:Landroid/widget/TextView;

.field private allNewCount_b:Landroid/widget/TextView;

.field private allScheduledNewCount:Landroid/widget/TextView;

.field private allTipCount:I

.field private assortView_client:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

.field private assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

.field private attTitle:Landroid/widget/RadioButton;

.field private bundingTitle:Landroid/widget/RadioButton;

.field private bunding_l:Landroid/view/View;

.field cc:Ljava/lang/String;

.field private cheyunDiagnose:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

.field private cheyunTeam:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

.field private clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

.field private conflict_hit:Landroid/widget/TextView;

.field private customer_type:Ljava/lang/String;

.field private datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

.field private deviceObserver:Ljava/util/Observer;

.field private diag_id:Ljava/lang/String;

.field private diag_uid:Ljava/lang/String;

.field private filterDateAttList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private filterDateBindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation
.end field

.field private filterDateRemoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private guanzhuDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private guanzhu_l:Landroid/view/View;

.field private intentChangeObserver:Ljava/util/Observer;

.field private isClientOk:Z

.field private isRemindOk:Z

.field private layout_client:Landroid/widget/RelativeLayout;

.field private layout_remind:Landroid/widget/RelativeLayout;

.field private listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

.field private mConflictStatus:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

.field private mContext:Landroid/content/Context;

.field private mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

.field private mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

.field private mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

.field private mPageNo:I

.field private mPageSize:I

.field private mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

.field private mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

.field private mRepairUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RepairUserAdapter;

.field private mTotalSize:I

.field private mType:I

.field private orderObserver:Ljava/util/Observer;

.field private pub_id:Ljava/lang/String;

.field private pub_name:Ljava/lang/String;

.field private remoteOrderTitle:Landroid/widget/RadioButton;

.field private remoteUsersDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private remote_order_l:Landroid/view/View;

.field private repairUsersDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sourceDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation
.end field

.field private tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mPageNo:I

    .line 150
    const/16 v0, 0x14

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mPageSize:I

    .line 158
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    .line 163
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    .line 164
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isRemindOk:Z

    .line 997
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    .line 1401
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 1433
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    .line 2459
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    invoke-direct {v0, p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mConflictStatus:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    .line 2627
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    .line 2675
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->intentChangeObserver:Ljava/util/Observer;

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 997
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 169
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    return v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflict_hit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1543
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendCancelCmd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    return v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1518
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendFinishCmd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1494
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendProcessingCmd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1470
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sendResetCmd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;
    .locals 1
    .parameter

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    return-object v0
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2629
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V

    return-void
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isRemindOk:Z

    return v0
.end method

.method static synthetic access$30(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$31(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1084
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$32(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$33(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    return-void
.end method

.method static synthetic access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$35(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1656
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUnreadTipCountForSerial()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    return-void
.end method

.method static synthetic access$37(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$38(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    return-object v0
.end method

.method static synthetic access$39(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    return-object v0
.end method

.method static synthetic access$40(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$42(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$43(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$44(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    return-object v0
.end method

.method static synthetic access$45(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$46(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 158
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    return v0
.end method

.method private checkNetWork()Z
    .locals 3

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x1

    .line 1362
    :goto_0
    return v0

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1362
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cheyunDiagnose()Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    .locals 7

    .prologue
    .line 1371
    new-instance v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;-><init>()V

    .line 1372
    .local v3, vipUser:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0700aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_name(Ljava/lang/String;)V

    .line 1373
    const-string/jumbo v4, "drawable://2130838054"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setFace_thumb(Ljava/lang/String;)V

    .line 1374
    const-string/jumbo v4, "666888"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_id(Ljava/lang/String;)V

    .line 1375
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    const-string/jumbo v5, "666888"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/model/ChatManager;->getUnreadNumber(Ljava/lang/String;)I

    move-result v0

    .line 1376
    .local v0, count:I
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    const-string/jumbo v5, "666888"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/model/ChatManager;->getLastMsgTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 1377
    .local v1, time:J
    const-string/jumbo v4, "GoloFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user_id:666888, time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setNewMsgCount(I)V

    .line 1379
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/Tools;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setLastTime(Ljava/lang/String;)V

    .line 1380
    return-object v3
.end method

.method private cheyunTeam()Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    .locals 7

    .prologue
    .line 1389
    new-instance v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;-><init>()V

    .line 1390
    .local v3, vipUser:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f0700ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_name(Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v4, "drawable://2130838055"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setFace_thumb(Ljava/lang/String;)V

    .line 1392
    const-string/jumbo v4, "666666"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_id(Ljava/lang/String;)V

    .line 1393
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    const-string/jumbo v5, "666666"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/model/ChatManager;->getUnreadNumber(Ljava/lang/String;)I

    move-result v0

    .line 1394
    .local v0, count:I
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v4

    const-string/jumbo v5, "666666"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/newgolo/model/ChatManager;->getLastMsgTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 1395
    .local v1, time:J
    const-string/jumbo v4, "GoloFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "user_id:666666, time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-virtual {v3, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setNewMsgCount(I)V

    .line 1397
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/Tools;->getTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setLastTime(Ljava/lang/String;)V

    .line 1398
    return-object v3
.end method

.method private deleteFollowedList()V
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteAllFollowed()V

    .line 2087
    return-void
.end method

.method private deleteRegisterList()V
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteAllRegister()V

    .line 2141
    return-void
.end method

.method private deleteRegisterList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2243
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2248
    return-void

    .line 2243
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 2244
    .local v0, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2245
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteRegisteredCustomer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteRemoteCustomer(Ljava/lang/String;)V
    .locals 1
    .parameter "request_id"

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteRemoteCustomer(Ljava/lang/String;)V

    .line 1995
    return-void
.end method

.method private deleteRemoteList()V
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteAllRemote()V

    .line 1886
    return-void
.end method

.method private deleteRepairList()V
    .locals 1

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteAllRepair()V

    .line 2004
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 946
    return-void
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 2
    .parameter "filterStr"

    .prologue
    .line 1242
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1243
    :goto_0
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1244
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->searchRemoteUser(Ljava/lang/String;)V

    .line 1250
    :cond_0
    :goto_1
    return-void

    .line 1242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1245
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    if-nez v0, :cond_3

    .line 1246
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->searchBundingUser(Ljava/lang/String;)V

    goto :goto_1

    .line 1247
    :cond_3
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1248
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->searchAttUser(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAttentionList(Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;)Ljava/util/List;
    .locals 4
    .parameter "attRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2606
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->cheyunTeam()Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->cheyunTeam:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 2607
    const/4 v1, 0x0

    .line 2608
    .local v1, users:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    if-eqz p1, :cond_0

    .line 2609
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;->getData()Ljava/util/List;

    move-result-object v1

    .line 2611
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2612
    .local v0, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 2613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    .line 2615
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->cheyunTeam:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2616
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2619
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V

    .line 2620
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V

    .line 2621
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteFollowedList()V

    .line 2622
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveFollowedList(Ljava/util/List;)V

    .line 2623
    return-object v1
.end method

.method private getBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;
    .locals 3
    .parameter "bundingRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2544
    if-nez p1, :cond_0

    .line 2545
    const/4 v1, 0x0

    .line 2562
    :goto_0
    return-object v1

    .line 2547
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v1

    .line 2550
    .local v1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUnreadTipCountForSerial()Ljava/util/List;

    move-result-object v0

    .line 2551
    .local v0, tipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updataListTipCountForSerial(Ljava/util/List;Ljava/util/List;)V

    .line 2552
    if-eqz v1, :cond_1

    .line 2553
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->totalUnreadTipCount(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    .line 2555
    :cond_1
    if-eqz v1, :cond_2

    .line 2556
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V

    .line 2557
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V

    .line 2560
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRegisterList()V

    .line 2561
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveRegisterList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getPublicId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 2710
    const/4 v2, 0x0

    .line 2711
    .local v2, pId:Ljava/lang/String;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "user_id"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2712
    .local v6, user_id:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2714
    .local v5, result:Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_start_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v7, v6}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->pidByt(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2718
    :goto_0
    if-eqz v5, :cond_2

    .line 2719
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v0

    .line 2720
    .local v0, data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    if-eqz v0, :cond_2

    .line 2721
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_id()Ljava/lang/String;

    move-result-object v3

    .line 2722
    .local v3, pub_id:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;->getPub_name()Ljava/lang/String;

    move-result-object v4

    .line 2723
    .local v4, pub_name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2724
    :cond_0
    move-object v4, v3

    .line 2726
    :cond_1
    const-string/jumbo v7, "GoloFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pub_id:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", pub_name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "null"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2728
    move-object v2, v3

    .line 2729
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_ID"

    invoke-virtual {v7, v8, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "USER_PUBLIC_NAME"

    invoke-virtual {v7, v8, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    .end local v0           #data:Lcom/cnlaunch/x431pro/module/golo/model/PidBytData;
    .end local v3           #pub_id:Ljava/lang/String;
    .end local v4           #pub_name:Ljava/lang/String;
    :cond_2
    return-object v2

    .line 2715
    :catch_0
    move-exception v1

    .line 2716
    .local v1, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v1}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized getPublicIdIfNeeded()V
    .locals 1

    .prologue
    .line 2700
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/Tools;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2701
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2703
    :cond_0
    monitor-exit p0

    return-void

    .line 2700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSingleBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;
    .locals 3
    .parameter "bundingRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2566
    if-nez p1, :cond_0

    .line 2567
    const/4 v2, 0x0

    .line 2582
    :goto_0
    return-object v2

    .line 2569
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v1

    .line 2571
    .local v1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUnreadTipCountForSerial()Ljava/util/List;

    move-result-object v0

    .line 2572
    .local v0, tipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updataListTipCountForSerial(Ljava/util/List;Ljava/util/List;)V

    .line 2573
    if-eqz v1, :cond_1

    .line 2574
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->totalUnreadTipCount(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    .line 2576
    :cond_1
    if-eqz v1, :cond_2

    .line 2577
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V

    .line 2578
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V

    .line 2581
    :cond_2
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRegisterList(Ljava/util/List;)V

    .line 2582
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->loadRegisterList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getSingleUnBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;
    .locals 3
    .parameter "bundingRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2586
    if-nez p1, :cond_0

    .line 2587
    const/4 v2, 0x0

    .line 2602
    :goto_0
    return-object v2

    .line 2589
    :cond_0
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;->getData()Ljava/util/List;

    move-result-object v1

    .line 2591
    .local v1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUnreadTipCountForSerial()Ljava/util/List;

    move-result-object v0

    .line 2592
    .local v0, tipList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updataListTipCountForSerial(Ljava/util/List;Ljava/util/List;)V

    .line 2593
    if-eqz v1, :cond_1

    .line 2594
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->totalUnreadTipCount(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    .line 2596
    :cond_1
    if-eqz v1, :cond_2

    .line 2597
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListUnreadCount(Ljava/util/List;)V

    .line 2598
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getUserListLastTime(Ljava/util/List;)V

    .line 2601
    :cond_2
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRegisterList(Ljava/util/List;)V

    .line 2602
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->loadRegisterList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getUnreadTipCountForSerial()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/Count;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    .local v1, countList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    const/4 v2, 0x0

    .line 1659
    .local v2, detail:Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "user_id"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, cc:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v4, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getCountList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1665
    :goto_0
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GetCountResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/CountData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/CountData;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1666
    return-object v1

    .line 1662
    :catch_0
    move-exception v3

    .line 1663
    .local v3, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUnreadTipCountForUsers()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/History;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1617
    const/4 v4, 0x1

    .line 1618
    .local v4, pageNum:I
    const/16 v5, 0x64

    .line 1619
    .local v5, pageSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    .local v3, historyList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/History;>;"
    const/4 v1, 0x0

    .line 1624
    .local v1, detail:Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v8

    const-string/jumbo v9, "user_id"

    invoke-virtual {v8, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, cc:Ljava/lang/String;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    const-string/jumbo v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v0, v9, v10, v11}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1629
    .end local v0           #cc:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1648
    :cond_0
    const-string/jumbo v8, "GoloFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "datas size :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    return-object v3

    .line 1626
    :catch_0
    move-exception v2

    .line 1627
    .local v2, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_1

    .line 1633
    .end local v2           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_1
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1634
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getSize()Ljava/lang/String;

    move-result-object v7

    .line 1635
    .local v7, sizeS:Ljava/lang/String;
    const-string/jumbo v8, "GoloFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "in while datas size :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",pageNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", sizeS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1637
    .local v6, size:Ljava/lang/Long;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1638
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1640
    :cond_2
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GetHistoryResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v5, :cond_0

    .line 1643
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-int v10, v4, v5

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1646
    add-int/lit8 v4, v4, 0x1

    .line 1621
    goto/16 :goto_0
.end method

.method private getUserListLastTime(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    new-array v1, v8, [Ljava/lang/String;

    .line 1119
    .local v1, datas:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v1

    if-lt v2, v8, :cond_0

    .line 1125
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1127
    .local v7, usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->getListMsgLastTime([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1128
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1129
    const-string/jumbo v8, "GoloFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "c size:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1141
    :goto_2
    invoke-direct {p0, p1, v7}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setTimeListData(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1142
    return-void

    .line 1120
    .end local v0           #c:Landroid/database/Cursor;
    .end local v7           #usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1122
    aput-object v3, v1, v2

    .line 1119
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1131
    .end local v3           #id:Ljava/lang/String;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v7       #usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    sget-object v8, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v8}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1132
    .local v4, roomId:Ljava/lang/String;
    sget-object v8, Lcom/cnlaunch/newgolo/model/ChatTable;->time:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v8}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1133
    .local v5, time:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string/jumbo v8, "GoloFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getUserListUnreadCount roomId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1138
    .end local v4           #roomId:Ljava/lang/String;
    .end local v5           #time:J
    :cond_3
    const-string/jumbo v8, "GoloFragment"

    const-string/jumbo v9, "getUserListLastTime c == null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getUserListUnreadCount(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    .line 1086
    .local v2, datas:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-lt v3, v7, :cond_0

    .line 1092
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1094
    .local v6, usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/cnlaunch/newgolo/model/ChatManager;->getListUnreadCount([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1095
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1096
    const-string/jumbo v7, "GoloFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "c size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1107
    :goto_2
    invoke-direct {p0, p1, v6}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setUnreadListData(Ljava/util/List;Ljava/util/HashMap;)V

    .line 1108
    return-void

    .line 1087
    .end local v0           #c:Landroid/database/Cursor;
    .end local v6           #usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {v7}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v4

    .line 1088
    .local v4, id:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1089
    aput-object v4, v2, v3

    .line 1086
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1098
    .end local v4           #id:Ljava/lang/String;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v6       #usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    sget-object v7, Lcom/cnlaunch/newgolo/model/ChatTable;->roomId:Lcom/cnlaunch/newgolo/model/ChatTable;

    invoke-virtual {v7}, Lcom/cnlaunch/newgolo/model/ChatTable;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1099
    .local v5, roomId:Ljava/lang/String;
    const-string/jumbo v7, "count"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1100
    .local v1, count:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string/jumbo v7, "GoloFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getUserListUnreadCount roomId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1105
    .end local v1           #count:I
    .end local v5           #roomId:Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "GoloFragment"

    const-string/jumbo v8, "getUserListUnreadCount c == null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static hidenConflict()V
    .locals 3

    .prologue
    .line 2488
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2489
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2493
    :cond_0
    return-void

    .line 2489
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    check-cast v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    .line 2490
    .restart local v0       #tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;->hiden()V

    goto :goto_0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 232
    const v1, 0x7f0d01ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    .line 233
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v1, 0x7f0d01ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    .line 235
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v1, 0x7f0d01e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    .line 237
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v1, 0x7f0d01e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/ClearEditText;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    .line 240
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->clearFocus()V

    .line 241
    const v1, 0x7f0d01f2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 242
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    const v1, 0x7f0d01ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    .line 247
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 252
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    .line 253
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    .line 254
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    const v1, 0x7f0d01f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    .line 257
    const v1, 0x7f0d01ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    .line 259
    const v1, 0x7f0d01f0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_client:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 260
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_client:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$4;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 272
    const v1, 0x7f0d01f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    .line 273
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 285
    const v1, 0x7f0d01ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    .line 286
    const v1, 0x7f0d01e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    .line 287
    const v1, 0x7f0d01e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    .line 288
    const v1, 0x7f0d01e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remote_order_l:Landroid/view/View;

    .line 289
    const v1, 0x7f0d01e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bunding_l:Landroid/view/View;

    .line 291
    const v1, 0x7f0d01eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhu_l:Landroid/view/View;

    .line 292
    const v1, 0x7f0d01e2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflict_hit:Landroid/widget/TextView;

    .line 293
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v4, "isconflict"

    invoke-virtual {v1, v4, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 294
    .local v0, conflict:Z
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflict_hit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setItemClickListener()V

    .line 296
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setOnRefreshListener()V

    .line 297
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setEditListener()V

    .line 298
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setRemoteDiagnoseListener()V

    .line 300
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showBundingBG()V

    .line 301
    return-void

    :cond_0
    move v1, v3

    .line 294
    goto :goto_0
.end method

.method private loadFollowedList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    .local v1, followedTempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->loadAllFollowed()Ljava/util/List;

    move-result-object v0

    .line 2119
    .local v0, followedCustomerList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/db/FollowedCustomer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2131
    return-object v1

    .line 2119
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/FollowedCustomer;

    .line 2120
    .local v3, tmp:Lcom/cnlaunch/newgolo/db/FollowedCustomer;
    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;-><init>()V

    .line 2121
    .local v2, goloAttentionInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getFace_thumb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setFace_thumb(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getFace_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setFace_url(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getLastTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setLastTime(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getNewMsgCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setNewMsgCount(I)V

    .line 2125
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setNick_name(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getSortKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setSortKey(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_id(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->setUser_name(Ljava/lang/String;)V

    .line 2129
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadRegisterList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2180
    .local v0, bindTempList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->loadAllRegister()Ljava/util/List;

    move-result-object v2

    .line 2181
    .local v2, registeredCustomerList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/db/RegisteredCustomer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2202
    return-object v0

    .line 2181
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;

    .line 2182
    .local v3, tmp:Lcom/cnlaunch/newgolo/db/RegisteredCustomer;
    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;-><init>()V

    .line 2183
    .local v1, goloBindInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getAuto_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setAuto_code(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getAuto_logos()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setAuto_logos(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getBunding_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setId(Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getIf_pass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setIf_pass(Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getLastTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setLastTime(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getNewMsgCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setNewMsgCount(I)V

    .line 2190
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setNick_name(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getSerial_no()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSerial_no(Ljava/lang/String;)V

    .line 2192
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getSortKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSortKey(Ljava/lang/String;)V

    .line 2193
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getUnReadTipCount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUnReadTipCount(I)V

    .line 2194
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUser_id(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUser_name(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getFace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setFace(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setSignature(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getOnline_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setStatus(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->getIsRead()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setIsRead(Ljava/lang/Boolean;)V

    .line 2200
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private loadRemoteList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1927
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    .local v2, remoteTempList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->loadAllRemote()Ljava/util/List;

    move-result-object v1

    .line 1929
    .local v1, remoteCustomerList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/db/RemoteCustomer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1952
    return-object v2

    .line 1929
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    .line 1930
    .local v3, tmp:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;-><init>()V

    .line 1931
    .local v0, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getAuto_code()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setAuto_code(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getAuto_logos()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setAuto_logos(Ljava/lang/String;)V

    .line 1933
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getCar_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setCar_id(Ljava/lang/String;)V

    .line 1934
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getCreated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setCreated(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setDescription(Ljava/lang/String;)V

    .line 1936
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getFace_thumb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setFace_thumb(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getFace_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setFace_url(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getRequest_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setId(Ljava/lang/String;)V

    .line 1939
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getLastTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setLastTime(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getNewMsgCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setNewMsgCount(I)V

    .line 1942
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setNick_name(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getSortKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSortKey(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setStatus(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setUser_id(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setUser_name(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setSignature(Ljava/lang/String;)V

    .line 1948
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getOnline_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setOnline_status(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->getIsRead()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setIsRead(Ljava/lang/Boolean;)V

    .line 1950
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private loadRepairList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2048
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    .local v2, repairTempList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->loadAllRepair()Ljava/util/List;

    move-result-object v1

    .line 2050
    .local v1, repairCustomerList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/newgolo/db/RepairCustomer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2077
    return-object v2

    .line 2050
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/newgolo/db/RepairCustomer;

    .line 2051
    .local v3, tmp:Lcom/cnlaunch/newgolo/db/RepairCustomer;
    new-instance v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;-><init>()V

    .line 2052
    .local v0, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getCarinfo_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setCarinfo_id(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getContact_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setContact_name(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getContact_phone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setContact_phone(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getCreated()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setCreated(Ljava/lang/String;)V

    .line 2056
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getFace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setFace(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getFace_hd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setFace_hd(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getIs_accept()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setIs_accept(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getLastTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setLastTime(Ljava/lang/String;)V

    .line 2060
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getNewMsgCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setNewMsgCount(I)V

    .line 2061
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getNick_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setNick_name(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getPub_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setPub_id(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getRemark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setRemark(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getReserve_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setReserve_id(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getReserve_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setReserve_time(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getResponse()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setResponse(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getSend_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSend_id(Ljava/lang/String;)V

    .line 2068
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getShedule_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setShedule_time(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getSortKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSortKey(Ljava/lang/String;)V

    .line 2070
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setUser_id(Ljava/lang/String;)V

    .line 2071
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getUser_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setUser_name(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setSignature(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getOnline_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setStatus(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->getIsRead()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setIsRead(Ljava/lang/Boolean;)V

    .line 2075
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private requestFocus()V
    .locals 2

    .prologue
    .line 2509
    const/4 v0, 0x2

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    if-ne v0, v1, :cond_2

    .line 2510
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 2511
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->requestFocus()Z

    .line 2512
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->requestFocusFromTouch()Z

    .line 2520
    :cond_1
    :goto_0
    return-void

    .line 2515
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    if-eqz v0, :cond_1

    .line 2516
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->requestFocus()Z

    .line 2517
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->requestFocusFromTouch()Z

    goto :goto_0
.end method

.method private saveFollowedList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2096
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2108
    return-void

    .line 2096
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 2097
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/FollowedCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;-><init>()V

    .line 2098
    .local v0, followedCustomer:Lcom/cnlaunch/newgolo/db/FollowedCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setFace_thumb(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getFace_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setFace_url(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setLastTime(Ljava/lang/String;)V

    .line 2101
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 2102
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setNick_name(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setSortKey(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setUser_id(Ljava/lang/String;)V

    .line 2105
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/FollowedCustomer;->setUser_name(Ljava/lang/String;)V

    .line 2106
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->insert(Lcom/cnlaunch/newgolo/db/FollowedCustomer;)V

    goto :goto_0
.end method

.method private saveRegisterList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2149
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2170
    return-void

    .line 2149
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 2150
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;-><init>()V

    .line 2151
    .local v0, registeredCustomer:Lcom/cnlaunch/newgolo/db/RegisteredCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setAuto_code(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_logos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setAuto_logos(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setBunding_id(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIf_pass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setIf_pass(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setLastTime(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 2158
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setNick_name(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSerial_no(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSortKey(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUnReadTipCount(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUser_id(Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUser_name(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getFace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setFace(Ljava/lang/String;)V

    .line 2165
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSignature(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setOnline_status(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setIsRead(Ljava/lang/Boolean;)V

    .line 2168
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->insert(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V

    goto/16 :goto_0
.end method

.method private saveRemoteList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1895
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1918
    return-void

    .line 1895
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 1896
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;-><init>()V

    .line 1897
    .local v0, customer:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setAuto_code(Ljava/lang/String;)V

    .line 1898
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_logos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setAuto_logos(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCar_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setCar_id(Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setCreated(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setDescription(Ljava/lang/String;)V

    .line 1902
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setFace_thumb(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setFace_url(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setRequest_id(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setLastTime(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 1908
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setNick_name(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setSortKey(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setStatus(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setUser_id(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setUser_name(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setSignature(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getOnline_status()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setOnline_status(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setIsRead(Ljava/lang/Boolean;)V

    .line 1916
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->insert(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V

    goto/16 :goto_0
.end method

.method private saveRepairList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2012
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2039
    return-void

    .line 2012
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 2013
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/RepairCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/RepairCustomer;-><init>()V

    .line 2014
    .local v0, repairCustomer:Lcom/cnlaunch/newgolo/db/RepairCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCarinfo_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setCarinfo_id(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setContact_name(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getContact_phone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setContact_phone(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getCreated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setCreated(Ljava/lang/String;)V

    .line 2018
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getFace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setFace(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getFace_hd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setFace_hd(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getIs_accept()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setIs_accept(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setLastTime(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 2023
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setNick_name(Ljava/lang/String;)V

    .line 2024
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getPub_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setPub_id(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setRemark(Ljava/lang/String;)V

    .line 2026
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getReserve_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setReserve_id(Ljava/lang/String;)V

    .line 2027
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getReserve_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setReserve_time(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setResponse(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSend_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setSend_id(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getShedule_time()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setShedule_time(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setSortKey(Ljava/lang/String;)V

    .line 2032
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setUser_id(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setUser_name(Ljava/lang/String;)V

    .line 2034
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setSignature(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setOnline_status(Ljava/lang/String;)V

    .line 2036
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RepairCustomer;->setIsRead(Ljava/lang/Boolean;)V

    .line 2037
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->insert(Lcom/cnlaunch/newgolo/db/RepairCustomer;)V

    goto/16 :goto_0
.end method

.method private searchAttUser(Ljava/lang/String;)V
    .locals 4
    .parameter "filterStr"

    .prologue
    .line 1337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1338
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1339
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->refresh(Ljava/util/List;)V

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1344
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1345
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1352
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 1345
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;

    .line 1346
    .local v1, sortModel:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getNick_name()Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, name:Ljava/lang/String;
    :goto_2
    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 1348
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1349
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateAttList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1346
    .end local v0           #name:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUser_name()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1347
    .restart local v0       #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private searchBundingUser(Ljava/lang/String;)V
    .locals 7
    .parameter "filterStr"

    .prologue
    const/4 v4, 0x0

    .line 1305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1306
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1307
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 1314
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1315
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1329
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 1315
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 1316
    .local v3, sortModel:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, name:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v2

    .line 1318
    .local v2, serNo:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v0

    .line 1319
    .local v0, carType:Ljava/lang/String;
    if-nez v1, :cond_7

    move-object v1, v4

    .line 1320
    :goto_3
    if-nez v2, :cond_8

    move-object v2, v4

    .line 1321
    :goto_4
    if-nez v0, :cond_9

    move-object v0, v4

    .line 1322
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1323
    :cond_5
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1316
    .end local v0           #carType:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #serNo:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1319
    .restart local v0       #carType:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #serNo:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1320
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1321
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1324
    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1325
    :cond_b
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateBindList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private searchRemoteUser(Ljava/lang/String;)V
    .locals 10
    .parameter "filterStr"

    .prologue
    const/4 v7, 0x0

    .line 1258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1259
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1260
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1263
    :cond_1
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    if-eqz v8, :cond_0

    .line 1267
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1268
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1295
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 1268
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1269
    .local v5, sortModel:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1270
    .local v4, nick_name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1271
    .local v6, user_name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1272
    .local v3, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1273
    .local v0, carType:Ljava/lang/String;
    instance-of v9, v5, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v9, :cond_4

    move-object v1, v5

    .line 1274
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 1275
    .local v1, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v4

    .line 1276
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v6

    .line 1277
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v0

    .line 1285
    .end local v1           #goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    :goto_2
    invoke-static {v4}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->isNotNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v3, v4

    .line 1286
    :goto_3
    if-nez v3, :cond_6

    move-object v3, v7

    .line 1287
    :goto_4
    if-nez v0, :cond_7

    move-object v0, v7

    .line 1288
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1289
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1278
    :cond_4
    instance-of v9, v5, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v9, :cond_2

    move-object v2, v5

    .line 1279
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .line 1280
    .local v2, goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getNick_name()Ljava/lang/String;

    move-result-object v4

    .line 1281
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->getUser_name()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .end local v2           #goloRepairInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;
    :cond_5
    move-object v3, v6

    .line 1285
    goto :goto_3

    .line 1286
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1287
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1290
    :cond_8
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1291
    :cond_9
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private sendCancelCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pub_id"
    .parameter "request_id"

    .prologue
    .line 1545
    const/4 v1, 0x0

    .line 1547
    .local v1, result:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->sendRemoteCancel(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1551
    :goto_0
    if-nez v1, :cond_0

    .line 1552
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "sendCancelCmd r is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_1
    return-void

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 1554
    .end local v0           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_0
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1555
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRemoteCustomer(Ljava/lang/String;)V

    .line 1556
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1558
    :cond_1
    const-string/jumbo v2, "GoloFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result[0]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendFinishCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pub_id"
    .parameter "request_id"

    .prologue
    .line 1519
    const/4 v1, 0x0

    .line 1521
    .local v1, result:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->sendRemoteHandle(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1525
    :goto_0
    if-nez v1, :cond_0

    .line 1526
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "r is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :goto_1
    return-void

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 1528
    .end local v0           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_0
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRemoteCustomer(Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1532
    :cond_1
    const-string/jumbo v2, "GoloFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result[0]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendProcessingCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pub_id"
    .parameter "request_id"

    .prologue
    .line 1495
    const/4 v1, 0x0

    .line 1497
    .local v1, result:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->sendRemoteProcessing(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1501
    :goto_0
    if-nez v1, :cond_0

    .line 1502
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "r is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :goto_1
    return-void

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 1504
    .end local v0           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_0
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1507
    :cond_1
    const-string/jumbo v2, "GoloFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result[0]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendResetCmd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pub_id"
    .parameter "request_id"

    .prologue
    .line 1471
    const/4 v1, 0x0

    .line 1473
    .local v1, result:Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {v2, p1, p2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->sendRemoteReset(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1477
    :goto_0
    if-nez v1, :cond_0

    .line 1478
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "r is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_1
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    .local v0, e:Lcom/cnlaunch/framework/network/http/HttpException;
    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/http/HttpException;->printStackTrace()V

    goto :goto_0

    .line 1480
    .end local v0           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :cond_0
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 1481
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1483
    :cond_1
    const-string/jumbo v2, "GoloFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result[0]:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", result[1]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/RemoteSendResponse;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setEditListener()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 555
    return-void
.end method

.method private setItemClickListener()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 559
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 560
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$7;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 661
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$8;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 711
    return-void
.end method

.method private setOnRefreshListener()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$11;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 864
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$12;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setOnRefreshListener(Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V

    .line 875
    return-void
.end method

.method private setRemoteDiagnoseListener()V
    .locals 3

    .prologue
    .line 532
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setRemoteDiagnoseHandleListener:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->setRemoteDiagnoseHandleListener(Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;)V

    .line 534
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteDiagnoseHandleListener:Lcom/cnlaunch/newgolo/manager/LaunchIMManager$RemoteDiagnoseHandleListener;

    goto :goto_0
.end method

.method private setRemoteIsRead(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1869
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    if-nez p1, :cond_1

    .line 1877
    :cond_0
    return-void

    .line 1872
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 1873
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getRemoteIsRead(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1874
    .local v0, isRead:Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setIsRead(Ljava/lang/Boolean;)V

    .line 1875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setAuto_logos(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTimeListData(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;>;"
    .local p2, usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 1145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1151
    return-void

    .line 1145
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    .line 1146
    .local v2, tmp:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move-wide v0, v4

    .line 1147
    .local v0, lastTime:J
    :goto_1
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 1148
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/utils/Tools;->getTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->setLastTime(Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    .end local v0           #lastTime:J
    :cond_2
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method private setUnreadListData(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;>;"
    .local p2, usersMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    return-void

    .line 1111
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    .line 1112
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1113
    .local v0, count:I
    :goto_1
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->setNewMsgCount(I)V

    goto :goto_0

    .line 1112
    .end local v0           #count:I
    :cond_1
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private showAttBG()V
    .locals 4

    .prologue
    const v3, 0x7f080012

    const v2, 0x7f080006

    .line 902
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 903
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remote_order_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 905
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 906
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bunding_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 908
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 909
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhu_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 911
    return-void
.end method

.method private showBundingBG()V
    .locals 5

    .prologue
    const v4, 0x7f080012

    const v3, 0x7f080006

    .line 934
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 935
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remote_order_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 937
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 938
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bunding_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 940
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 941
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhu_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 942
    return-void
.end method

.method private showBundingUser()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 914
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 915
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showBundingBG()V

    .line 916
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 927
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 928
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 931
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    goto :goto_0
.end method

.method public static showConflict()V
    .locals 3

    .prologue
    .line 2475
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2476
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2480
    :cond_0
    return-void

    .line 2476
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    check-cast v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    .line 2477
    .restart local v0       #tmp:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;->show()V

    goto :goto_0
.end method

.method private showFocusUser()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 878
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 879
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showAttBG()V

    .line 880
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 882
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 885
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showProgressDialog()V

    .line 886
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 887
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    if-nez v0, :cond_1

    .line 892
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 896
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->refresh(Ljava/util/List;)V

    .line 897
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 899
    return-void

    .line 889
    :cond_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 950
    return-void
.end method

.method private showRemoteBG()V
    .locals 5

    .prologue
    const v4, 0x7f080012

    const v3, 0x7f080006

    .line 977
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 978
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remote_order_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 980
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 981
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bunding_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 983
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 984
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhu_l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 985
    return-void
.end method

.method private showRemoteOrdered()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 956
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 957
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showRemoteBG()V

    .line 958
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showProgressDialog()V

    .line 959
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 963
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 964
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 968
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    .line 969
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 974
    return-void

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    goto :goto_0
.end method

.method private showSelectView()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2632
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->getListType()I

    move-result v1

    .line 2633
    .local v1, type:I
    if-nez v1, :cond_1

    .line 2634
    const/4 v2, 0x0

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 2635
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showBundingBG()V

    .line 2636
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2637
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2638
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2639
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2640
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2673
    .end local v1           #type:I
    :cond_0
    :goto_0
    return-void

    .line 2641
    .restart local v1       #type:I
    :cond_1
    if-ne v1, v3, :cond_3

    .line 2642
    const/4 v2, 0x1

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 2643
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showRemoteBG()V

    .line 2644
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    if-nez v2, :cond_2

    .line 2645
    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    .line 2647
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2648
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2649
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2650
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 2651
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2652
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0

    .line 2670
    .end local v1           #type:I
    :catch_0
    move-exception v0

    .line 2671
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 2653
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #type:I
    :cond_3
    if-ne v1, v4, :cond_0

    .line 2654
    const/4 v2, 0x2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    .line 2655
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showAttBG()V

    .line 2657
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    if-nez v2, :cond_4

    .line 2658
    new-instance v2, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    .line 2660
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2662
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_remind:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2663
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2664
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->assortView_remind:Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/sortlistview/SideBar;->setVisibility(I)V

    .line 2665
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->layout_client:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2666
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2667
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V

    .line 2668
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private updateRegisterList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2211
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2235
    return-void

    .line 2211
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 2212
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;-><init>()V

    .line 2213
    .local v0, registeredCustomer:Lcom/cnlaunch/newgolo/db/RegisteredCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2214
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setAuto_code(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getAuto_logos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setAuto_logos(Ljava/lang/String;)V

    .line 2216
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setBunding_id(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIf_pass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setIf_pass(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setLastTime(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 2221
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setNick_name(Ljava/lang/String;)V

    .line 2222
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSerial_no(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSortKey(Ljava/lang/String;)V

    .line 2224
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUnReadTipCount(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUser_id(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setUser_name(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getFace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setFace(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setSignature(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setOnline_status(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RegisteredCustomer;->setIsRead(Ljava/lang/Boolean;)V

    .line 2231
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteRegisteredCustomer(Ljava/lang/String;)V

    .line 2232
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->updateRegisteredCustomer(Lcom/cnlaunch/newgolo/db/RegisteredCustomer;)V

    goto/16 :goto_0
.end method

.method private updateRemoteInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "user_id"
    .parameter "request_id"
    .parameter "isRead"

    .prologue
    .line 795
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 807
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 809
    return-void
.end method

.method private updateRemoteList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1962
    .local p1, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1986
    return-void

    .line 1962
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 1963
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    new-instance v0, Lcom/cnlaunch/newgolo/db/RemoteCustomer;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;-><init>()V

    .line 1964
    .local v0, customer:Lcom/cnlaunch/newgolo/db/RemoteCustomer;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_code()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setAuto_code(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getAuto_logos()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setAuto_logos(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCar_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setCar_id(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCreated()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setCreated(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setDescription(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_thumb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setFace_thumb(Ljava/lang/String;)V

    .line 1970
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getFace_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setFace_url(Ljava/lang/String;)V

    .line 1971
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setRequest_id(Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getLastTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setLastTime(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getMine_car_plate_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setMine_car_plate_num(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNewMsgCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setNewMsgCount(Ljava/lang/Integer;)V

    .line 1975
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setNick_name(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setSortKey(Ljava/lang/String;)V

    .line 1977
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setStatus(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setUser_id(Ljava/lang/String;)V

    .line 1979
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setUser_name(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setSignature(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getOnline_status()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setOnline_status(Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/cnlaunch/newgolo/db/RemoteCustomer;->setIsRead(Ljava/lang/Boolean;)V

    .line 1983
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getUser_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getCar_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->deleteRemoteCustomer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/db/CustemInfoDB;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/db/CustemInfoDB;->insert(Lcom/cnlaunch/newgolo/db/RemoteCustomer;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 30
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 1697
    sparse-switch p1, :sswitch_data_0

    .line 1865
    invoke-super/range {p0 .. p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v24

    :cond_0
    :goto_0
    return-object v24

    .line 1700
    :sswitch_0
    const/4 v9, 0x0

    .line 1701
    .local v9, bundingRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicIdIfNeeded()V

    .line 1703
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getGoloBindInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_end_0
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1707
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;

    move-result-object v24

    goto :goto_0

    .line 1704
    :catch_0
    move-exception v10

    .line 1705
    .local v10, e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1709
    .end local v9           #bundingRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :sswitch_1
    const/4 v14, 0x0

    .line 1710
    .local v14, remoteRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    const/16 v16, 0x0

    .line 1711
    .local v16, remoteResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    .local v24, result:Ljava/util/List;
    new-instance v18, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    invoke-direct/range {v18 .. v18}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;-><init>()V

    .line 1713
    .local v18, remoteTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    const v2, 0x7f070734

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setContent(Ljava/lang/String;)V

    .line 1714
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setType(I)V

    .line 1715
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicIdIfNeeded()V

    .line 1720
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRemoteOrderList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    move-result-object v14

    .line 1721
    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;->getData()Ljava/util/List;
    :try_end_1
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 1732
    :goto_1
    if-eqz v16, :cond_1

    .line 1734
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    .local v28, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 1736
    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;-><init>()V

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1737
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setRemoteIsRead(Ljava/util/List;)V

    .line 1738
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRemoteList()V

    .line 1739
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveRemoteList(Ljava/util/List;)V

    .line 1740
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1743
    .end local v28           #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    :cond_1
    new-instance v21, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    invoke-direct/range {v21 .. v21}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;-><init>()V

    .line 1744
    .local v21, repairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    const v2, 0x7f070735

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setContent(Ljava/lang/String;)V

    .line 1745
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setType(I)V

    .line 1746
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    const/16 v23, 0x0

    .line 1749
    .local v23, reqairRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    const/16 v20, 0x0

    .line 1751
    .local v20, repairResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRepairList(Ljava/lang/String;IIII)Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;

    move-result-object v23

    .line 1752
    invoke-virtual/range {v23 .. v23}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;->getData()Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloReqairsData;->getData()Ljava/util/List;

    move-result-object v20

    .line 1753
    if-eqz v20, :cond_0

    .line 1755
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1756
    .local v29, sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 1757
    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;-><init>()V

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1758
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRepairList()V

    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveRepairList(Ljava/util/List;)V

    .line 1760
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1762
    .end local v29           #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    :catch_1
    move-exception v10

    .line 1763
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1722
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v20           #repairResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    .end local v21           #repairTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    .end local v23           #reqairRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairscheduledResponse;
    :catch_2
    move-exception v10

    .line 1725
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :try_start_3
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "getRemoteOrderList again."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRemoteOrderList(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    move-result-object v14

    .line 1727
    invoke-virtual {v14}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;->getData()Ljava/util/List;
    :try_end_3
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v16

    goto/16 :goto_1

    .line 1728
    :catch_3
    move-exception v11

    .line 1729
    .local v11, e1:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1767
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v11           #e1:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v14           #remoteRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    .end local v16           #remoteResult:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    .end local v18           #remoteTitle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    .end local v24           #result:Ljava/util/List;
    :sswitch_2
    const/4 v8, 0x0

    .line 1769
    .local v8, attRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicIdIfNeeded()V

    .line 1772
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getAttentionedUserInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :try_end_4
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v8

    .line 1776
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAttentionList(Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;)Ljava/util/List;

    move-result-object v24

    goto/16 :goto_0

    .line 1773
    :catch_4
    move-exception v10

    .line 1774
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1778
    .end local v8           #attRes:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :sswitch_3
    const/4 v12, 0x0

    .line 1780
    .local v12, reloadAttention:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicIdIfNeeded()V

    .line 1783
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getAttentionedUserInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :try_end_5
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v12

    .line 1787
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAttentionList(Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;)Ljava/util/List;

    move-result-object v24

    goto/16 :goto_0

    .line 1784
    :catch_5
    move-exception v10

    .line 1785
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1790
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v12           #reloadAttention:Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionResponse;
    :sswitch_4
    const/4 v13, 0x0

    .line 1792
    .local v13, reloadBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getPublicIdIfNeeded()V

    .line 1795
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getGoloBindInfo(Ljava/lang/String;Z)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_end_6
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v13

    .line 1800
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;

    move-result-object v24

    goto/16 :goto_0

    .line 1796
    :catch_6
    move-exception v10

    .line 1797
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1802
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v13           #reloadBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :sswitch_5
    const/16 v27, 0x0

    .line 1804
    .local v27, singleUnBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSingleGoloBindInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_end_7
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v27

    .line 1808
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getSingleUnBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;

    move-result-object v24

    goto/16 :goto_0

    .line 1805
    :catch_7
    move-exception v10

    .line 1806
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1810
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v27           #singleUnBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :sswitch_6
    const/16 v26, 0x0

    .line 1812
    .local v26, singleBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getSingleGoloBindInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :try_end_8
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v26

    .line 1816
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getSingleBindList(Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;)Ljava/util/List;

    move-result-object v24

    goto/16 :goto_0

    .line 1813
    :catch_8
    move-exception v10

    .line 1814
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1818
    .end local v10           #e:Lcom/cnlaunch/framework/network/http/HttpException;
    .end local v26           #singleBind:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfoResponse;
    :sswitch_7
    const/4 v15, 0x0

    .line 1819
    .local v15, remoteResSingle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;
    const/16 v17, 0x0

    .line 1820
    .local v17, remoteResultSingle:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1821
    .local v25, resultSingle:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v19, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    invoke-direct/range {v19 .. v19}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;-><init>()V

    .line 1822
    .local v19, remoteTitleSingle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    const v2, 0x7f070734

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setContent(Ljava/lang/String;)V

    .line 1823
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setType(I)V

    .line 1824
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRemoteOrderSingleList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    move-result-object v15

    .line 1828
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;->getData()Ljava/util/List;
    :try_end_9
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v17

    .line 1839
    :goto_2
    if-eqz v17, :cond_2

    .line 1840
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteList(Ljava/util/List;)V

    .line 1842
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1843
    .restart local v28       #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->loadRemoteList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 1844
    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;-><init>()V

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1845
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setRemoteIsRead(Ljava/util/List;)V

    .line 1846
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1849
    .end local v28           #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;>;"
    :cond_2
    new-instance v22, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;

    invoke-direct/range {v22 .. v22}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;-><init>()V

    .line 1850
    .local v22, repairTitleSingle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    const v2, 0x7f070735

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setContent(Ljava/lang/String;)V

    .line 1851
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;->setType(I)V

    .line 1852
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    .restart local v29       #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->loadRepairList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 1857
    new-instance v2, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/golo/model/TimeComparator;-><init>()V

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1858
    invoke-direct/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deleteRepairList()V

    .line 1859
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->saveRepairList(Ljava/util/List;)V

    .line 1860
    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v24, v25

    .line 1861
    goto/16 :goto_0

    .line 1829
    .end local v22           #repairTitleSingle:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteRepairTitle;
    .end local v29           #sortList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;>;"
    :catch_9
    move-exception v10

    .line 1832
    .restart local v10       #e:Lcom/cnlaunch/framework/network/http/HttpException;
    :try_start_a
    const-string/jumbo v2, "GoloFragment"

    const-string/jumbo v3, "getRemoteOrderList again."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_uid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->diag_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRemoteOrderSingleList(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;

    move-result-object v15

    .line 1834
    invoke-virtual {v15}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderResponse;->getData()Ljava/util/List;
    :try_end_a
    .catch Lcom/cnlaunch/framework/network/http/HttpException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v17

    goto/16 :goto_2

    .line 1835
    :catch_a
    move-exception v11

    .line 1836
    .restart local v11       #e1:Lcom/cnlaunch/framework/network/http/HttpException;
    new-instance v2, Lcom/cnlaunch/framework/network/http/HttpException;

    invoke-direct {v2, v10}, Lcom/cnlaunch/framework/network/http/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1697
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9c42 -> :sswitch_4
        0x9c43 -> :sswitch_3
        0x9c45 -> :sswitch_6
        0x9c46 -> :sswitch_5
        0x9c47 -> :sswitch_7
    .end sparse-switch
.end method

.method public getAllUnreadCount(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<+Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 510
    .local v1, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 511
    .local v2, result:I
    if-nez p1, :cond_0

    move v3, v2

    .line 523
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 514
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 521
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 522
    const/4 v1, 0x0

    move v3, v2

    .line 523
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 515
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getUser_id()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, userId:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 517
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/golo/model/CustomerInfo;->getNewMsgCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 514
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getRemoteUnreadCount()I
    .locals 5

    .prologue
    .line 1154
    const/4 v1, 0x0

    .line 1155
    .local v1, result:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1156
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1165
    :cond_1
    return v1

    .line 1156
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1157
    .local v2, tmp:Ljava/lang/Object;
    instance-of v4, v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 1158
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 1159
    .local v0, rInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->getIsRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected hidenList(IZ)V
    .locals 3
    .parameter "type"
    .parameter "status"

    .prologue
    .line 767
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 768
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 780
    :cond_1
    return-void

    .line 768
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 769
    .local v0, tmp:Ljava/lang/Object;
    instance-of v2, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v2, :cond_0

    .line 770
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .end local v0           #tmp:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;->setExtend(Z)V

    goto :goto_0

    .line 773
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 775
    .restart local v0       #tmp:Ljava/lang/Object;
    instance-of v2, v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    if-eqz v2, :cond_4

    .line 776
    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;

    .end local v0           #tmp:Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloRepairInfo;->setExtend(Z)V

    goto :goto_1
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 304
    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mGoloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    .line 305
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;

    const-string/jumbo v1, "CustomerActivityMessageChange"

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 306
    .local v0, mMessageChangeHandler:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;->start()V

    .line 307
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 310
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageChangeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    .line 311
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatTable;->URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 312
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->removeListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V

    .line 315
    :cond_1
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    invoke-direct {v1, p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    .line 316
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->addListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V

    .line 317
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    if-eqz v1, :cond_2

    .line 318
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 320
    :cond_2
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;

    invoke-direct {v1, p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$RemoteOrderObserver;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    .line 321
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->addObserver(Ljava/util/Observer;)V

    .line 322
    sget-object v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mConflictStatus:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;

    invoke-direct {v1, p0, v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$BindDeviceObserver;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deviceObserver:Ljava/util/Observer;

    .line 325
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deviceObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->addObserver(Ljava/util/Observer;)V

    .line 326
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->getInstance()Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->intentChangeObserver:Ljava/util/Observer;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->addObserver(Ljava/util/Observer;)V

    .line 327
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v1, 0x7f0704eb

    const/4 v4, 0x1

    .line 182
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setTitle(I)V

    .line 185
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->init()V

    .line 186
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setTitle(I)V

    .line 187
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "USER_PUBLIC_ID"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "USER_PUBLIC_NAME"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    .line 189
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pub_name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pub_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    .line 194
    :cond_1
    const-string/jumbo v1, "GoloFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pub_name1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pub_id1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showProgressDialog()V

    .line 198
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 199
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 200
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->request(I)V

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    .line 206
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V

    .line 207
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 209
    const-string/jumbo v1, "Customer_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->customer_type:Ljava/lang/String;

    .line 210
    const-string/jumbo v1, "bunding_new"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->customer_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 211
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->setListType(I)V

    .line 212
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V

    .line 218
    :cond_3
    :goto_0
    return-void

    .line 213
    :cond_4
    const-string/jumbo v1, "remote_req"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->customer_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    invoke-interface {v1, v4}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->setListType(I)V

    .line 215
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showSelectView()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1677
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->checkNetWork()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1682
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1684
    :sswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showRemoteOrdered()V

    goto :goto_0

    .line 1687
    :sswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showBundingUser()V

    goto :goto_0

    .line 1690
    :sswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->showFocusUser()V

    goto :goto_0

    .line 1682
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d01e7 -> :sswitch_0
        0x7f0d01ea -> :sswitch_1
        0x7f0d01ed -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 222
    const v1, 0x7f030084

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 223
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    .line 224
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->initViews(Landroid/view/View;)V

    .line 225
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1671
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->removeListeners()V

    .line 1672
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 1673
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 2536
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 2538
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->datalistenter:Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/onGoloDataListenter;->setListType(I)V

    .line 2541
    :cond_0
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 2428
    sparse-switch p1, :sswitch_data_0

    .line 2449
    :goto_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2450
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2456
    :goto_1
    return-void

    .line 2430
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2433
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2436
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2439
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2442
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2445
    :sswitch_5
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    .line 2446
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 2454
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2428
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9c42 -> :sswitch_5
        0x9c43 -> :sswitch_1
        0x9c45 -> :sswitch_3
        0x9c46 -> :sswitch_4
        0x9c47 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2524
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onPause()V

    .line 2526
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2503
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->requestFocus()V

    .line 2505
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 2506
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 2497
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onStart()V

    .line 2499
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2530
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onStop()V

    .line 2532
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 5
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 2252
    sparse-switch p1, :sswitch_data_0

    .line 2424
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2255
    .restart local p2
    :sswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2256
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2257
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    .line 2258
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "isClientOk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2260
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2261
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2262
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "TextUtils.isEmpty(pub_id) || null.equalsIgnoreCase(pub_id)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2266
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    .line 2267
    check-cast p2, Ljava/util/List;

    .end local p2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 2268
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    .line 2269
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateBDTitle(I)V

    .line 2271
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2273
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    if-nez v0, :cond_3

    .line 2275
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    .line 2276
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2278
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2283
    .restart local p2
    :sswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2284
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2285
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2286
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2289
    :cond_5
    if-nez p2, :cond_6

    .line 2290
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2294
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    .line 2295
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2296
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteTitle(I)V

    .line 2298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    if-nez v0, :cond_7

    .line 2300
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    .line 2301
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2303
    :cond_7
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2309
    .restart local p2
    :sswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2310
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2311
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2312
    :cond_8
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2313
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2319
    :cond_9
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateGZTilte(I)V

    .line 2321
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GuanzhuComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2322
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    if-nez v0, :cond_a

    .line 2323
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    .line 2324
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2326
    :cond_a
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mFocusClientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/FocusClientAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2331
    :sswitch_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2332
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2333
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2334
    :cond_b
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2337
    :cond_c
    if-nez p2, :cond_d

    .line 2338
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2342
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    .line 2343
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2344
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateRemoteTitle(I)V

    .line 2346
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    if-nez v0, :cond_e

    .line 2348
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    .line 2349
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mListFocusClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2351
    :cond_e
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mRemoteUserAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemoteUserAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2356
    .restart local p2
    :sswitch_4
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2357
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2358
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    .line 2359
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "isClientOk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2361
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2362
    :cond_f
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2363
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "TextUtils.isEmpty(pub_id) || null.equalsIgnoreCase(pub_id)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2366
    :cond_10
    if-nez p2, :cond_11

    .line 2367
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "result == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2372
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    .line 2373
    check-cast p2, Ljava/util/List;

    .end local p2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 2374
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    .line 2375
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateBDTitle(I)V

    .line 2377
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2379
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    if-nez v0, :cond_12

    .line 2381
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    .line 2382
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2384
    :cond_12
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2389
    .restart local p2
    :sswitch_5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->dismissProgressDialog()V

    .line 2390
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->onRefreshComplete()V

    .line 2391
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->isClientOk:Z

    .line 2392
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "isClientOk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2394
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "null"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->pub_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2395
    :cond_13
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2396
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "TextUtils.isEmpty(pub_id) || null.equalsIgnoreCase(pub_id)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2399
    :cond_14
    if-nez p2, :cond_15

    .line 2400
    const-string/jumbo v0, "GoloFragment"

    const-string/jumbo v1, "result == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2405
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    .line 2406
    check-cast p2, Ljava/util/List;

    .end local p2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->filledData(Ljava/util/List;Ljava/util/List;)V

    .line 2407
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getAllUnreadCount(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    .line 2408
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allBundingNewMsg:I

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->updateBDTitle(I)V

    .line 2410
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    new-instance v1, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/golo/model/BundingNewMessageComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2412
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    if-nez v0, :cond_16

    .line 2414
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    .line 2415
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->listClient:Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/pulltorefresh/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 2417
    :cond_16
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->clientAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/adapter/ClientAdapter;->refresh(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2252
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x9c42 -> :sswitch_0
        0x9c43 -> :sswitch_2
        0x9c45 -> :sswitch_4
        0x9c46 -> :sswitch_5
        0x9c47 -> :sswitch_3
    .end sparse-switch
.end method

.method public removeListeners()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->orderObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/Listeners/RemoteOrderObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->tipChangeListener:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$CustomerTipCountChangeListener;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->removeListener(Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent$TipCountChangeListener;)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mMessageContentObserver:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$MessageContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 451
    :cond_2
    sget-object v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->conflictList:Ljava/util/List;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mConflictStatus:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$ConflictStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->getInstance()Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->intentChangeObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/IntentChangeSubject;->deleteObserver(Ljava/util/Observer;)V

    .line 454
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deviceObserver:Ljava/util/Observer;

    if-eqz v0, :cond_3

    .line 455
    invoke-static {}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->getInstance()Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->deviceObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/Listeners/BindDeviceObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 457
    :cond_3
    return-void
.end method

.method protected saveUserInfo(Lcom/cnlaunch/newgolo/bean/UserInfo;)V
    .locals 2
    .parameter "uInfo"

    .prologue
    .line 783
    new-instance v0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/newgolo/bean/UserInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 791
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 792
    return-void
.end method

.method public setUnreadTipCount(Ljava/lang/String;I)V
    .locals 3
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 1570
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1571
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1577
    :cond_1
    return-void

    .line 1571
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 1572
    .local v0, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1573
    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUnReadTipCount(I)V

    goto :goto_0
.end method

.method public totalUnreadTipCount(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1585
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    const/4 v0, 0x0

    .line 1586
    .local v0, result:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1589
    return v0

    .line 1586
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 1587
    .local v1, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnReadTipCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public updataListTipCountForSerial(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/golo/model/Count;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1598
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;>;"
    .local p2, datas:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/golo/model/Count;>;"
    if-eqz p1, :cond_1

    .line 1599
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1610
    :cond_1
    return-void

    .line 1599
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;

    .line 1600
    .local v2, tmp:Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;
    const/4 v3, 0x0

    .line 1601
    .local v3, uCount:I
    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUnReadTipCount(I)V

    .line 1602
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getSerial_no()Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, serNo:Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/golo/model/Count;

    .line 1604
    .local v0, bean:Lcom/cnlaunch/x431pro/module/golo/model/Count;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/Count;->getSerial_no()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1605
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/Count;->getUnread_size()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->setUnReadTipCount(I)V

    goto :goto_0
.end method

.method protected updateBDTitle(I)V
    .locals 4
    .parameter "bCount"

    .prologue
    .line 1197
    if-nez p1, :cond_1

    .line 1198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->bundingTitle:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloBindInfo;->getUnreadNumber(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->sourceDateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const-string/jumbo v0, "update_new_tip_count"

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allTipCount:I

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/listenter/OnTipEvent;->onChange(Ljava/lang/String;I)V

    .line 1212
    return-void

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 1203
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1204
    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_3

    .line 1205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1206
    :cond_3
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_b:Landroid/widget/TextView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected updateGZTilte(I)V
    .locals 4
    .parameter "gCount"

    .prologue
    .line 1220
    if-nez p1, :cond_1

    .line 1221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1233
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->attTitle:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAttentionInfo;->getUnreadNumber(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->guanzhuDateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    const/16 v0, 0x64

    if-ge p1, v0, :cond_2

    .line 1226
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1227
    :cond_2
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_3

    .line 1228
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1229
    :cond_3
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allNewCount_a:Landroid/widget/TextView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public updateRemoteTitle(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->getRemoteUnreadCount()I

    move-result v0

    .line 1174
    .local v0, newCount:I
    if-nez v0, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1187
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteOrderTitle:Landroid/widget/RadioButton;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    return-void

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1180
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1181
    :cond_2
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    .line 1182
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    const v2, 0x7f02014a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1183
    :cond_3
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->allScheduledNewCount:Landroid/widget/TextView;

    const v2, 0x7f020149

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
