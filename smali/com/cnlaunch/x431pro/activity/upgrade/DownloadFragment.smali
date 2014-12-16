.class public Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;,
        Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0x1

.field public static DOWNLOADLIST_KEY:Ljava/lang/String;


# instance fields
.field private final MSG_CONFLICTING_SIGNATURE:I

.field private final MSG_CONTINUE:I

.field private final MSG_DOWNLOAD_FINISHED:I

.field private final MSG_ENABLE_DOWNLOAD_BUTTON:I

.field private final MSG_LESS_SPACE:I

.field private final MSG_NETWORK_ERROR:I

.field private final MSG_REFRESH_UI:I

.field private final MSG_RELOGIN:I

.field private final MSG_RELOGINEX:I

.field private final MSG_STOP:I

.field private final MSG_UPDATE_LIST:I

.field private final MSG_UPDATE_STATISTICS:I

.field public final REQ_DOFILE_CODE:I

.field private adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

.field private context:Landroid/content/Context;

.field private downloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;",
            ">;"
        }
    .end annotation
.end field

.field private downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

.field private listview:Landroid/widget/ListView;

.field private mDownloadCount:Ljava/lang/Integer;

.field private mDownloadFailed:Ljava/lang/Integer;

.field private mDownloadOK:Ljava/lang/Integer;

.field private mIsHasInstallManually:Z

.field private mIsRoot:Z

.field private mIsWaiting:Z

.field private mUIHandler:Landroid/os/Handler;

.field private pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

.field private radio_download:Landroid/widget/Button;

.field private radio_home:Landroid/widget/Button;

.field private serialNo:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private tv_spinner_serialNo:Landroid/widget/TextView;

.field private tv_statistics:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "downloadList"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->DOWNLOADLIST_KEY:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 74
    const-class v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    .line 76
    const/16 v0, 0x2332

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->REQ_DOFILE_CODE:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_REFRESH_UI:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_UPDATE_STATISTICS:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_DOWNLOAD_FINISHED:I

    .line 80
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_RELOGIN:I

    .line 81
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_RELOGINEX:I

    .line 82
    const/4 v0, 0x6

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_CONTINUE:I

    .line 83
    const/4 v0, 0x7

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_STOP:I

    .line 84
    const/16 v0, 0x8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_CONFLICTING_SIGNATURE:I

    .line 85
    const/16 v0, 0x9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_UPDATE_LIST:I

    .line 86
    const/16 v0, 0xa

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_ENABLE_DOWNLOAD_BUTTON:I

    .line 87
    const/16 v0, 0xb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_LESS_SPACE:I

    .line 88
    const/16 v0, 0xc

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_NETWORK_ERROR:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    .line 107
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    .line 108
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    .line 114
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    return v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    return v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->refreshUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    return-void
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    return-void
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getPackageNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    return-void
.end method

