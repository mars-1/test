.class public Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "WebReportFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private url:Ljava/lang/String;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webViewClient:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->url:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 116
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mHandler:Landroid/os/Handler;

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

    .line 58
    const v0, 0x7f070703

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->setTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;-><init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webViewClient:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;

    .line 61
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webViewClient:Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$InfoWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->webview:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->initViews()V

    .line 54
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v1, "urlkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/WebReportFragment;->url:Ljava/lang/String;

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const v0, 0x7f03007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
