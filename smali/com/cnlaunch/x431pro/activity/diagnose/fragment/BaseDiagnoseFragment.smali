.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "BaseDiagnoseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;


# instance fields
.field private btnHelp:Landroid/widget/Button;

.field private btnHome:Landroid/widget/Button;

.field private btnPrint:Landroid/widget/RadioButton;

.field private isOnClickable:Z

.field private mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->isOnClickable:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 38
    return-void
.end method

.method private initBaseView()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0143

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHome:Landroid/widget/Button;

    .line 165
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0149

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHelp:Landroid/widget/Button;

    .line 166
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0148

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    .line 168
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->isOnClickable:Z

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHome:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHome:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHelp:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHelp:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->hasHelpInfo()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnHelp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 194
    :cond_2
    :goto_0
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isPrinting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public doSometingOnCreate()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnAcitivityCallback(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;)V

    .line 209
    return-void
.end method

.method public doSometingOnDestory()V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->removeCallbackListener()V

    .line 204
    return-void
.end method

.method public getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    return-object v0
.end method

.method public getDefaultMeasure()I
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    .line 146
    .local v0, defaultVaule:I
    return v0
.end method

.method public getHelpInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const v0, 0x7f070559

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f0706a9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHelpInfo()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isOnClickable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->isOnClickable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->initBaseView()V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->doSometingOnCreate()V

    .line 97
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-object v2, v0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->setOnClickable(Z)V

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " must implement FragmentCallback.OnMenuOnClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 152
    .local v0, id:I
    const v1, 0x7f0c0143

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->exitDiagnoseRunning(I)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const v1, 0x7f0c0149

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704fd

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getHelpInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->doSometingOnDestory()V

    .line 103
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    const-string/jumbo v2, "Sanda"

    new-array v3, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "--->onKeyDownDo   "

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 132
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v5, v5, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPrintStateListenter()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->btnPrint:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 49
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onStart()V

    .line 50
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0142

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, subView:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 52
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 53
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getMainTitle()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, mainTitle:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->setTitle(Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void

    .line 55
    .end local v0           #mainTitle:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c0297

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, subTitle:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getAllTitle()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 58
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getCarSoftName()Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setOnClickable(Z)V
    .locals 0
    .parameter "is"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->isOnClickable:Z

    .line 71
    return-void
.end method

.method public updateActiveTestListener(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, activeDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .local p2, activeTestButton:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    return-void
.end method

.method public updateArgingWindowListener(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 123
    return-void
.end method

.method public updateDataStreamListener(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    return-void
.end method

.method public updateFaultCodesListener(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, faultCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    return-void
.end method

.method public updateSpeciaFuntionListener(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;"
    .local p2, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSpeciaFunctionBean;>;>;"
    .local p3, buttonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    return-void
.end method