.method private addDownloadCount()V
    .locals 3

    .prologue
    .line 920
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    monitor-enter v1

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    .line 922
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 923
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->finishDownload()V

    .line 920
    :cond_0
    monitor-exit v1

    .line 926
    return-void

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addDownloadFailed()V
    .locals 2

    .prologue
    .line 946
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    monitor-enter v1

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 946
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadCount()V

    .line 950
    return-void

    .line 946
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private addDownloadOK()V
    .locals 6

    .prologue
    .line 929
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    monitor-enter v3

    .line 930
    const/4 v1, 0x0

    .line 931
    .local v1, i:I
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 932
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 939
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    .line 929
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadCount()V

    .line 942
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->updateStatistics()V

    .line 943
    return-void

    .line 932
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 933
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 934
    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 935
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private finishDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 968
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 967
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getPackageNameByID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ID"

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, packageName:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1119
    .end local v0           #packageName:Ljava/lang/String;
    .local v1, packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1085
    .end local v1           #packageName:Ljava/lang/String;
    .restart local v0       #packageName:Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "X-431 PAD II USA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1086
    const-string/jumbo v2, "X-431 PAD II"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1087
    const-string/jumbo v2, "X431 Pro APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1088
    const-string/jumbo v2, "X431 Pro3 APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1089
    const-string/jumbo v2, "X431 PRO3 HD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1090
    const-string/jumbo v2, "Maximus2.0APK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1091
    const-string/jumbo v2, "MaxGo Application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1092
    const-string/jumbo v2, "ScanPad071"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1093
    const-string/jumbo v2, "ScanPad101"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1097
    const-string/jumbo v2, "BatteryTest_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1098
    const-string/jumbo v2, "BatteryTest_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    const-string/jumbo v2, "BatteryTest_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1100
    :cond_1
    const-string/jumbo v0, "com.cnlaunch.batterytest"

    :cond_2
    :goto_1
    move-object v1, v0

    .line 1119
    .end local v0           #packageName:Ljava/lang/String;
    .restart local v1       #packageName:Ljava/lang/String;
    goto :goto_0

    .line 1102
    .end local v1           #packageName:Ljava/lang/String;
    .restart local v0       #packageName:Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "SensorApp_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1103
    const-string/jumbo v2, "SensorApp_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1104
    const-string/jumbo v2, "Sensor_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1105
    :cond_4
    const-string/jumbo v0, "com.cnlaunch.sensor"

    .line 1106
    goto :goto_1

    .line 1107
    :cond_5
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1108
    const-string/jumbo v2, "Oscilloscope_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1109
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1110
    const-string/jumbo v2, "Oscilloscope_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1111
    :cond_6
    const-string/jumbo v0, "com.cnlaunch.oscilloscope"

    .line 1112
    goto :goto_1

    .line 1113
    :cond_7
    const-string/jumbo v2, "Ignition_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1114
    const-string/jumbo v2, "Ignition_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1115
    const-string/jumbo v2, "Ignition_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1116
    :cond_8
    const-string/jumbo v0, "com.cnlaunch.ignition"

    goto :goto_1
.end method

.method private hasEnoughSpace()Z
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1131
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 1133
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 1134
    .local v0, availableBlocks:J
    mul-long v9, v0, v2

    const-wide/32 v11, 0x100000

    div-long v4, v9, v11

    .line 1135
    .local v4, remainSpaceMB:J
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "remain space MB:  "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", blockSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", availableBlocks:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1136
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 1135
    invoke-static {v9, v10}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    const-wide/16 v9, 0xc8

    cmp-long v9, v4, v9

    if-lez v9, :cond_0

    .line 1139
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #remainSpaceMB:J
    .end local v6           #stat:Landroid/os/StatFs;
    :goto_0
    return v7

    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v4       #remainSpaceMB:J
    .restart local v6       #stat:Landroid/os/StatFs;
    :cond_0
    move v7, v8

    .line 1137
    goto :goto_0

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #remainSpaceMB:J
    .end local v6           #stat:Landroid/os/StatFs;
    :cond_1
    move v7, v8

    .line 1139
    goto :goto_0
.end method

