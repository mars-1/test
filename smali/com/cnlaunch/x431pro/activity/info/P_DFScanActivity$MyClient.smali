.class Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;
.super Landroid/webkit/WebViewClient;
.source "P_DFScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 154
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$1(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->doPdfHandler()V

    .line 171
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
