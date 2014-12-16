.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "ActiveTestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;
    }
.end annotation


# instance fields
.field private actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

.field private activeTestButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;"
        }
    .end annotation
.end field

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

.field private btnCombineGraph:Landroid/widget/Button;

.field private btnMultipleGraph:Landroid/widget/Button;

.field private btnSetMaxMin:Landroid/widget/Button;

.field private btnTextList:Landroid/widget/Button;

.field private combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

.field private mBundle:Landroid/os/Bundle;

.field private mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

.field private mCurrentActiveType:Ljava/lang/String;

.field private mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

.field private mMaskString:Ljava/lang/String;

.field private spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnCombineGraph:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->refreshButton()V

    return-void
.end method

.method private addCombineGraphTad()V
    .locals 7

    .prologue
    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->removeTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 126
    :cond_0
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Landroid/view/View;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 142
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    invoke-virtual {v6, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 144
    return-void
.end method

.method private ifSameArray(Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    const/4 v2, 0x0

    .line 324
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 333
    :goto_0
    return v1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 333
    const/4 v1, 0x1

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual {v1}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 329
    goto :goto_0

    .line 327
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;

    .line 147
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0144

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;

    .line 148
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    .line 149
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0145

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnCombineGraph:Landroid/widget/Button;

    .line 150
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    .line 152
    new-instance v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$2;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-direct {v7, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Landroid/view/View;)V

    .line 168
    .local v7, multipleGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;

    invoke-direct {v4, p0, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 169
    .local v0, ggftablister:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;>;"
    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->setCallKeyDownFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V

    .line 170
    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 172
    new-instance v8, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;

    invoke-direct {v8, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Landroid/view/View;)V

    .line 186
    .local v8, textListTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTextListFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Z)V

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    invoke-virtual {v8, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 188
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;

    const-string/jumbo v2, "610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 190
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->addCombineGraphTad()V

    .line 192
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 197
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 198
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnMultipleGraph:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshButton()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 203
    :cond_0
    return-void
.end method

.method private upDateButtonGridView(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, activeTestButton:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    if-nez p1, :cond_1

    const/4 v9, 0x0

    .line 212
    .local v9, numColumns:I
    :goto_0
    if-nez v9, :cond_2

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :cond_0
    :goto_1
    return-void

    .line 211
    .end local v9           #numColumns:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_0

    .line 216
    .restart local v9       #numColumns:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014a

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 220
    .local v7, gridCmdGroud:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 222
    .local v13, spinnerCmdGroup:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 223
    .local v12, screenWidth:I
    const/4 v15, 0x0

    .line 225
    .local v15, totalWidth:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_4

    .line 234
    if-le v12, v15, :cond_5

    .line 235
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 243
    :cond_3
    sub-int v6, v12, v15

    .line 244
    .local v6, extraPixels:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    div-int v5, v6, v17

    .line 246
    .local v5, eachExtra:I
    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 248
    .local v16, view:Landroid/view/View;
    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 249
    .local v4, button:Landroid/widget/TextView;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setId(I)V

    .line 250
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 260
    .local v11, paint:Landroid/text/TextPaint;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 261
    .local v14, textWidthPx:F
    float-to-int v0, v14

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1c

    add-int v17, v17, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 262
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 226
    .end local v4           #button:Landroid/widget/TextView;
    .end local v5           #eachExtra:I
    .end local v6           #extraPixels:I
    .end local v11           #paint:Landroid/text/TextPaint;
    .end local v14           #textWidthPx:F
    .end local v16           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 227
    .restart local v16       #view:Landroid/view/View;
    const v17, 0x7f0d004d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    .restart local v4       #button:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    .line 230
    .restart local v11       #paint:Landroid/text/TextPaint;
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 231
    .restart local v14       #textWidthPx:F
    int-to-float v0, v15

    move/from16 v17, v0

    const/high16 v18, 0x41e0

    add-float v18, v18, v14

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 225
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 266
    .end local v4           #button:Landroid/widget/TextView;
    .end local v11           #paint:Landroid/text/TextPaint;
    .end local v14           #textWidthPx:F
    .end local v16           #view:Landroid/view/View;
    :cond_5
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014c

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 270
    .local v3, btnChoose:Landroid/widget/TextView;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;

    invoke-virtual/range {v17 .. v17}, Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;->getTitle()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0d014d

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 294
    .local v10, okBtn:Landroid/widget/Button;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    new-instance v17, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment$6;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public callBackonSetMaxMinClick()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->callBackonSetMaxMinClick()V

    .line 449
    :cond_0
    return-void
.end method

.method public getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    return-object v0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const v0, 0x7f070507

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 401
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 105
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->initView()V

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 107
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, b:Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    if-eqz v0, :cond_1

    .line 69
    const-string/jumbo v4, "ActiveTestList"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    .line 70
    const-string/jumbo v4, "ActiveTestButton"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    .line 71
    const-string/jumbo v4, "ActiveTestType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;

    .line 72
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;

    .line 81
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "is_upload_report"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addDataStreamList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 85
    :cond_1
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v1, v5, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager;-><init>(Ljava/util/List;J)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    .line 86
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 87
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    const v5, 0x7f070507

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 90
    return-void

    .line 75
    .restart local v2       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCallKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    if-ne p1, v1, :cond_1

    .line 419
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    if-nez p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 411
    .local v0, id:I
    const v1, 0x7f0d0147

    if-ne v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->callBackonSetMaxMinClick()V

    .line 414
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 317
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->spinner:Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SpinnerPopupWindow;->dismissPopupWindow()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 321
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 368
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroy()V

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->clear()V

    .line 118
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setActiveTest(Z)V

    .line 119
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f07056c

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;II)V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onResume()V

    .line 112
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newMask"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public onSelectionItem(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 432
    return-void
.end method

.method public setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 437
    return-void
.end method

.method public setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 391
    return-void
.end method

.method public updateActiveTestListener(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 338
    .local p1, activeDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .local p2, activeTestButton:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicButtonBean;>;"
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 341
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    .line 342
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->performClick()Z

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mMaskString:Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mCurrentActiveType:Ljava/lang/String;

    const-string/jumbo v3, "610"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->addCombineGraphTad()V

    .line 354
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestList:Ljava/util/ArrayList;

    .line 355
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->ifSameArray(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->activeTestButton:Ljava/util/ArrayList;

    .line 357
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->upDateButtonGridView(Ljava/util/ArrayList;)V

    .line 359
    :cond_2
    return-void

    .line 345
    .restart local v0       #i:I
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/ActiveTestFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    goto :goto_1
.end method