.method private initData()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 180
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    .line 181
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->hasEnoughSpace()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 183
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isconflict"

    invoke-virtual {v4, v5, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 188
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 191
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const/4 v1, 0x0

    .line 194
    .local v1, download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 195
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v5

    if-eq v8, v5, :cond_3

    .line 196
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v6

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 199
    :cond_4
    new-instance v3, Lcom/cnlaunch/framework/network/http/RequestParams;

    .end local v3           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    invoke-direct {v3}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 200
    .restart local v3       #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v5, "serialNo"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v5, "versionDetailId"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionDetailId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getDownloadFileName(Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setFileName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 204
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 207
    new-instance v1, Lcom/cnlaunch/framework/network/download/DownloadParam;

    .end local v1           #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    invoke-direct {v1}, Lcom/cnlaunch/framework/network/download/DownloadParam;-><init>()V

    .line 208
    .restart local v1       #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setContext(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v1, v3}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setParams(Lcom/cnlaunch/framework/network/http/RequestParams;)V

    .line 210
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileSize(J)V

    .line 211
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setUrl(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileName(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setVersionNo(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getDownloadZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setDownPath(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    .line 216
    const-string/jumbo v6, "enable_breakpointresume"

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v5

    .line 215
    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setEnableBreakpoint(Z)V

    .line 217
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v5, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->addHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)V

    goto/16 :goto_1
.end method

.method private initList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-static {}, Lcom/cnlaunch/framework/common/LruCacheManager;->getInstance()Lcom/cnlaunch/framework/common/LruCacheManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->DOWNLOADLIST_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/LruCacheManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 157
    .local v1, upgradeList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    .line 158
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    :cond_1
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    .line 167
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0046

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->listview:Landroid/widget/ListView;

    .line 168
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->setList(Ljava/util/List;)V

    .line 169
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    .line 174
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 175
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 159
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 160
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 161
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initManager()V
    .locals 2

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 522
    invoke-static {}, Lcom/cnlaunch/framework/network/download/DownloadManager;->getInstance()Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 523
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 620
    return-void
.end method

.method private initUIHandler()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    .line 518
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    .line 133
    const v0, 0x7f0704ea

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->setTitle(I)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0d04c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0d04c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04c5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_home:Landroid/widget/Button;

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_home:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initList()V

    .line 146
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 147
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initUIHandler()V

    .line 148
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    .line 150
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    .line 151
    return-void
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 953
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 960
    :goto_0
    return-void

    .line 956
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 957
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 959
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "need_refresh"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateStatistics()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 971
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 976
    :goto_0
    return-void

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public getDownloadFileName(Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)Ljava/lang/String;
    .locals 5
    .parameter "bean"

    .prologue
    .line 630
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, versionNo:Ljava/lang/String;
    const-string/jumbo v3, "."

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getLanId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLangCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, filaName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .local v1, nameBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 637
    const-string/jumbo v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 638
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 639
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 641
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "download"
    .parameter "total"

    .prologue
    .line 993
    const v2, 0x7f070577

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, info:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 995
    .local v1, style:Landroid/text/SpannableStringBuilder;
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initViews()V

    .line 120
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f020529

    const v3, 0x7f07057c

    const/16 v6, 0x32

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 648
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 650
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, btnText:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 654
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 655
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 656
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 658
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    const v3, 0x7f07057d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 659
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020527

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 660
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 661
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 662
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 664
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 665
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f07058e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 678
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->start()V

    goto :goto_0

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 685
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v2, 0x7f07057e

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 686
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initList()V

    .line 687
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 688
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 689
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 690
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 691
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    goto/16 :goto_0

    .line 696
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 697
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 698
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 699
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 700
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 702
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    goto/16 :goto_0

    .line 707
    .end local v0           #btnText:Ljava/lang/String;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v3, 0x7f0d02d8

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto/16 :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d04c4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 124
    const v0, 0x7f0301ab

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 980
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 982
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 983
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 984
    return-void
.end method

.method public updateAPKInstalledState(Ljava/lang/String;Z)V
    .locals 9
    .parameter "packageName"
    .parameter "installed"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 999
    if-nez p1, :cond_0

    .line 1072
    :goto_0
    return-void

    .line 1003
    :cond_0
    const-string/jumbo v2, "com.cnlaunch.oscilloscope"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1004
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1070
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1071
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1004
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1005
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1006
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1007
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1008
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_5

    if-eqz p2, :cond_5

    .line 1009
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto :goto_1

    .line 1011
    :cond_5
    if-nez p2, :cond_2

    .line 1012
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto :goto_1

    .line 1018
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_6
    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1019
    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1020
    :cond_7
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1021
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SensorApp_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1022
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SensorApp_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1023
    :cond_9
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_a

    if-eqz p2, :cond_a

    .line 1024
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1026
    :cond_a
    if-nez p2, :cond_2

    .line 1027
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1033
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_b
    const-string/jumbo v2, "com.cnlaunch.batterytest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1034
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1035
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BatteryTest_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1036
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BatteryTest_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1037
    :cond_d
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_e

    if-eqz p2, :cond_e

    .line 1038
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1040
    :cond_e
    if-nez p2, :cond_2

    .line 1041
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1047
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_f
    const-string/jumbo v2, "com.cnlaunch.ignition"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1048
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 1049
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Ignition_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1050
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Ignition_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1051
    :cond_11
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_12

    if-eqz p2, :cond_12

    .line 1052
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1054
    :cond_12
    if-nez p2, :cond_2

    .line 1055
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1061
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_13
    const-string/jumbo v2, "com.android.gallery3d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1064
    const-string/jumbo v2, "com.android.gallery3d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    const-string/jumbo v2, "browser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
