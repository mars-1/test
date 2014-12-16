.class Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 162
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    return-void
.end method
