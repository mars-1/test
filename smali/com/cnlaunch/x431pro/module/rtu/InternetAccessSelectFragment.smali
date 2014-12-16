.class public Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
.super Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;
.source "InternetAccessSelectFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;-><init>()V

    .line 18
    return-void
.end method

.method public static newInstance()Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;-><init>()V

    .line 13
    .local v0, fragment:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, view:Landroid/view/View;
    const v1, 0x7f07072a

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->setTitle(I)V

    .line 30
    const v1, 0x7f0706fb

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->setMessage(I)V

    .line 31
    const v1, 0x7f0706ff

    .line 32
    new-instance v2, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$1;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$1;-><init>(Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;)V

    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->setAlphaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f070700

    .line 39
    new-instance v2, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$2;-><init>(Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;)V

    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->setBetaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f070728

    .line 46
    new-instance v2, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$3;-><init>(Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;)V

    .line 45
    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->setGammaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 53
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onDetach()V

    .line 59
    return-void
.end method
