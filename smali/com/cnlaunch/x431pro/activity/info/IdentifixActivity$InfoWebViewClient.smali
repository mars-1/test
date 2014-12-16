.class Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "IdentifixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 73
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;->this$0:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->access$0(Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
