.class public Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "FirmwareFixFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentDownloadBin:F

.field private downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

.field private downloadBinPath:Ljava/lang/String;

.field private fix_message:Landroid/widget/TextView;

.field private isFailed:Z

.field private isSuccess:Z

.field private isUpdateSuccess:Z

.field private isUpdateing:Z

.field private loadIndex:I

.field private loadString:Ljava/lang/String;

.field private mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

.field private positiveButton:Landroid/widget/Button;

.field private progress_dialog:Landroid/widget/ProgressBar;

.field private progress_info:Landroid/widget/TextView;

.field private progress_msg:Landroid/widget/TextView;

.field private serialNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 65
    const-string/jumbo v0, "."

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    .line 69
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z

    .line 70
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateSuccess:Z

    .line 73
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z

    .line 74
    iput-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z

    .line 76
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    .line 138
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z

    return-void
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->currentDownloadBin:F

    return v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z

    return v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z

    return v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z

    return v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateSuccess:Z

    return v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->startUpdate()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateSuccess:Z

    return-void
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->currentDownloadBin:F

    return-void
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I

    return v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadIndex:I

    return-void
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->loadString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseFragment;->btn_left:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->serialNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 14

    .prologue
    const/16 v13, 0x11

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 93
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->registerBroadcastReceiver()V

    .line 94
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    .line 95
    const v7, 0x7f07056e

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->setTitle(I)V

    .line 96
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020521

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d0365

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->fix_message:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070570

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, message:Ljava/lang/String;
    const-string/jumbo v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 101
    .local v4, index_str:I
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    .local v6, style:Landroid/text/SpannableStringBuilder;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x100

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x22

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->fix_message:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d0071

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;

    .line 106
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d0367

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_info:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d0369

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;

    .line 110
    iget-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z

    if-eqz v7, :cond_0

    .line 111
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;

    const-string/jumbo v8, "100%"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d0368

    invoke-virtual {v7, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "serialNo"

    invoke-virtual {v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->serialNo:Ljava/lang/String;

    .line 116
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->serialNo:Ljava/lang/String;

    invoke-static {v7}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getVehiclesZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, filePath:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "Diagnostic/Configure/Download/DOWNLOAD.ini"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBinPath:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 121
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0705ea

    invoke-static {v7, v8, v13}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 123
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 128
    :goto_0
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getSDFreeSize()J

    move-result-wide v0

    .line 130
    .local v0, availableBlock:J
    const-wide/16 v7, 0xa

    cmp-long v7, v0, v7

    if-gez v7, :cond_1

    .line 131
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f07006c

    invoke-static {v7, v8, v13}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 132
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    return-void

    .line 125
    .end local v0           #availableBlock:J
    :cond_2
    new-instance v7, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->onDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    invoke-direct {v7, v8, v9}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;-><init>(Lcom/cnlaunch/physics/listener/OnDownloadBinListener;Lcom/cnlaunch/physics/impl/IPhysics;)V

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "BluetoothBackgroundConnectSuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "BluetoothBackgroundConnectFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method

.method private startUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 293
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isUpdateing:Z

    .line 294
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBinPath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBinPath:Ljava/lang/String;

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBinPath:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBin:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->downloadBinPath:Ljava/lang/String;

    const-string/jumbo v2, "/DOWNLOAD.bin"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->updateAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sput-boolean v4, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    .line 297
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->startUpdateing()V

    .line 298
    return-void
.end method

.method private startUpdateing()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;)V

    .line 348
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment$4;->start()V

    .line 349
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->initViews()V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isFailed:Z

    .line 258
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->isSuccess:Z

    .line 259
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_dialog:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->progress_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-static {}, Lcom/cnlaunch/x431pro/activity/MainActivity;->isDiagFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f07056f

    const/16 v3, 0x11

    invoke-static {v1, v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 266
    :cond_0
    sput-boolean v2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 267
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    iput-boolean v3, v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 268
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, bluetoothActivityStartIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    .end local v0           #bluetoothActivityStartIntent:Landroid/content/Intent;
    :pswitch_1
    const-class v1, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0071
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 86
    const v0, 0x7f030139

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;->mBluetoothManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 250
    return-void
.end method
