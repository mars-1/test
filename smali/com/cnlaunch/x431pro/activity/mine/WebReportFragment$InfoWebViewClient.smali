.class Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 100
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
