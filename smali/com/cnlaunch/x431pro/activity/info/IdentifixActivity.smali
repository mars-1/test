.class public Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "IdentifixActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webViewClient:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;

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

    .line 42
    const v0, 0x7f0704ea

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->setTitle(I)V

    .line 43
    new-instance v0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;-><init>(Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webViewClient:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;

    .line 44
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webViewClient:Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity$InfoWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webSettings:Landroid/webkit/WebSettings;

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->webview:Landroid/webkit/WebView;

    const-string/jumbo v1, "http://www.identifix.com"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->setContentView(I)V

    .line 32
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->mContext:Landroid/content/Context;

    .line 33
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "show_identifix_tips"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, show:Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->showIdentifixDialog(Landroid/content/Context;)V

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/info/IdentifixActivity;->initViews()V

    .line 38
    return-void
.end method
