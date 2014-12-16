.class public Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "DataStreamShowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;
.implements Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;,
        Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataStreamShowFragment"


# instance fields
.field private actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

.field private btnCombineGraph:Landroid/widget/Button;

.field private btnCustom:Landroid/widget/Button;

.field private btnHelp:Landroid/widget/Button;

.field private btnHome:Landroid/widget/Button;

.field private btnMultipleGraph:Landroid/widget/Button;

.field private btnRecord:Landroid/widget/Button;

.field private btnSetMaxMin:Landroid/widget/Button;

.field private btnStopRecord:Landroid/widget/Button;

.field private btnTextList:Landroid/widget/Button;

.field private btnVWExit:Landroid/widget/Button;

.field private btnVWNextChannel:Landroid/widget/Button;

.field private btnVWUpChannel:Landroid/widget/Button;

.field private channgelChanged:Z

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.field private helpIndex:I

.field private isRecordUnit:Z

.field private isSort:Z

.field private linearLayout:Landroid/widget/LinearLayout;

.field private mBtnSelectAll:Landroid/widget/CheckBox;

.field private mBundle:Landroid/os/Bundle;

.field private mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

.field private mChronometer:Landroid/widget/Chronometer;

.field private mCollator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDatastreamType:Ljava/lang/String;

.field private mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

.field private mDataStreamCount:I

.field private mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

.field private mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

.field private mJumpType:I

.field private mMaskString:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecoredDate:Ljava/lang/String;

.field private mRecoredFileId:I

.field private mRecoredFileName:Ljava/lang/String;

.field private mRecoredGroupID:I

.field private mRecoredInit:I

.field private mVWDatastreamLayout:Landroid/widget/LinearLayout;

.field private recordView:Landroid/view/View;

.field private subView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    .line 97
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;

    .line 103
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->helpIndex:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataList:Ljava/util/List;

    .line 106
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isRecordUnit:Z

    .line 107
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCollator:Ljava/util/Comparator;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isSort:Z

    .line 186
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopAndSaveRecord()V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->subView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHelp:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopRecord()V

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isRecordUnit:Z

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    return-void
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    return-object v0
.end method

