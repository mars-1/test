.class public Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "DataStreamReplayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;
    }
.end annotation


# instance fields
.field private Relat_v_record:Landroid/widget/RelativeLayout;

.field private btnPlay:Landroid/widget/Button;

.field private btnStop:Landroid/widget/Button;

.field private btnVWExit:Landroid/widget/Button;

.field private combineGraph:Landroid/view/View;

.field private dataStreamAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private dataStreamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mBtnSelectAll:Landroid/widget/CheckBox;

.field private mBundle:Landroid/os/Bundle;

.field private mCurrentDatastreamType:Ljava/lang/String;

.field private mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

.field private mDataStreamCount:I

.field private mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

.field private mHandler:Landroid/os/Handler;

.field private mJumpType:I

.field private mMaskString:Ljava/lang/String;

.field private mReplayCount:I

.field private multipleGraph:Landroid/view/View;

.field private pd_indeter:Landroid/widget/ProgressBar;

.field private textList:Landroid/view/View;

.field private timer:Ljava/util/Timer;

.field private tvTimeRecord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;

    .line 54
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I

    .line 55
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 128
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I

    .line 298
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnPlay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBtnSelectAll:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I

    return-void
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->playSingleData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->stopPlay()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->tvTimeRecord:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->pd_indeter:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mCurrentDatastreamType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamCount:I

    return v0
.end method

.method private initBottomActionBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0158

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->multipleGraph:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->combineGraph:Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->textList:Landroid/view/View;

    .line 137
    new-instance v6, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;-><init>(Landroid/app/Activity;)V

    .line 139
    .local v6, actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;
    new-instance v8, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$2;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->multipleGraph:Landroid/view/View;

    invoke-direct {v8, p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Landroid/view/View;)V

    .line 151
    .local v8, multipleGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayGridFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;

    invoke-direct {v4, p0, v10}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 153
    new-instance v7, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->combineGraph:Landroid/view/View;

    invoke-direct {v7, p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Landroid/view/View;)V

    .line 165
    .local v7, combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayCombinedFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;

    invoke-direct {v4, p0, v10}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 167
    new-instance v9, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$4;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->textList:Landroid/view/View;

    invoke-direct {v9, p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Landroid/view/View;)V

    .line 174
    .local v9, textListTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/replay/ReplayListFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;

    invoke-direct {v4, p0, v10}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 176
    invoke-virtual {v6, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 177
    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 178
    invoke-virtual {v6, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->textList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 180
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBtnSelectAll:Landroid/widget/CheckBox;

    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnStop:Landroid/widget/Button;

    .line 112
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnPlay:Landroid/widget/Button;

    .line 113
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnVWExit:Landroid/widget/Button;

    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->Relat_v_record:Landroid/widget/RelativeLayout;

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->tvTimeRecord:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->pd_indeter:Landroid/widget/ProgressBar;

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->pd_indeter:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnPlay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnStop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnVWExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBtnSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 125
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->initBottomActionBar()V

    .line 126
    return-void
.end method

.method private playSingleData(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 283
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    .line 285
    return-void
.end method

.method private startPlay()V
    .locals 6

    .prologue
    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    .line 223
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V

    .line 239
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 223
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 241
    :cond_0
    return-void
.end method

.method private stopPlay()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->timer:Ljava/util/Timer;

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->initView()V

    .line 106
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 65
    const-string/jumbo v6, "DataStreamCount"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamCount:I

    .line 66
    const-string/jumbo v6, "DataStreamShow_Type"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mCurrentDatastreamType:Ljava/lang/String;

    .line 67
    const-string/jumbo v6, "DataStreamAll"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    .line 68
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 69
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 73
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 81
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;

    .line 90
    .end local v3           #i:I
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v6, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v2, v7, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431ReplayDataStreamManager;-><init>(Ljava/util/List;J)V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    .line 91
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 92
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    .line 94
    :cond_3
    return-void

    .line 75
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 76
    .local v5, templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .line 77
    .local v0, bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    goto :goto_1

    .line 84
    .end local v0           #bean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .end local v5           #templist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    .restart local v3       #i:I
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const-string/jumbo v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    invoke-interface {v0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;->setAllItemChecked(Z)V

    .line 263
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 205
    .local v0, id:I
    const v1, 0x7f0d015b

    if-ne v0, v1, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->startPlay()V

    .line 207
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->Relat_v_record:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnStop:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnPlay:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    const v1, 0x7f0d015a

    if-ne v0, v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->stopPlay()V

    .line 212
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnStop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->btnPlay:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 191
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->textList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->multipleGraph:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 197
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->combineGraph:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 184
    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->clear()V

    .line 100
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newMask"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public onSelectionItem(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 296
    return-void
.end method

.method public setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V
    .locals 0
    .parameter "selector"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    .line 256
    return-void
.end method
