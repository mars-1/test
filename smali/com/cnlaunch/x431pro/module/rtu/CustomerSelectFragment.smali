.class public Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;
.super Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;
.source "CustomerSelectFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;-><init>()V

    .line 21
    return-void
.end method

.method public static newInstance()Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;-><init>()V

    .line 16
    .local v0, fragment:Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, view:Landroid/view/View;
    const v2, 0x7f070727

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->setMessage(I)V

    .line 33
    const v2, 0x7f070728

    .line 34
    new-instance v3, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$1;-><init>(Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;)V

    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->setAlphaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 40
    const v2, 0x7f070729

    .line 41
    new-instance v3, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$2;-><init>(Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;)V

    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->setBetaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 47
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "isFirstRun"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    .local v0, isFirstRun:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "NoDeviceWithIsFirstRun"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const v2, 0x7f07072d

    .line 50
    new-instance v3, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$3;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$3;-><init>(Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;)V

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->setGammaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 58
    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onDetach()V

    .line 64
    return-void
.end method
