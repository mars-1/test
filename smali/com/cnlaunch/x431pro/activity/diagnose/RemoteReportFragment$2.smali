.class Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "RemoteReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    .line 229
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public yesOnClickListener()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/RemoteReportFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->exitDiagnoseRunning(I)V

    .line 233
    return-void
.end method
