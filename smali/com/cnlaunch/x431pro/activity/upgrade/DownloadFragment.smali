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
    .line 73
    const-string/jumbo v0, "downloadList"

    sput-object v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->DOWNLOADLIST_KEY:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 72
    const-class v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    .line 74
    const/16 v0, 0x2332

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->REQ_DOFILE_CODE:I

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_REFRESH_UI:I

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_UPDATE_STATISTICS:I

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_DOWNLOAD_FINISHED:I

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_RELOGIN:I

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_RELOGINEX:I

    .line 80
    const/4 v0, 0x6

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_CONTINUE:I

    .line 81
    const/4 v0, 0x7

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_STOP:I

    .line 82
    const/16 v0, 0x8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_CONFLICTING_SIGNATURE:I

    .line 83
    const/16 v0, 0x9

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_UPDATE_LIST:I

    .line 84
    const/16 v0, 0xa

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_ENABLE_DOWNLOAD_BUTTON:I

    .line 85
    const/16 v0, 0xb

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_LESS_SPACE:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->MSG_NETWORK_ERROR:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    .line 106
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    .line 112
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    return v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/utils/PathUtils;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsHasInstallManually:Z

    return v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->refreshUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    return-void
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    return-void
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getPackageNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadOK()V

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    return-void
.end method

.method private addDownloadCount()V
    .locals 3

    .prologue
    .line 913
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    monitor-enter v1

    .line 914
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

    .line 915
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->finishDownload()V

    .line 913
    :cond_0
    monitor-exit v1

    .line 919
    return-void

    .line 913
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
    .line 939
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 939
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadCount()V

    .line 943
    return-void

    .line 939
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
    .line 922
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    monitor-enter v3

    .line 923
    const/4 v1, 0x0

    .line 924
    .local v1, i:I
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 932
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    .line 922
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadCount()V

    .line 935
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->updateStatistics()V

    .line 936
    return-void

    .line 925
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 926
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 927
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

    .line 928
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
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

    .line 956
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 961
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 960
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getPackageNameByID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ID"

    .prologue
    .line 1073
    const/4 v0, 0x0

    .line 1074
    .local v0, packageName:Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1113
    .end local v0           #packageName:Ljava/lang/String;
    .local v1, packageName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1078
    .end local v1           #packageName:Ljava/lang/String;
    .restart local v0       #packageName:Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "X-431 PAD II USA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1079
    const-string/jumbo v2, "X-431 PAD II"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1080
    const-string/jumbo v2, "X431 Pro APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1081
    const-string/jumbo v2, "X431 Pro3 APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1082
    const-string/jumbo v2, "X431 PRO3 HD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1083
    const-string/jumbo v2, "X-431 PRO3_JINBEIHD_APP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1084
    const-string/jumbo v2, "Maximus2.0APK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1085
    const-string/jumbo v2, "MaxGo Application"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1086
    const-string/jumbo v2, "ScanPad071"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1087
    const-string/jumbo v2, "ScanPad101"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1091
    const-string/jumbo v2, "BatteryTest_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1092
    const-string/jumbo v2, "BatteryTest_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1093
    const-string/jumbo v2, "BatteryTest_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    :cond_1
    const-string/jumbo v0, "com.cnlaunch.batterytest"

    :cond_2
    :goto_1
    move-object v1, v0

    .line 1113
    .end local v0           #packageName:Ljava/lang/String;
    .restart local v1       #packageName:Ljava/lang/String;
    goto :goto_0

    .line 1096
    .end local v1           #packageName:Ljava/lang/String;
    .restart local v0       #packageName:Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "SensorApp_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1097
    const-string/jumbo v2, "SensorApp_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1098
    const-string/jumbo v2, "Sensor_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1099
    :cond_4
    const-string/jumbo v0, "com.cnlaunch.sensor"

    .line 1100
    goto :goto_1

    .line 1101
    :cond_5
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1102
    const-string/jumbo v2, "Oscilloscope_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1103
    const-string/jumbo v2, "Oscilloscope_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1104
    const-string/jumbo v2, "Oscilloscope_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1105
    :cond_6
    const-string/jumbo v0, "com.cnlaunch.oscilloscope"

    .line 1106
    goto :goto_1

    .line 1107
    :cond_7
    const-string/jumbo v2, "Ignition_X431PADII"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1108
    const-string/jumbo v2, "Ignition_X431Pro"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1109
    const-string/jumbo v2, "Ignition_MAXIMUS2.0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    :cond_8
    const-string/jumbo v0, "com.cnlaunch.ignition"

    goto :goto_1
.end method

