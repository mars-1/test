.class Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "WebReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    .line 65
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    return-void
.end method
