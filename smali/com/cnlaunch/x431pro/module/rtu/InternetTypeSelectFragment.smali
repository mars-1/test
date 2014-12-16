.class public Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;
.super Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;
.source "InternetTypeSelectFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;-><init>()V

    .line 19
    return-void
.end method

.method public static newInstance()Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;-><init>()V

    .line 14
    .local v0, fragment:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f07072c

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;->setTitle(I)V

    .line 30
    const v1, 0x7f0706fb

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;->setMessage(I)V

    .line 32
    new-instance v1, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment$1;-><init>(Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;)V

    .line 31
    invoke-virtual {p0, v2, v1}, Lcom/cnlaunch/x431pro/module/rtu/InternetTypeSelectFragment;->setAlphaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 46
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onDetach()V

    .line 51
    return-void
.end method
