.class public Lcom/cnlaunch/x431pro/activity/info/InfoActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private histotyUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final reqUrl:Ljava/lang/String;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webViewClient:Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 51
    const-string/jumbo v0, "http://repairdata.cnlaunch.com/data/diagnosisAndRepair.action"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->reqUrl:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    return-object v0
.end method

.method private initViews()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 63
    const v0, 0x7f0704ea

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->setTitle(I)V

    .line 64
    new-instance v0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;-><init>(Lcom/cnlaunch/x431pro/activity/info/InfoActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webViewClient:Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;

    .line 65
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webview:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webViewClient:Lcom/cnlaunch/x431pro/activity/info/InfoActivity$InfoWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webview:Landroid/webkit/WebView;

    const-string/jumbo v1, "http://repairdata.cnlaunch.com/data/diagnosisAndRepair.action"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    const-string/jumbo v1, "http://repairdata.cnlaunch.com/data/diagnosisAndRepair.action"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0300b7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->setContentView(I)V

    .line 58
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->initViews()V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 163
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 164
    const-string/jumbo v0, "pengzhe"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 166
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->webview:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;->histotyUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
