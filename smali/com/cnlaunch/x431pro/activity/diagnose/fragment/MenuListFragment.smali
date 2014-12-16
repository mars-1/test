.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "MenuListFragment.java"

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
.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;

.field mFirstItem:I

.field private mHelpStr:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mType:Ljava/lang/String;

.field private menuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicMenuBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;

    .line 36
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mFirstItem:I

    .line 30
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c018d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mListView:Landroid/widget/ListView;

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;

    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/MenuListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mFirstItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mHelpStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f070504

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public hasHelpInfo()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mType:Ljava/lang/String;

    const-string/jumbo v1, "310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mType:Ljava/lang/String;

    const-string/jumbo v1, "320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->initView()V

    .line 43
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v1, "MenuList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->menuList:Ljava/util/ArrayList;

    .line 51
    const-string/jumbo v1, "FirstItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mFirstItem:I

    .line 52
    const-string/jumbo v1, "MenuType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mType:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "MenuHelp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mHelpStr:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 72
    const v0, 0x7f030076

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x3

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->showRemoteDialog(I)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 92
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, firstItem:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;->getMenuListType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    :goto_0
    return-void

    .line 95
    .end local v0           #firstItem:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->mFirstItem:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/diagnosemodule/utils/ByteHexHelper;->intToHexBytes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0       #firstItem:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/MenuListFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-static {}, Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;->getMenuListType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
