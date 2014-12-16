.class public Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "VerificationCodeDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 43
    const v0, 0x7f070691

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;->setTitle(I)V

    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeDetailFragment;->initViews()V

    .line 32
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    const v0, 0x7f030141

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