.method private checkRecordStatus()Z
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070550

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 446
    const/4 v0, 0x0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initBottomActionBar()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0158

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    .line 238
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    .line 239
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    .line 240
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0142

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->subView:Landroid/view/View;

    .line 241
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    .line 243
    new-instance v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-direct {v7, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Landroid/view/View;)V

    .line 264
    .local v7, combineGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v5, v13, :cond_1

    move v5, v10

    :goto_0
    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V

    move-object v5, p0

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 264
    invoke-virtual {v7, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 267
    new-instance v8, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$3;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-direct {v8, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Landroid/view/View;)V

    .line 289
    .local v8, multipleGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;

    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v5, v10, :cond_2

    move v5, v10

    :goto_1
    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 291
    .local v0, ggftablister:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;>;"
    invoke-virtual {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;->setCallKeyDownFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V

    .line 292
    invoke-virtual {v8, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 294
    new-instance v9, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    invoke-direct {v9, p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Landroid/view/View;)V

    .line 310
    .local v9, textListTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/TextListFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;

    new-instance v5, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;

    iget v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-nez v6, :cond_3

    move v6, v10

    :goto_2
    invoke-direct {v5, p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V

    move-object v6, p0

    .line 311
    invoke-direct/range {v1 .. v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;-><init>(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/Runnable;Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelectionRecorder;)V

    .line 310
    invoke-virtual {v9, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;->setTabListener(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$TabListener;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;

    .line 313
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 314
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 315
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->addTab(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;)V

    .line 317
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-nez v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    .line 333
    :cond_0
    :goto_3
    return-void

    .end local v0           #ggftablister:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;>;"
    .end local v8           #multipleGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    .end local v9           #textListTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    :cond_1
    move v5, v11

    .line 264
    goto :goto_0

    .restart local v8       #multipleGraphTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    :cond_2
    move v5, v11

    .line 289
    goto :goto_1

    .restart local v0       #ggftablister:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener;,"Lcom/cnlaunch/x431pro/activity/diagnose/listenter/TabListener<Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;>;"
    .restart local v9       #textListTab:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
    :cond_3
    move v6, v11

    .line 310
    goto :goto_2

    .line 322
    :cond_4
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v1, v10, :cond_5

    .line 323
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_3

    .line 327
    :cond_5
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v1, v13, :cond_0

    .line 328
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnMultipleGraph:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnTextList:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCombineGraph:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_3
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    .line 197
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    const-string/jumbo v1, "%s"

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0168

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnStopRecord:Landroid/widget/Button;

    .line 199
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0149

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHelp:Landroid/widget/Button;

    .line 200
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCustom:Landroid/widget/Button;

    .line 201
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0163

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    .line 202
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0143

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHome:Landroid/widget/Button;

    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0147

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    .line 206
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBtnSelectAll:Landroid/widget/CheckBox;

    .line 210
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0166

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWUpChannel:Landroid/widget/Button;

    .line 211
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0167

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWNextChannel:Landroid/widget/Button;

    .line 212
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWExit:Landroid/widget/Button;

    .line 213
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->recordView:Landroid/view/View;

    .line 215
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0165

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;

    .line 216
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isOnClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnStopRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnCustom:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWUpChannel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWNextChannel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnVWExit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBtnSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 232
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->initBottomActionBar()V

    .line 233
    return-void
.end method

.method private recordUnit(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 533
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isRecordUnit:Z

    .line 534
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->writeDsBasics(ILjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070551

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 538
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopAndSaveRecord()V

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method private startRecord()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHome:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 456
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v6, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setDatastreamRecordFlag(ZI)V

    .line 457
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070541

    invoke-static {v0, v1, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->recordView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/widget/Chronometer;->setBase(J)V

    .line 461
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 462
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, serialNum:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, language:Ljava/lang/String;
    new-instance v0, Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    invoke-direct {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    invoke-virtual {v0}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->init()I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredInit:I

    .line 467
    sget-object v0, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_SS:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/date/DateUtils;->currentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredDate:Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getCarSoftName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, name:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".x431"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    .line 471
    const-string/jumbo v3, "1.0"

    .line 472
    .local v3, diagversion:Ljava/lang/String;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredInit:I

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getTempImagesPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->creatFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileId:I

    .line 473
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileId:I

    if-lez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileId:I

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->writeNewGroup(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    .line 476
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    .line 487
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->start()V

    .line 492
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070552

    invoke-static {v0, v1, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 490
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopRecord()V

    goto :goto_0
.end method

.method private stopAndSaveRecord()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHome:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setDatastreamRecordFlag(ZI)V

    .line 510
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 511
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->recordView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 514
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    invoke-virtual {v0, v1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readGroupItemCount(I)I

    move-result v7

    .line 515
    .local v7, frameCount:I
    if-gtz v7, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070553

    invoke-static {v0, v1, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 517
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getTempImagesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 528
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    .line 529
    return-void

    .line 521
    .end local v6           #file:Ljava/io/File;
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredDate:Ljava/lang/String;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileId:I

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredInit:I

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->writeEndCloseFile(ILjava/lang/String;IILjava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getTempImagesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getImagesPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/diagnosemodule/utils/CopyFile;->CopySdcardFile(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getTempImagesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .restart local v6       #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f070554

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private stopRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v2, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setDatastreamRecordFlag(ZI)V

    .line 497
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 498
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->recordView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    .line 501
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnHome:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 502
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    return-void
.end method


# virtual methods
.method public callBackonSetMaxMinClick()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->callBackonSetMaxMinClick()V

    .line 682
    :cond_0
    return-void
.end method

.method public getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    return-object v0
.end method

.method public getHelpInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 627
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->helpIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 629
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->helpIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->getHelp()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, info:Ljava/lang/String;
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getHelpInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 639
    .end local v1           #info:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getHelpInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 639
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const v2, 0x7f070540

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const v0, 0x7f070500

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrintData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 611
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 612
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/conversion/MeasureConversion;->convertMeasure(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 615
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->getPrintData(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, data:Ljava/lang/String;
    goto :goto_0
.end method

.method public hasHelpInfo()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->initView()V

    .line 176
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->registerBroadcastReceiver()V

    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V

    .line 178
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const v7, 0x7f07070e

    const/4 v8, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onAttach(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "is_sort"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isSort:Z

    .line 114
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 116
    const-string/jumbo v4, "DataStreamShow_Type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    .line 117
    const-string/jumbo v4, "DataStreamShow"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 118
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v5, "810"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v5, "800"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    iget v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDataStreamCount(I)V

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 129
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v5, v2}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addDataStreamList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 139
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isSort:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v5, "810"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 140
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCollator:Ljava/util/Comparator;

    .line 141
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCollator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 143
    :cond_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_a

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;

    .line 152
    .end local v1           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v4, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataList:Ljava/util/List;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/X431DataStreamManager;-><init>(Ljava/util/List;J)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    .line 153
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 154
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamJumpType()I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    .line 158
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    const v5, 0x7f070500

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setSubTitle(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 160
    return-void

    .line 122
    :cond_7
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDataStreamCount()I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    .line 123
    iget v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    if-gtz v4, :cond_1

    .line 124
    const-string/jumbo v4, "DataStreamShow_Count"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I

    goto/16 :goto_0

    .line 132
    :cond_8
    invoke-static {p1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "is_upload_report"

    invoke-virtual {v4, v5, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2       #name:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0, v7}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {v4, v5, v2}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->addDataStreamList(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .restart local v1       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_a
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataList:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public onCallKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    if-ne p1, v1, :cond_1

    .line 661
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 663
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    :cond_0
    :goto_0
    return v2

    .line 666
    :cond_1
    if-nez p1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnSetMaxMin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 669
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mVWDatastreamLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    invoke-interface {v0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;->setAllItemChecked(Z)V

    .line 564
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 372
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onClick(Landroid/view/View;)V

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 374
    .local v5, id:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0d0143

    if-ne v5, v6, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f07053f

    const/16 v8, 0x11

    invoke-static {v6, v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const v6, 0x7f0d0147

    if-ne v5, v6, :cond_2

    .line 379
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v6, v10, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->callBackonSetMaxMinClick()V

    goto :goto_0

    .line 382
    :cond_2
    const v6, 0x7f0d0164

    if-ne v5, v6, :cond_3

    .line 383
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;-><init>()V

    .line 384
    .local v1, customFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v6, "DataStreamSelect"

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 386
    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;->setBundle(Landroid/os/Bundle;)V

    .line 387
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    const-class v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7, v8}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 388
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #customFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamCustomSelectFragment;
    :cond_3
    const v6, 0x7f0d0163

    if-ne v5, v6, :cond_5

    .line 389
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v6

    if-nez v6, :cond_0

    .line 390
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/file/FileUtils;->getSDFreeSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1e

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 391
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getTempImagesPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 393
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->startRecord()V

    .line 394
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->setRecordingStatus(Z)V

    .line 395
    invoke-static {v10}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->setRecordingStatus(Z)V

    goto :goto_0

    .line 397
    .end local v3           #file:Ljava/io/File;
    :cond_4
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f070552

    invoke-static {v6, v7}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 400
    :cond_5
    const v6, 0x7f0d0168

    if-ne v5, v6, :cond_7

    .line 401
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    invoke-virtual {v6, v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readGroupItemCount(I)I

    move-result v4

    .line 403
    .local v4, frameCount:I
    if-gtz v4, :cond_6

    .line 404
    new-instance v2, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    .line 405
    .local v2, dialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    const v6, 0x7f0704df

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setTitle(I)V

    .line 406
    const v6, 0x7f07053b

    invoke-virtual {v2, v6}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    .line 407
    const v6, 0x7f07003d

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v10, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 408
    const v6, 0x7f070038

    new-instance v7, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;

    invoke-direct {v7, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    invoke-virtual {v2, v6, v10, v7}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 418
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto/16 :goto_0

    .line 420
    .end local v2           #dialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;
    :cond_6
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 421
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->btnRecord:Landroid/widget/Button;

    const v7, 0x7f070529

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 422
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopAndSaveRecord()V

    .line 423
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/CombinedGraphFragment;->setRecordingStatus(Z)V

    .line 424
    invoke-static {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->setRecordingStatus(Z)V

    goto/16 :goto_0

    .line 427
    .end local v4           #frameCount:I
    :cond_7
    const v6, 0x7f0d0166

    if-ne v5, v6, :cond_8

    .line 428
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->checkRecordStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    const-string/jumbo v7, "19"

    const-string/jumbo v8, "1"

    invoke-interface {v6, v7, v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 430
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    goto/16 :goto_0

    .line 432
    :cond_8
    const v6, 0x7f0d0167

    if-ne v5, v6, :cond_9

    .line 433
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->checkRecordStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    const-string/jumbo v7, "19"

    const-string/jumbo v8, "2"

    invoke-interface {v6, v7, v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 435
    iput-boolean v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    goto/16 :goto_0

    .line 437
    :cond_9
    const v6, 0x7f0d003d

    if-ne v5, v6, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->checkRecordStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    const-string/jumbo v7, "19"

    const-string/jumbo v8, "-1"

    invoke-interface {v6, v7, v8, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 707
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    .line 709
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/BottomButtonTransition;->getLayoutTransition(Ljava/lang/Object;)Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 710
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 711
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 337
    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->clear()V

    .line 166
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->stopAndSaveRecord()V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDatastreamRecord(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 585
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07053f

    const/16 v2, 0x11

    invoke-static {v0, v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;II)V

    .line 606
    :cond_0
    :goto_0
    return v3

    .line 592
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJumpType:I

    if-ne v3, v0, :cond_2

    .line 593
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getFragment()Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;->onCallKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const-string/jumbo v1, "34"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onSelectionChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "newMask"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;

    .line 551
    const-string/jumbo v0, "DataStreamShowFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mask:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method public onSelectionItem(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 645
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->helpIndex:I

    .line 646
    return-void
.end method

.method public setFragment(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 650
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCallKeyDownFragment:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ICallKeyDownFragment;

    .line 651
    return-void
.end method

.method public setSelector(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;)V
    .locals 3
    .parameter "selector"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamSelector:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/IDataStreamSelector;

    .line 545
    const-string/jumbo v0, "DataStreamShowFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSelector:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public updateDataStreamListener(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 344
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isSort:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;

    const-string/jumbo v1, "810"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$SortRuleCollator;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCollator:Ljava/util/Comparator;

    .line 346
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCollator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;

    .line 349
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isRecordUnit:Z

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->recordUnit(Ljava/util/ArrayList;)V

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isDatastreamRecord()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mJniFile:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mRecoredGroupID:I

    invoke-virtual {v0, v1, p1}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->writeDSDate(ILjava/util/ArrayList;)V

    .line 357
    :cond_2
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    if-eqz v0, :cond_4

    .line 358
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDataStreamShowingFragment;->setChanngelChangedStatus(Z)V

    .line 359
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->getLastClickView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->actionBar:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->getLastClickView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar;->onClick(Landroid/view/View;)V

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->resetData()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->channgelChanged:Z

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->addDataStreamItem(Ljava/util/List;)V

    goto :goto_0
.end method
