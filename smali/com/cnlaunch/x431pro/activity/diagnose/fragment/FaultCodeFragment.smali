.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "FaultCodeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private btnFreeze:Landroid/widget/Button;

.field private btnReport:Landroid/widget/Button;

.field private btnSearch:Landroid/widget/Button;

.field private faultCodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;",
            ">;"
        }
    .end annotation
.end field

.field private faultCodeType:Ljava/lang/String;

.field private mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

.field private mItemPosition:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mListView:Landroid/widget/ListView;

    .line 47
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeType:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mItemPosition:I

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mItemPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSearchKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 222
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->getItemSelect()I

    move-result v1

    .line 223
    .local v1, index:I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    .line 226
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getCarSoftName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :goto_0
    return-object v3

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070542

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 233
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c016a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mListView:Landroid/widget/ListView;

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c016b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnSearch:Landroid/widget/Button;

    .line 105
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c016c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnReport:Landroid/widget/Button;

    .line 107
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnReport:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c016d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnFreeze:Landroid/widget/Button;

    .line 111
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    .line 112
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeType:Ljava/lang/String;

    const-string/jumbo v2, "710"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnFreeze:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->isOnClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnSearch:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnReport:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnFreeze:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeType:Ljava/lang/String;

    const-string/jumbo v2, "730"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0149

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    .local v0, btnSearch:Landroid/widget/Button;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .end local v0           #btnSearch:Landroid/widget/Button;
    :cond_2
    return-void

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->btnFreeze:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->getItemSelect()I

    move-result v0

    .line 209
    .local v0, index:I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, info:Ljava/lang/String;
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getHelpInfo()Ljava/lang/String;

    move-result-object v1

    .line 217
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const v2, 0x7f070542

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const v0, 0x7f070506

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public hasHelpInfo()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->initView()V

    .line 78
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 79
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const v5, 0x7f070710

    .line 52
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, mbundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 55
    const-string/jumbo v2, "FaultCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    .line 56
    const-string/jumbo v2, "FaultCode_Type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeType:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addFaultCodeList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 68
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeType:Ljava/lang/String;

    const-string/jumbo v3, "710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const v3, 0x7f070514

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 72
    :goto_1
    return-void

    .line 62
    :cond_2
    invoke-static {p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "is_upload_report"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1       #name:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v3, v1}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addFaultCodeList(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    const v3, 0x7f070506

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const v13, 0x7f070542

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v12, 0x11

    .line 141
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 143
    .local v3, id:I
    const v8, 0x7f0c016c

    if-ne v3, v8, :cond_1

    .line 144
    sput-boolean v9, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FAULTCODE_REFRESH:Z

    .line 145
    new-instance v6, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;

    invoke-direct {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;-><init>()V

    .line 146
    .local v6, rFragment:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v8, "FaultCode"

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 148
    invoke-virtual {v6, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v8

    const-class v9, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v6, v9, v10}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 178
    .end local v0           #b:Landroid/os/Bundle;
    .end local v6           #rFragment:Lcom/cnlaunch/x431pro/activity/diagnose/ReportShowFragment;
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const v8, 0x7f0c016d

    if-ne v3, v8, :cond_5

    .line 152
    :try_start_0
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->getItemSelect()I

    move-result v5

    .line 153
    .local v5, position:I
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "CONSULT HANDBOOK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->faultCodeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;

    invoke-virtual {v8}, Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;->getContext()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f070565

    invoke-virtual {p0, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 154
    :cond_2
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f070515

    const/16 v10, 0x11

    invoke-static {v8, v9, v10}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v5           #position:I
    :catch_0
    move-exception v2

    .line 164
    .local v2, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v8, v13, v12}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 156
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #position:I
    :cond_3
    const/4 v8, -0x1

    if-le v5, v8, :cond_4

    .line 157
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 158
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v8

    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;->getFaultCodeFeedbackType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;->getFaultCodeFeedbackCmd(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v8, v9, v10, v11}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f070542

    const/16 v10, 0x11

    invoke-static {v8, v9, v10}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    .end local v5           #position:I
    :cond_5
    const v8, 0x7f0c016b

    if-ne v3, v8, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getSearchKey()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, key:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 169
    sput-boolean v9, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FAULTCODE_REFRESH:Z

    .line 170
    new-instance v7, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    invoke-direct {v7}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;-><init>()V

    .line 171
    .local v7, searchFragment:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v8, "searchkey"

    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 173
    invoke-virtual {v7, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v8

    const-class v9, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9, v10}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 88
    const v0, 0x7f030071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroyView()V

    .line 100
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mItemPosition:I

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->setItemIsActive(I)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onResume()V

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->FAULTCODE_REFRESH:Z

    .line 95
    return-void
.end method

.method public updateFaultCodesListener(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 83
    .local p1, faultCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicFaultCodeBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/FaultCodeFragment;->mFaultCodeAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/FaultCodeShowListAdapter;->updateList(Ljava/util/ArrayList;)V

    .line 84
    return-void
.end method
