.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "AgingWindowFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;


# instance fields
.field private dataStr:Ljava/lang/String;

.field private tvShowData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->dataStr:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f070503

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->dataStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->dataStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c014f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->tvShowData:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->tvShowData:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->dataStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 39
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const v1, 0x7f070503

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 24
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 26
    const-string/jumbo v1, "ArgingContent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->dataStr:Ljava/lang/String;

    .line 28
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public updateArgingWindowListener(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/AgingWindowFragment;->tvShowData:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
