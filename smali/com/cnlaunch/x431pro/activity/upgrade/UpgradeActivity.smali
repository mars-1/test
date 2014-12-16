.class public Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "UpgradeActivity.java"


# instance fields
.field mUeventBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 29
    const-class v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->tag:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->mUeventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method private registBroadcastReciver()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->mUeventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private unRegistBroadcastReciver()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->mUeventBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0300d2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->registBroadcastReciver()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    const-class v0, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->addFragment(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;->unRegistBroadcastReciver()V

    .line 46
    return-void
.end method
