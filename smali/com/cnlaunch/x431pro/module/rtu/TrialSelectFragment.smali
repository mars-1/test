.class public Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;
.super Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;
.source "TrialSelectFragment.java"


# instance fields
.field private mPrompt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->mPrompt:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static newInstance()Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;-><init>()V

    .line 17
    .local v0, fragment:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 28
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 29
    const-string/jumbo v1, "prompt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->mPrompt:Ljava/lang/String;

    .line 31
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07072f

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->setTitle(I)V

    .line 37
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->mPrompt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->mPrompt:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->setMessage(Ljava/lang/String;)V

    .line 45
    :goto_0
    const v2, 0x7f07072d

    .line 46
    new-instance v3, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment$1;-><init>(Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;)V

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->setAlphaOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 60
    return-object v1

    .line 41
    :cond_0
    const-string/jumbo v2, "%1$s %2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0706ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070700

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 41
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/module/rtu/TrialSelectFragment;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment;->onDetach()V

    .line 65
    return-void
.end method
