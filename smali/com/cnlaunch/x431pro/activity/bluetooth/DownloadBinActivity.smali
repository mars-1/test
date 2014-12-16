.class public Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;
.source "DownloadBinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentDownloadBin:F

.field private downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

.field private downloadBinPath:Ljava/lang/String;

.field private downloadDevVersion:Ljava/lang/String;

.field private downloadVersion:Ljava/lang/String;

.field private isUpdateSuccess:Z

.field private isUpdateing:Z

.field private loadIndex:I

.field private loadString:Ljava/lang/String;

.field private mBtnUpdate:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mTvHit:Landroid/widget/TextView;

.field private mTvRatio:Landroid/widget/TextView;

.field private mTvUpdateStatus:Landroid/widget/TextView;

.field private mTvVer:Landroid/widget/TextView;

.field private mUpdateProgress:Landroid/widget/ProgressBar;

.field private mainView:Landroid/view/View;

.field private messageBoxDialog:Landroid/app/ProgressDialog;

.field onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

.field private serialNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadVersion:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    .line 48
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateSuccess:Z

    .line 49
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I

    .line 50
    const-string/jumbo v0, "."

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    .line 153
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 199
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->currentDownloadBin:F

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvRatio:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->currentDownloadBin:F

    return v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mUpdateProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    return v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I

    return v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I

    return-void
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvHit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvVer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateSuccess:Z

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method private initDialogSize()V
    .locals 10

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 253
    .local v4, widthSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 254
    .local v2, heightSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 255
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 256
    .local v0, attributesParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    const v6, 0x3ecccccd

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 258
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059

    div-double/2addr v6, v8

    double-to-int v3, v6

    .line 259
    .local v3, width:I
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/2addr v6, v2

    int-to-double v6, v6

    const-wide v8, 0x4052c00000000000L

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 260
    .local v1, height:I
    invoke-virtual {v5, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 261
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v1

    .line 81
    .local v1, mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    new-instance v3, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    invoke-direct {v3, v4, v1}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;-><init>(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Lcom/cnlaunch/physics/impl/IPhysics;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 82
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00fa

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mUpdateProgress:Landroid/widget/ProgressBar;

    .line 83
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvVer:Landroid/widget/TextView;

    .line 84
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvHit:Landroid/widget/TextView;

    .line 85
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvRatio:Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;

    .line 87
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    const v4, 0x7f0c00fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;

    .line 88
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "serialNo"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->serialNo:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->serialNo:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getPackagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->getDPUVersionAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, ""

    .line 92
    .local v2, ver:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070567

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, downloadbin_upgrade_label:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const-string/jumbo v3, "NULL"

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    .line 96
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadVersion:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string/jumbo v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvVer:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->startUpdate()V

    .line 103
    return-void

    .line 99
    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadVersion:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    .line 133
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBinPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBinPath:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBinPath:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBinPath:Ljava/lang/String;

    const-string/jumbo v2, "/DOWNLOAD.bin"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->updateAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mBtnUpdate:Landroid/widget/Button;

    const v1, 0x7f07001f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mTvUpdateStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->startUpdateing()V

    .line 139
    :cond_0
    return-void
.end method

.method private startUpdateing()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V

    .line 196
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->start()V

    .line 197
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z

    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->stopUpdate()V

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "DownloadBin_DisConnBluetooth"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->finish()V

    goto :goto_0

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateSuccess:Z

    if-nez v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->startUpdate()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "JumpDownloadBin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->finish()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0c00fd
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->initDialogSize()V

    .line 267
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DownloadBin_Ver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadVersion:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DownloadBin_Dev_Ver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadDevVersion:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "DownloadBin_Path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->downloadBinPath:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    .line 62
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ba

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    .line 63
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 64
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 66
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->messageBoxDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 75
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->initDialogSize()V

    .line 76
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->initView()V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 143
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07056d

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
