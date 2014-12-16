.class public Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "DiagnoseActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DiagnoseActivity"


# instance fields
.field private baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

.field private btnVoice:Landroid/widget/Button;

.field private diagEndTime:Ljava/lang/Long;

.field private diagStartTime:Ljava/lang/Long;

.field private diagTime:Ljava/lang/Long;

.field private diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

.field private isGoGoloMessage:Z

.field private isRemoteDiagnoseConnected:Z

.field private mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

.field private mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

.field private mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

.field private mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

.field private mService:Landroid/os/Messenger;

.field private mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

.field private msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

.field private printStrData:Ljava/lang/String;

.field private remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

.field private reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

.field private saveReportlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;",
            ">;"
        }
    .end annotation
.end field

.field private slidingContanier:Landroid/view/View;

.field private slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

.field private tvChatName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "LICENSE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "x431file"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->printStrData:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;

    .line 132
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 133
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 134
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    .line 135
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    .line 136
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 137
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    .line 138
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    .line 139
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    .line 140
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    .line 141
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    .line 152
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    .line 153
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    .line 268
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    .line 522
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isGoGoloMessage:Z

    .line 1341
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    .line 1369
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$5;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$5;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method private UpLoadReportInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1259
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "is_upload_report"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 1260
    .local v0, isUpLoad:Z
    if-nez v0, :cond_1

    .line 1261
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->clearReportProduceTool()V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getCarSoftName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->setReportTheme(Ljava/lang/String;)V

    .line 1266
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/LocationUtils;->getLocationInfo(Landroid/content/Context;)Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;

    move-result-object v1

    .line 1267
    .local v1, location:Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->createReport(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/LocationInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    .line 1268
    invoke-static {}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->getInstall()Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->clearReportProduceTool()V

    .line 1269
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, useID:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    if-eqz v3, :cond_0

    .line 1274
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/network/NetWorkUtils;->isNetConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1275
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1276
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    .line 1277
    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    goto :goto_0

    .line 1279
    :cond_2
    const/16 v3, 0x4e2c

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->request(IZ)V

    goto :goto_0

    .line 1282
    :cond_3
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    .line 1283
    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1215
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V

    return-void
.end method

.method static synthetic access$12(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V

    return-void
.end method

.method static synthetic access$13(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V

    return-void
.end method

.method static synthetic access$14(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z

    return v0
.end method

.method static synthetic access$15(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z

    return-void
.end method

.method static synthetic access$16(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    return-void
.end method

.method static synthetic access$17(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    return-object v0
.end method

.method static synthetic access$18(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;
    .locals 1
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    return-object v0
.end method

.method static synthetic access$19(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->refrshGridViewColumns()V

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$21(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->UpLoadReportInfo()V

    return-void
.end method

.method static synthetic access$22(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/BaseFragment;
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    return-object v0
.end method

.method static synthetic access$23(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/activity/BaseFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    return-void
.end method

.method static synthetic access$24(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Messenger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$25(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    return-void
.end method

.method static synthetic access$26(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;
    .locals 1
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseDataCallback:Lcom/cnlaunch/diagnosemodule/listener/OnDiagnoseDataListener;

    return-object v0
.end method

.method static synthetic access$27(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-direct {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->messageBoxDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)Landroid/os/Messenger;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V

    return-void
.end method

.method private bindDiagnoseServer(I)V
    .locals 4
    .parameter "startType"

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getBindConnection(I)Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 413
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 414
    return-void
.end method

.method private diag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "path"
    .parameter "language"

    .prologue
    const v3, 0x7f070696

    const v4, 0x7f0704e2

    const/16 v5, 0xc

    .line 689
    sget-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    if-nez v0, :cond_0

    .line 690
    const-string/jumbo v1, "100"

    const-string/jumbo v2, "90"

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 692
    sput-object p1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    .line 693
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 694
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 695
    .local v9, message:Landroid/os/Message;
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v0, v9, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 696
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 697
    .local v6, b:Landroid/os/Bundle;
    const-string/jumbo v0, "LibPath"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string/jumbo v0, "LibLanguage"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v0, "DATASTREAM_PAGE_COUNT"

    sget v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 700
    invoke-virtual {v9, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 701
    invoke-direct {p0, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 715
    .end local v6           #b:Landroid/os/Bundle;
    .end local v9           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 703
    :cond_0
    const-string/jumbo v1, "100"

    const-string/jumbo v2, "90"

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    sput-object p1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    .line 706
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 707
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "BluetoothConnSuccess"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    .local v7, broadIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getLogInfoBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 709
    .local v8, bundle:Landroid/os/Bundle;
    const-string/jumbo v0, "Lib_path"

    invoke-virtual {v8, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string/jumbo v0, "Lib_language"

    invoke-virtual {v8, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string/jumbo v0, "DATASTREAM_PAGE_COUNT"

    sget v1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DATASTREAM_PAGE:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 712
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 713
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private doOnExitDiagnose()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1216
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    if-eqz v3, :cond_0

    .line 1217
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 1219
    :cond_0
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z

    .line 1220
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V

    .line 1221
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    if-nez v3, :cond_1

    .line 1222
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1223
    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    .line 1229
    :cond_1
    :goto_0
    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    .line 1230
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V

    .line 1232
    iget-boolean v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isGoGoloMessage:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    if-eqz v3, :cond_2

    .line 1233
    new-instance v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v1, v3, v4, v5}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 1234
    .local v1, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicID()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 1235
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 1236
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 1237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1238
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "chatroom"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1239
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "show_golo_chatroom"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v2, chatroomIntent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1241
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1243
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    .end local v2           #chatroomIntent:Landroid/content/Intent;
    :cond_2
    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    .line 1244
    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isGoGoloMessage:Z

    .line 1245
    return-void

    .line 1225
    :cond_3
    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    invoke-direct {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    goto :goto_0
.end method

.method private exitDiagDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    sget-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tryDiagTime()V

    .line 456
    sput-boolean v2, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    if-nez v0, :cond_3

    .line 463
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 464
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 465
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x7f07053e

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setMessage(I)V

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    const v1, 0x104000a

    const/4 v2, 0x1

    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$6;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto :goto_0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->setCancelable(Z)V

    .line 487
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;->show()V

    goto :goto_0
.end method

.method private getBindConnection(I)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "startType"

    .prologue
    .line 769
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$7;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;I)V

    .line 811
    .local v0, mConnection:Landroid/content/ServiceConnection;
    return-object v0
.end method

.method private getLogInfoBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1029
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1030
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "serialNum"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v3, "appVer"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string/jumbo v3, "carName"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSoftPackageid()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v3, "softVer"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSoftVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string/jumbo v3, "softLan"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSoftLan()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v3, "binVer"

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getBinVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "diagnose_log_switch"

    invoke-virtual {v3, v4, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    .line 1038
    .local v2, diagnoseLogSwitch:Z
    const-string/jumbo v3, "diagnoseLogSwitch"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getLogsPath()Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, diagnoseLogPath:Ljava/lang/String;
    const-string/jumbo v3, "diagnoseLogPath"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v3, "DiagnoseActivity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "diagnoseLogSwitch="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " diagnoseLogPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    return-object v0
.end method

.method private initRemoteDiagHandler()V
    .locals 2

    .prologue
    .line 898
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$9;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    .line 934
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->setStatues(I)V

    .line 935
    return-void
.end method

.method private refrshGridViewColumns()V
    .locals 3

    .prologue
    const v2, 0x7f0d0007

    .line 209
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    instance-of v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;->setGridviewsColumns(I)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    instance-of v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;->setGridviewsColumns(I)V

    goto :goto_0
.end method

.method private regainMainView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1203
    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isRemoteDiagnoseConnected:Z

    .line 1205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->collapsePane()Z

    .line 1206
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingContanier:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    sput-boolean v2, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 1208
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1212
    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 506
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.cnlaunch.pro.InitClientMessager"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v1, "com.cnlaunch.diagnose.err"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string/jumbo v1, "com.cnlaunch.diagnose.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string/jumbo v1, "BingServiceIsReady"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string/jumbo v1, "LaunchRemoteDiag"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string/jumbo v1, "StopRemotoDiagnose"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v1, "BluetoothBackgroundConnectSuccess"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v1, "BluetoothBackgroundConnectFail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string/jumbo v1, "JumpDownloadBin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string/jumbo v1, "DeviceConnectLost"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v1, "NativeMethodNoFind"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string/jumbo v1, "screen_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    return-void
.end method

.method private declared-synchronized sendServerMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 435
    :try_start_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, deadException:Landroid/os/DeadObjectException;
    :try_start_2
    const-string/jumbo v2, "Sanda"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.os.DeadObjectException"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 433
    .end local v0           #deadException:Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 438
    :catch_1
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V

    .line 441
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V

    goto :goto_0

    .line 444
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagDialog()V

    .line 445
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private tryDiagTime()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 984
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "tryFlag"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v5, :cond_0

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagEndTime:Ljava/lang/Long;

    .line 986
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagEndTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v7

    const-string/jumbo v8, "diagStartTime"

    invoke-virtual {v7, v8, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagTime:Ljava/lang/Long;

    .line 987
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "totalDiagTime"

    invoke-virtual {v5, v6, v9, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v3

    .line 988
    .local v3, totalDiagTime:J
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 989
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 990
    .local v1, df:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, date:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "totalDiagTime"

    invoke-virtual {v5, v6, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 992
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v5

    const-string/jumbo v6, "diagTime_date"

    invoke-virtual {v5, v6, v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    new-instance v2, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 994
    .local v2, productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setTotalDiagTime(J)V

    .line 995
    invoke-virtual {v2, v0}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->setDiagTimeDate(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;->save(Ljava/lang/String;)V

    .line 998
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #df:Ljava/text/DateFormat;
    .end local v2           #productInformation:Lcom/cnlaunch/x431pro/module/rtu/ProductInformation;
    .end local v3           #totalDiagTime:J
    :cond_0
    return-void
.end method

.method private unbindDiagnoseServer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 421
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setBinding(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/cnlaunch/diagnosemodule/service/DiagnoseService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->UpLoadReportInfo()V

    .line 428
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setDiagFlag(Z)V

    .line 429
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SendFeedbackMaskMessage(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 4
    .parameter "type"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, maskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 833
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 834
    invoke-static {v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 835
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 836
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 846
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-static {v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 839
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 840
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 841
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string/jumbo v3, "cmd"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 843
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 844
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public SendFeedbackMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "type"
    .parameter "cmd"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 816
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 817
    invoke-static {v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 818
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 819
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 829
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-static {v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 822
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 823
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 824
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string/jumbo v3, "cmd"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 827
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public SendFeedbackPageStreamMessage(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter "type"
    .parameter "cmd"
    .parameter "page"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 1325
    if-nez p1, :cond_0

    .line 1326
    invoke-static {v3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1327
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1328
    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 1339
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1330
    :cond_0
    invoke-static {v3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1331
    .local v1, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1333
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string/jumbo v3, "cmd"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string/jumbo v3, "page"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1336
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1337
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public addFragmentStack(Landroid/app/Fragment;Ljava/lang/String;Z)V
    .locals 2
    .parameter "newFragment"
    .parameter "name"
    .parameter "flag"

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 885
    .local v0, ft:Landroid/app/FragmentTransaction;
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 886
    if-eqz p3, :cond_0

    .line 887
    invoke-virtual {v0, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 889
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 890
    return-void
.end method

.method public connectDrive(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "connectStyle"
    .parameter "path"
    .parameter "language"

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 851
    const-string/jumbo v1, "%1$s: %2$s......"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0706e7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 852
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 851
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->updateMessage(Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;->show()V

    .line 855
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->setAutoConnBluetooth()V

    .line 856
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    .line 857
    sput-object p3, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 861
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public disconnectBluetooth()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1182
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setDiagFlag(Z)V

    .line 1183
    sput-boolean v0, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->driviceConnStatus:Z

    .line 1184
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->stopConnectThread()V

    .line 1185
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 12
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1057
    packed-switch p1, :pswitch_data_0

    .line 1086
    :pswitch_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1059
    :pswitch_1
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->printStrData:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/cnlaunch/x431pro/utils/print/PrintDataUtils;->printDataPic(Landroid/content/Context;Ljava/lang/String;Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)I

    move-result v6

    .line 1060
    .local v6, result:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 1062
    .end local v6           #result:I
    :pswitch_2
    new-instance v0, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;-><init>(Landroid/content/Context;)V

    .line 1063
    .local v0, action:Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v9}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;->getRemoteServiceAddress(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;

    move-result-object v3

    .line 1064
    .local v3, infoResponse:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;

    move-result-object v2

    .line 1065
    .local v2, infoData:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
    goto :goto_0

    .line 1067
    .end local v0           #action:Lcom/cnlaunch/x431pro/module/diagnose/RemoteDiagAction;
    .end local v2           #infoData:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
    .end local v3           #infoResponse:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoResponse;
    :pswitch_3
    new-instance v4, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;

    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;-><init>(Landroid/content/Context;)V

    .line 1068
    .local v4, reportAction:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-virtual {v4, v9}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->upLoadReport(Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    move-result-object v5

    .local v5, response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    move-object v2, v5

    .line 1069
    goto :goto_0

    .line 1071
    .end local v4           #reportAction:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    .end local v5           #response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    :pswitch_4
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1079
    iget-object v9, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1080
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 1071
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    .line 1072
    .local v1, info:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    new-instance v7, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;

    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;-><init>(Landroid/content/Context;)V

    .line 1073
    .local v7, saveAction:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    invoke-virtual {v7, v1}, Lcom/cnlaunch/x431pro/module/report/action/ReportAction;->upLoadReport(Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    move-result-object v8

    .line 1074
    .local v8, saveResponse:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->getCode()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1076
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    goto :goto_1

    .line 1083
    .end local v1           #info:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    .end local v7           #saveAction:Lcom/cnlaunch/x431pro/module/report/action/ReportAction;
    .end local v8           #saveResponse:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    :pswitch_5
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->UpLoadReportInfo()V

    goto :goto_0

    .line 1057
    :pswitch_data_0
    .packed-switch 0x4e2c
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public exitDiagnoseRunning(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    .line 941
    if-ne p1, v4, :cond_1

    .line 943
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/MConfiguration;->getDefaultDiagnoseType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDiagnoseStatue(I)V

    .line 944
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v1

    invoke-static {v1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDiagIdentity(I)V

    .line 945
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->regainMainView()V

    .line 946
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 947
    .local v0, msg:Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 948
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->removeFloatingWindow()V

    .line 949
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDiagnoseUIDataBusiness:Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;

    const-string/jumbo v2, "100"

    invoke-virtual {v1, v2, v4}, Lcom/cnlaunch/diagnosemodule/DiagnoseUIDataBusiness;->closeAlertDialog(Ljava/lang/String;Z)V

    .line 952
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRemoteFlag(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->disconnectBluetooth()V

    .line 955
    iput-boolean v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->isGoGoloMessage:Z

    .line 956
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->doOnExitDiagnose()V

    .line 981
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 958
    :cond_1
    new-instance v1, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 979
    const v2, 0x7f0704fc

    const v3, 0x7f0704fa

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$10;->showDifDialog(Landroid/content/Context;IIZ)V

    goto :goto_0
.end method

.method public getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    if-nez v0, :cond_0

    .line 1003
    new-instance v0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    return-object v0
.end method

.method public getRemoteDiagRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    return-object v0
.end method

.method public launchDiagnose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .parameter "language"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 661
    const/4 v0, 0x1

    .line 662
    .local v0, canLaunchDiag:Z
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "tryFlag"

    invoke-virtual {v1, v2, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-nez v1, :cond_0

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagStartTime:Ljava/lang/Long;

    .line 665
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagStartTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "tryFlagStartTime"

    invoke-virtual {v3, v4, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "totalDiagTime"

    invoke-virtual {v3, v4, v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "diagStartTime"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagStartTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;J)V

    .line 667
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 675
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 676
    sput-object p1, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LIB_PATH:Ljava/lang/String;

    .line 677
    sput-object p2, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->DIAGNOSE_LANGUAGE:Ljava/lang/String;

    .line 678
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    invoke-direct {p0, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->bindDiagnoseServer(I)V

    .line 682
    :cond_1
    return-void

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 670
    sput-boolean v5, Lcom/cnlaunch/x431pro/common/Constants;->StartDiagFlag:Z

    .line 671
    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->finish()V

    goto :goto_0
.end method

.method public launchRemoteDiag(I)V
    .locals 7
    .parameter "identify"

    .prologue
    const/4 v6, 0x1

    .line 719
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRemoteFlag(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setDiagnoseStatue(I)V

    .line 722
    invoke-static {p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDiagIdentity(I)V

    .line 724
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->initRemoteDiagHandler()V

    .line 726
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->showRemoteDialog(I)V

    .line 729
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingContanier:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mPanelSlideListener:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout$PanelSlideListener;)V

    .line 731
    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 732
    const v2, 0x7f0c0056

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;

    .line 733
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->btnVoice:Landroid/widget/Button;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getOutSideOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 734
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tvChatName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    new-instance v1, Lcom/cnlaunch/newgolo/model/ChatRoom;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherUseName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cnlaunch/newgolo/model/ChatType;->single:Lcom/cnlaunch/newgolo/model/ChatType;

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/newgolo/model/ChatRoom;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ChatType;)V

    .line 736
    .local v1, chatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicID()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 737
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getOtherPublicName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 738
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->request_id:Ljava/lang/String;

    .line 739
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 740
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "chatroom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 741
    const-string/jumbo v2, "isRemote"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 742
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 743
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c0058

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const-class v5, Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 744
    sput-boolean v6, Lcom/cnlaunch/newgolo/task/ReceiveTask;->isAutoPlay:Z

    .line 745
    const/16 v2, 0x4e2e

    invoke-virtual {p0, v2, v6}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->request(IZ)V

    .line 746
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->setContentView(I)V

    .line 164
    new-instance v0, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mExitDiagAlertDialog:Lcom/cnlaunch/x431pro/widget/dialog/MessageDialog;

    .line 166
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    .line 168
    sput-boolean v1, Lcom/cnlaunch/x431pro/common/Constants;->STAT_SETTING_FLAG:Z

    .line 170
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->registerBroadcastReceiver()V

    .line 171
    invoke-static {}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->getInstance()Lcom/cnlaunch/physics/bluetooth/BluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/physics/bluetooth/BluetoothManager;->initBluetoothManager(Landroid/content/Context;)V

    .line 175
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 176
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x6

    const-string/jumbo v2, "My Lock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 179
    .local v8, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 180
    .local v7, info:Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setAppVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v7           #info:Landroid/content/pm/PackageInfo;
    .end local v8           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    if-nez p1, :cond_0

    .line 185
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragmentForUSA;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c0052

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    const-string/jumbo v3, "CarIcon"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 193
    :cond_0
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    .line 194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingLayout:Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/SlidingUpPanelLayout;->setAnchorPoint(F)V

    .line 197
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->slidingContanier:Landroid/view/View;

    .line 198
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->tvChatName:Landroid/widget/TextView;

    .line 199
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mBluetoothConnectWaitDialog:Lcom/cnlaunch/x431pro/activity/diagnose/view/DiagnoseWaitDialog;

    .line 200
    return-void

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/CarIconFragment;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->baseFragment:Lcom/cnlaunch/x431pro/activity/BaseFragment;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 494
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 496
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.cnlaunch.intent.action.DIAG_UNCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->unbindDiagnoseServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDiagnoseAcitvityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->msgFragment:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1251
    :cond_0
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1138
    packed-switch p1, :pswitch_data_0

    .line 1166
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 1169
    :goto_0
    return-void

    .line 1140
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    invoke-interface {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;->onPrintStateListenter()V

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setPrinting(Z)V

    .line 1144
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 1145
    const v1, 0x7f0706a8

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1148
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    .line 1149
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    goto :goto_0

    .line 1152
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    if-eqz v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->dimissAllDialog()V

    .line 1155
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->exitDiagnoseRunning(I)V

    .line 1156
    const v1, 0x7f07071f

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1159
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1163
    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 1159
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    .line 1160
    .local v0, info:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    goto :goto_1

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x4e2c
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    invoke-interface {v0, p1, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 6
    .parameter "requestCode"
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 1092
    packed-switch p1, :pswitch_data_0

    .line 1131
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSuccess(ILjava/lang/Object;)V

    .line 1134
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 1094
    .restart local p2
    :pswitch_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    if-eqz v3, :cond_1

    .line 1095
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    invoke-interface {v3}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;->onPrintStateListenter()V

    .line 1097
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setPrinting(Z)V

    .line 1098
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    move-object v3, p2

    .line 1099
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Lcom/cnlaunch/framework/utils/NetPOSPrinterUtil;->resultToast(Landroid/content/Context;I)V

    .line 1100
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xfff

    if-ne v3, v4, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    sget-object v4, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1102
    new-instance v3, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/widget/dialog/PrinterFailrueDialog;->show()V

    goto :goto_0

    .line 1104
    :cond_2
    const v3, 0x7f070009

    invoke-static {p0, v3}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1110
    .restart local p2
    :pswitch_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 1113
    check-cast v1, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;

    .line 1114
    .local v1, infoData:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setService_ip(Ljava/lang/String;)V

    .line 1115
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setService_port(I)V

    .line 1116
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->remoteDiagInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteDiagRunningInfo;->setService_domain(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->isBinding()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1119
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->bindDiagnoseServer(I)V

    goto :goto_0

    .end local v1           #infoData:Lcom/cnlaunch/x431pro/module/diagnose/model/RemoteServiceInfoData;
    :pswitch_2
    move-object v2, p2

    .line 1123
    check-cast v2, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;

    .line 1124
    .local v2, response:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportResponse;->getCode()I

    move-result v0

    .line 1125
    .local v0, code:I
    if-eqz v0, :cond_0

    .line 1126
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    invoke-static {v3, v4}, Lcom/cnlaunch/x431pro/module/report/ReportProduceTool;->saveReport(Landroid/content/Context;Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;)V

    .line 1127
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->reportInfo:Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;

    goto/16 :goto_0

    .line 1092
    nop

    :pswitch_data_0
    .packed-switch 0x4e2c
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public printData(Ljava/lang/String;)I
    .locals 2
    .parameter "data"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->printStrData:Ljava/lang/String;

    .line 1049
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setPrinting(Z)V

    .line 1050
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0706b9

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;I)V

    .line 1051
    const/16 v0, 0x4e2d

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->request(I)V

    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public removeCallbackListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    .line 751
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    .line 752
    return-void
.end method

.method public sendCustomDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "type"
    .parameter "ui_type"
    .parameter "title"
    .parameter "message"
    .parameter "size"

    .prologue
    .line 1017
    const/4 v2, 0x0

    invoke-static {v2, p5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1018
    .local v1, messages:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1019
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1020
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string/jumbo v2, "ui_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1025
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 1026
    return-void
.end method

.method public setAutoConnBluetooth()V
    .locals 1

    .prologue
    .line 866
    invoke-static {p0}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseUtils;->deleteTempSo(Landroid/content/Context;)V

    .line 868
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$8;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$8;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;)V

    .line 879
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity$8;->start()V

    .line 880
    return-void
.end method

.method public setDatastreamRecordFlag(ZI)V
    .locals 3
    .parameter "flag"
    .parameter "size"

    .prologue
    .line 1173
    const/4 v2, 0x0

    invoke-static {v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1174
    .local v1, messages:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1176
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "datastream_record"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1177
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1178
    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->sendServerMessage(Landroid/os/Message;)V

    .line 1179
    return-void
.end method

.method public setDiagnoseRunningInfo(Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->diagnoseRunningInfo:Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    .line 1013
    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTitle"

    .prologue
    .line 756
    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->setTitle(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public setOnAcitivityCallback(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;)V
    .locals 0
    .parameter "mCallback"

    .prologue
    .line 894
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mDoneCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;

    .line 895
    return-void
.end method

.method public setOnDataUpdateListener(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;)V
    .locals 0
    .parameter "iCallback"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mUpdateCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDiagnoseDataUpdateListenter;

    .line 657
    return-void
.end method

.method public showRemoteDialog(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    if-nez v0, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->getDiagnoseStatue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1193
    if-nez p1, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1195
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mRemoteDiagHandler:Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/view/RemoteDiagHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public upLoadSaveReport()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1290
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "report_save"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1291
    .local v2, mapReport:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1292
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setUploadSaveReport(Z)V

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "user_id"

    invoke-virtual {v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, userID:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1299
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "serialNo"

    invoke-virtual {v6, v7}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1300
    .local v3, snkey:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1303
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->getDiagnoseRunningInfo()Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/cnlaunch/x431pro/module/diagnose/model/DiagnoseRunningInfo;->setUploadSaveReport(Z)V

    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->readBytesToObject([B)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 1308
    .restart local v0       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/cnlaunch/x431pro/module/report/model/UpLoadReportInfo;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    .line 1309
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1312
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->saveReportlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1314
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/conversion/ObjectConversion;->writeObjectToBytes(Ljava/lang/Object;)[B

    move-result-object v1

    .line 1317
    .local v1, mapBytes:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    .line 1318
    .local v4, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "report_save"

    invoke-virtual {v6, v7, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    const/16 v6, 0x4e30

    invoke-virtual {p0, v6, v9}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->request(IZ)V

    goto :goto_0
.end method
