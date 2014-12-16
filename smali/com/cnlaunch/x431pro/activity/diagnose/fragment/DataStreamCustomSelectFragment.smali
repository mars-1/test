.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "DataStreamCustomSelectFragment.java"

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
.field private btnConfirm:Landroid/widget/Button;

.field private btnPageSelectAll:Landroid/widget/Button;

.field private btnSelectAll:Landroid/widget/CheckBox;

.field private isSelectAll:Z

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

.field private mGv:Landroid/widget/GridView;

.field private mSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    .line 36
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    .line 37
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->isSelectAll:Z

    .line 31
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00f1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0157

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->btnPageSelectAll:Landroid/widget/Button;

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->btnConfirm:Landroid/widget/Button;

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->btnPageSelectAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0704fe

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->initView()V

    .line 54
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v1, "DataStreamSelect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mSelectList:Ljava/util/ArrayList;

    .line 47
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 66
    .local v0, id:I
    const v3, 0x7f0d004f

    if-ne v0, v3, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamJumpType(I)V

    .line 68
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getSelectMaskCount()I

    move-result v2

    .line 69
    .local v2, maskSelectCount:I
    if-nez v2, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07053e

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 78
    .end local v2           #maskSelectCount:I
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v2       #maskSelectCount:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, maskList:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    const-string/jumbo v4, "3"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v1, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 75
    .end local v1           #maskList:Ljava/lang/String;
    .end local v2           #maskSelectCount:I
    :cond_2
    const v3, 0x7f0d0157

    if-ne v0, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mGv:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->selectPageItem(II)V

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v0, 0x7f03006d

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
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setItemCheck(I)Z

    .line 101
    :cond_0
    return-void
.end method
