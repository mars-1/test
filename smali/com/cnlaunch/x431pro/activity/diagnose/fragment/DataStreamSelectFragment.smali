.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "DataStreamSelectFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private btnGraphConfirm:Landroid/widget/Button;

.field private btnPageSelectAll:Landroid/widget/Button;

.field private btnPageUnSelectAll:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/CheckBox;

.field private btnValueConfirm:Landroid/widget/Button;

.field private isSelectAll:Z

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

.field private mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

.field private mJumpType:Ljava/lang/String;

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private sortStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    .line 38
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    .line 39
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isSelectAll:Z

    .line 41
    const-string/jumbo v0, "menu"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mJumpType:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->sortStr:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c00f1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    .line 120
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "is_sort"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    .local v0, isSort:Z
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->sortStr:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->sortStr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 124
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    .line 125
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .end local v0           #isSort:Z
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0160

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnPageUnSelectAll:Landroid/widget/Button;

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0157

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnPageSelectAll:Landroid/widget/Button;

    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0162

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnValueConfirm:Landroid/widget/Button;

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnGraphConfirm:Landroid/widget/Button;

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c00ef

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnSelectAll:Landroid/widget/CheckBox;

    .line 132
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnSelectAll:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isSelectAll:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isOnClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    invoke-virtual {v1, p0}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnPageUnSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnPageSelectAll:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnValueConfirm:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnGraphConfirm:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->btnSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDatastreamSelectIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->setSelection(I)V

    .line 147
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const v0, 0x7f070500

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamSelectJumpType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mJumpType:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->initView()V

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isOnClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setOnClickable(Z)V

    .line 61
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v1, "DataStreamSelect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mSelectList:Ljava/util/ArrayList;

    .line 50
    const-string/jumbo v1, "IS_SORT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->sortStr:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    const v2, 0x7f070500

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const v10, 0x7f070540

    const/16 v9, 0xf

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 71
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    .local v0, id:I
    const v4, 0x7f0c0162

    if-ne v0, v4, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getCheckFirstPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamSelectIndex(I)V

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 77
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getSelectMaskCount()I

    move-result v2

    .line 78
    .local v2, maskSelectCount:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamCount(I)V

    .line 79
    if-nez v2, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 116
    .end local v2           #maskSelectCount:I
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v2       #maskSelectCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 83
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskStringList()Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, maskStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-interface {v4, v5, v1, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMaskMessage(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-interface {v4, v5, v3, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 88
    .end local v1           #maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #maskSelectCount:I
    .end local v3           #maskStr:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0c0161

    if-ne v0, v4, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 92
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 93
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getSelectMaskCount()I

    move-result v2

    .line 94
    .restart local v2       #maskSelectCount:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamCount(I)V

    .line 95
    if-nez v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskStringList()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    .restart local v1       #maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3       #maskStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-interface {v4, v5, v1, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMaskMessage(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-interface {v4, v5, v3, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    .end local v1           #maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #maskSelectCount:I
    .end local v3           #maskStr:Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c00ef

    if-ne v0, v4, :cond_6

    .line 104
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isSelectAll:Z

    if-eqz v4, :cond_5

    .line 105
    iput-boolean v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isSelectAll:Z

    .line 106
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->antiSelectItem()V

    goto/16 :goto_0

    .line 108
    :cond_5
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isSelectAll:Z

    .line 109
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->selectAllItem()V

    goto/16 :goto_0

    .line 111
    :cond_6
    const v4, 0x7f0c0157

    if-ne v0, v4, :cond_7

    .line 112
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mGv:Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/widget/staggeredgridview/StaggeredGridView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->selectPageItem(II)V

    goto/16 :goto_0

    .line 113
    :cond_7
    const v4, 0x7f0c0160

    if-ne v0, v4, :cond_0

    .line 114
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->unSelectItem()V

    goto/16 :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 65
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
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
    .line 152
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setItemCheck(I)Z

    .line 155
    :cond_0
    return-void
.end method