.method private initData()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 178
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsWaiting:Z

    .line 179
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "isconflict"

    invoke-virtual {v4, v5, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 181
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const/4 v1, 0x0

    .line 187
    .local v1, download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 188
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v5

    if-eq v8, v5, :cond_2

    .line 189
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-boolean v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    if-nez v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 192
    :cond_3
    new-instance v3, Lcom/cnlaunch/framework/network/http/RequestParams;

    .end local v3           #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    invoke-direct {v3}, Lcom/cnlaunch/framework/network/http/RequestParams;-><init>()V

    .line 193
    .restart local v3       #params:Lcom/cnlaunch/framework/network/http/RequestParams;
    const-string/jumbo v5, "serialNo"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v5, "versionDetailId"

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionDetailId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/cnlaunch/framework/network/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getDownloadFileName(Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setFileName(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 197
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 200
    new-instance v1, Lcom/cnlaunch/framework/network/download/DownloadParam;

    .end local v1           #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    invoke-direct {v1}, Lcom/cnlaunch/framework/network/download/DownloadParam;-><init>()V

    .line 201
    .restart local v1       #download:Lcom/cnlaunch/framework/network/download/DownloadParam;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setContext(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v1, v3}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setParams(Lcom/cnlaunch/framework/network/http/RequestParams;)V

    .line 203
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileSize()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileSize(J)V

    .line 204
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setUrl(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setFileName(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setVersionNo(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getDownloadZipPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setDownPath(Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    .line 209
    const-string/jumbo v6, "enable_breakpointresume"

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v5

    .line 208
    invoke-virtual {v1, v5}, Lcom/cnlaunch/framework/network/download/DownloadParam;->setEnableBreakpoint(Z)V

    .line 210
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v5, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->addHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)V

    goto/16 :goto_0
.end method

.method private initList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    invoke-static {}, Lcom/cnlaunch/framework/common/LruCacheManager;->getInstance()Lcom/cnlaunch/framework/common/LruCacheManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->DOWNLOADLIST_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/LruCacheManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    .local v1, upgradeList:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    .line 156
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    :cond_1
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;-><init>(Landroid/content/Context;Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    .line 165
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0046

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->listview:Landroid/widget/ListView;

    .line 166
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->setList(Ljava/util/List;)V

    .line 167
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadCount:Ljava/lang/Integer;

    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 173
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadOK:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .line 157
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 158
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    const/4 v3, 0x4

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 159
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initManager()V
    .locals 2

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 515
    invoke-static {}, Lcom/cnlaunch/framework/network/download/DownloadManager;->getInstance()Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 516
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 613
    return-void
.end method

.method private initUIHandler()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    .line 511
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/cnlaunch/x431pro/utils/PathUtils;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->pathUtils:Lcom/cnlaunch/x431pro/utils/PathUtils;

    .line 131
    const v0, 0x7f0704ec

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->setTitle(I)V

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c04db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_statistics:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContentView:Landroid/view/View;

    const v1, 0x7f0c04dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tv_spinner_serialNo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->serialNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04de

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04dd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_home:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_home:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initList()V

    .line 144
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 145
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initUIHandler()V

    .line 146
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    .line 148
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->isRoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mIsRoot:Z

    .line 149
    return-void
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 953
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 950
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 952
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

    .line 964
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 968
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
    .line 623
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getVersionNo()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, versionNo:Ljava/lang/String;
    const-string/jumbo v3, "."

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 625
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

    .line 626
    .local v0, filaName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, nameBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 630
    const-string/jumbo v3, ".apk"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 631
    :cond_1
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 632
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 634
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getUpgradeNum(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "download"
    .parameter "total"

    .prologue
    .line 986
    const v2, 0x7f070579

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, info:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 988
    .local v1, style:Landroid/text/SpannableStringBuilder;
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initViews()V

    .line 118
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f02052d

    const v3, 0x7f07057e

    const/16 v6, 0x32

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 643
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, btnText:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 648
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v2}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 649
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 651
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    const v3, 0x7f07057f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 652
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02052b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 653
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 655
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 657
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f070590

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    new-instance v2, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    .line 671
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->start()V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 678
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v2, 0x7f070580

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 679
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initList()V

    .line 680
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 681
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 682
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 683
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 684
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    goto/16 :goto_0

    .line 689
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V

    .line 690
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mDownloadFailed:Ljava/lang/Integer;

    .line 691
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 692
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 693
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5, v5, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->radio_download:Landroid/widget/Button;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 695
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initData()V

    goto/16 :goto_0

    .line 700
    .end local v0           #btnText:Ljava/lang/String;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    if-eqz v2, :cond_0

    .line 701
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v3, 0x7f0c02ef

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto/16 :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c04dd
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
    .line 122
    const v0, 0x7f0301ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 973
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 975
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 976
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 977
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

    .line 992
    if-nez p1, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 996
    :cond_0
    const-string/jumbo v2, "com.cnlaunch.oscilloscope"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 997
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1063
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v8, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1064
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 997
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 998
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 999
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1000
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Oscilloscope_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1001
    :cond_4
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_5

    if-eqz p2, :cond_5

    .line 1002
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto :goto_1

    .line 1004
    :cond_5
    if-nez p2, :cond_2

    .line 1005
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto :goto_1

    .line 1011
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_6
    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1012
    const-string/jumbo v2, "com.cnlaunch.sensor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1013
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

    .line 1014
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SensorApp_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1015
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SensorApp_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1016
    :cond_9
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_a

    if-eqz p2, :cond_a

    .line 1017
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1019
    :cond_a
    if-nez p2, :cond_2

    .line 1020
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1026
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_b
    const-string/jumbo v2, "com.cnlaunch.batterytest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1027
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

    .line 1028
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BatteryTest_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1029
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BatteryTest_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1030
    :cond_d
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_e

    if-eqz p2, :cond_e

    .line 1031
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1033
    :cond_e
    if-nez p2, :cond_2

    .line 1034
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1040
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_f
    const-string/jumbo v2, "com.cnlaunch.ignition"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1041
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

    .line 1042
    .restart local v0       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Ignition_X431PADII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1043
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Ignition_X431Pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1044
    :cond_11
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getState()I

    move-result v2

    if-ne v5, v2, :cond_12

    if-eqz p2, :cond_12

    .line 1045
    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1047
    :cond_12
    if-nez p2, :cond_2

    .line 1048
    invoke-virtual {v0, v7}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_1

    .line 1054
    .end local v0           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_13
    const-string/jumbo v2, "com.android.gallery3d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1057
    const-string/jumbo v2, "com.android.gallery3d"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1060
    const-string/jumbo v2, "browser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
