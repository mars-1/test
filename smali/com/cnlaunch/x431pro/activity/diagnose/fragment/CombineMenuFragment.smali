.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "CombineMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private combineMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicCombineMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field firtItem:I

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnClear:Landroid/widget/Button;

.field private mBtnSure:Landroid/widget/Button;

.field private mLv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mLv:Landroid/widget/ListView;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    .line 30
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0155

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mLv:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0153

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnSure:Landroid/widget/Button;

    .line 65
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0152

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnClear:Landroid/widget/Button;

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0154

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnBack:Landroid/widget/Button;

    .line 67
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mLv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnSure:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f070506

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->initView()V

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->combineMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->combineMenuList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mLv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/CombineMenuShowListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, mBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v1, "CombineMenuList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->combineMenuList:Ljava/util/ArrayList;

    .line 43
    const-string/jumbo v1, "FirstItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    .line 45
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x3

    .line 77
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 79
    .local v0, id:I
    const v1, 0x7f0d0153

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const-string/jumbo v3, "46"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0000"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    if-ge v1, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    :cond_0
    :goto_1
    return-void

    .line 80
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_2
    const v1, 0x7f0d0152

    if-ne v0, v1, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const-string/jumbo v3, "46"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0001"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    if-ge v1, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 85
    :cond_4
    const v1, 0x7f0d0154

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v2

    const-string/jumbo v3, "46"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0002"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    if-ge v1, v5, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 49
    const v0, 0x7f03006b

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
    .line 93
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "46"

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombineMenuFragment;->firtItem:I

    invoke-static {p3, v2}, Lcom/cnlaunch/diagnosemodule/utils/FeedbackUtil;->getCombineMenuFeedbackCmd(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method
