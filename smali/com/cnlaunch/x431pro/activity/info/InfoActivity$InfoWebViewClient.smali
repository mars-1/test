.class Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/info/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/info/InfoActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/InfoActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 90
    const-string/jumbo v1, ".pdf"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/InfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/InfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 137
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/InfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->access$1(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
