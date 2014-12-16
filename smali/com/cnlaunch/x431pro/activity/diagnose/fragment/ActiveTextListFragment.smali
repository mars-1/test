.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;
.source "ActiveTextListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;"
    }
.end annotation


# instance fields
.field private activeTestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private lvData:Landroid/widget/ListView;

.field private mActiveDataStreamMask:Ljava/lang/String;

.field private mCurrentActiveType:Ljava/lang/String;

.field private mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

.field private mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->lvData:Landroid/widget/ListView;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mActiveDataStreamMask:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mCurrentActiveType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->lvData:Landroid/widget/ListView;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mActiveDataStreamMask:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mCurrentActiveType:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 38
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 39
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0141

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->lvData:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->lvData:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->lvData:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->initView()V

    .line 57
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v1, "DataStreamMask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mActiveDataStreamMask:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "ActiveTestType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mCurrentActiveType:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "ActiveValueList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->activeTestList:Ljava/util/ArrayList;

    .line 49
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mCurrentActiveType:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    .line 51
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const v0, 0x7f030067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 79
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 67
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v0, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->setCheck(I)V

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->setAllItemChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->onSelectionChanged(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public setRecorder(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V
    .locals 1
    .parameter "recorder"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mRecorder:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;->setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V

    .line 90
    return-void
.end method

.method public updateDataStream(JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter "times"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, datas:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    .local p4, latestData:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;->mDataAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;

    invoke-virtual {v0, p4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/ActiveTestShowListAdapter;->updateList(Ljava/util/List;)V

    .line 84
    return-void
.end method
