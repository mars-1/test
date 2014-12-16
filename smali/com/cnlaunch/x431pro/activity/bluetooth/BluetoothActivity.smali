.class public Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;
.source "BluetoothActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

.field private mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

.field private mBtnExit:Landroid/widget/Button;

.field private mBtnScan:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLibLanguage:Ljava/lang/String;

.field private mLibPath:Ljava/lang/String;

.field private mLv:Landroid/widget/ListView;

.field onBluetoothListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibPath:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibLanguage:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->onBluetoothListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    .line 141
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;

    return-object v0
.end method

.method private initDialogSize()V
    .locals 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 171
    .local v4, widthSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 172
    .local v2, heightSize:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 173
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 174
    .local v0, attributesParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 175
    const v6, 0x3ecccccd

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 176
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    mul-int/2addr v6, v4

    div-int/lit8 v3, v6, 0x64

    .line 177
    .local v3, width:I
    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    mul-int/2addr v6, v2

    div-int/lit8 v1, v6, 0x64

    .line 178
    .local v1, height:I
    invoke-virtual {v5, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 179
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 74
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 77
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnExit:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnScan:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBtnExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 126
    .local v0, id:I
    const v1, 0x7f0d003c

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->scanBluetoothList()V

    .line 129
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->reScanBluetooth()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const v1, 0x7f0d003d

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->stopScan()V

    .line 133
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->isFix:Z

    .line 134
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->initDialogSize()V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "Lib_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibPath:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "Lib_language"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLibLanguage:Ljava/lang/String;

    .line 45
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->initDialogSize()V

    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->initView()V

    .line 48
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->mAutoReConnectBoolean:Z

    .line 49
    new-instance v0, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->onBluetoothListener:Lcom/cnlaunch/physics/listener/OnBluetoothListener;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->setOnBluetoothListener(Lcom/cnlaunch/physics/listener/OnBluetoothListener;)V

    .line 51
    new-instance v0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    .line 52
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothListAdapter:Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mLv:Landroid/widget/ListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->scanBluetoothList()V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->stopScan()V

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/BluetoothActivity;->mBluetoothScanManager:Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager$BluetoothScanManager;->getBluetoothList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    return-void
.end method
