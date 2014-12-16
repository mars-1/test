.class public Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;
.super Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;
.source "RemoteReportFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteReportFragment"


# instance fields
.field private backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

.field private btnSendReport:Landroid/widget/Button;

.field private etResult:Landroid/widget/EditText;

.field private locationInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

.field private mHandler:Landroid/os/Handler;

.field private tvCarName:Landroid/widget/TextView;

.field private tvCarVIN:Landroid/widget/TextView;

.field private tvDiagnoseTime:Landroid/widget/TextView;

.field private tvFaultCode:Landroid/widget/TextView;

.field private tvMasterName:Landroid/widget/TextView;

.field private tvReportTitle:Landroid/widget/TextView;

.field private upLoadFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->upLoadFlag:Z

    .line 62
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->locationInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    .line 63
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    .line 167
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvReportTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarVIN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->btnSendReport:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const v4, 0x7f07070b

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvReportTitle:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01c1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvFaultCode:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvReportTitle:Landroid/widget/TextView;

    const v2, 0x7f0706fa

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarName:Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvCarVIN:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvDiagnoseTime:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01b9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvMasterName:Landroid/widget/TextView;

    .line 91
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvFaultCode:Landroid/widget/TextView;

    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getFaultCodeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvDiagnoseTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f07070a

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cnlaunch/x431pro/utils/date/DateStyle;->YYYY_MM_DD_HH_MM_SS:Ljava/lang/String;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/date/DateUtils;->currentDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, pubName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvMasterName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c004b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->btnSendReport:Landroid/widget/Button;

    .line 100
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->btnSendReport:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01bc

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->etResult:Landroid/widget/EditText;

    .line 102
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->tvMasterName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getUserNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 12
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 106
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v10

    :goto_0
    return-object v10

    .line 108
    :sswitch_0
    new-instance v7, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;-><init>(Landroid/content/Context;)V

    .line 109
    .local v7, goloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getRemoteSerialNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;->getRemoteCarInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;

    move-result-object v10

    .line 110
    .local v10, response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    goto :goto_0

    .line 112
    .end local v7           #goloAction:Lcom/cnlaunch/x431pro/module/golo/action/GoloAction;
    .end local v10           #response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    :sswitch_1
    new-instance v8, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;-><init>(Landroid/content/Context;)V

    .line 113
    .local v8, reportAction:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "serialNo"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, proSnkey:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getRemoteSerialNum()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->locationInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getGoloLon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getGoloLat()Ljava/lang/String;

    move-result-object v6

    .line 114
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->createRemoteReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    move-result-object v9

    .line 116
    .local v9, reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;->setGoloId(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v8, v9}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->upLoadReport(Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    move-result-object v11

    .local v11, upLoadresponse:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    move-object v10, v11

    .line 118
    goto/16 :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e2b -> :sswitch_1
        0x4e2f -> :sswitch_0
    .end sparse-switch
.end method

.method public getMainTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f070705

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->initViews()V

    .line 69
    const/16 v0, 0x4e2f

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->request(IZ)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 215
    .local v0, id:I
    const v2, 0x7f0c004b

    if-ne v0, v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->etResult:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, temp:Ljava/lang/String;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f07070f

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #temp:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->setConclusion(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/LocationUtils;->getLocationInfo(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->locationInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    .line 219
    const/16 v2, 0x4e2b

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->request(IZ)V

    .line 221
    :cond_1
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const v0, 0x7f030078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onDestroyView()V

    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRemoteFlag(Z)V

    .line 250
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->clearReportProduceTool()V

    .line 251
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 155
    sparse-switch p1, :sswitch_data_0

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onFailure(IILjava/lang/Object;)V

    .line 165
    :goto_0
    return-void

    .line 157
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 160
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e2b -> :sswitch_1
        0x4e2f -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 226
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->upLoadFlag:Z

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->exitDiagnoseRunning(I)V

    .line 243
    :goto_0
    return v0

    .line 229
    :cond_0
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)V

    .line 239
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070544

    const v5, 0x7f070711

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;->showDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 243
    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 7
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    :sswitch_0
    move-object v2, p2

    .line 128
    check-cast v2, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;

    .line 129
    .local v2, response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 130
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;

    .line 131
    .local v1, info:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 133
    .end local v1           #info:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoData;
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v2           #response:Lcom/cnlaunch/x431pro/module/golo/model/MineCarInfoResponse;
    :sswitch_1
    move-object v3, p2

    .line 137
    check-cast v3, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    .line 138
    .local v3, upLoadresponse:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->getCode()I

    move-result v0

    .line 139
    .local v0, code:I
    if-eqz v0, :cond_1

    .line 140
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 142
    :cond_1
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->upLoadFlag:Z

    .line 143
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->getData()Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->backInfo:Lcom/cnlaunch/x431pro/module/report/model/ReportBackInfo;

    .line 144
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e2b -> :sswitch_1
        0x4e2f -> :sswitch_0
    .end sparse-switch
.end method
