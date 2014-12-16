.class public Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "WebSearchFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;
    }
.end annotation


# instance fields
.field private final Baidu_Home:Ljava/lang/String;

.field private final Baidu_Search:Ljava/lang/String;

.field private final Google_Home:Ljava/lang/String;

.field private final Google_Home_HK:Ljava/lang/String;

.field private final Google_Search:Ljava/lang/String;

.field private final Google_Search_HK:Ljava/lang/String;

.field private mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

.field private final mHandler:Landroid/os/Handler;

.field private progressBar:Landroid/widget/ProgressBar;

.field private searchKey:Ljava/lang/String;

.field private webSettings:Landroid/webkit/WebSettings;

.field private webViewClient:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "http://www.baidu.com"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Baidu_Home:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "http://www.baidu.com/s?wd=%s"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Baidu_Search:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "http://www.google.com"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Google_Home:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "http://www.google.com.hk"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Google_Home_HK:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "http://www.google.com/webhp?hl=en-US&ie=UTF-8&source=android-browser&q=%s#hl=en-US&newwindow=1&q=%s&safe=strict"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Google_Search:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "http://www.google.com.hk/webhp?hl=zh-HK&ie=UTF-8&source=android-browser&q=%s#hl=zh-HK&newwindow=1&q=%s&safe=strict"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->Google_Search_HK:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 192
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initViews()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    const v2, 0x7f07055a

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->setTitle(I)V

    .line 82
    new-instance v2, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webViewClient:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0025

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c01df

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 85
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 86
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webViewClient:Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$InfoWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    .line 95
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 96
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 98
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 99
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "current_country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, lan:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string/jumbo v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    const-string/jumbo v3, "http://www.google.com.hk"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    const-string/jumbo v3, "http://www.google.com"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    const-string/jumbo v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "ZH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    const-string/jumbo v3, "http://www.baidu.com"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_4
    const-string/jumbo v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    const-string/jumbo v3, "http://www.google.com.hk"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    const-string/jumbo v3, "http://www.google.com"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_7
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 122
    const-string/jumbo v1, ""

    .line 123
    .local v1, url:Ljava/lang/String;
    const-string/jumbo v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    :cond_8
    const-string/jumbo v2, "http://www.google.com.hk/webhp?hl=zh-HK&ie=UTF-8&source=android-browser&q=%s#hl=zh-HK&newwindow=1&q=%s&safe=strict"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_9
    const-string/jumbo v2, "http://www.google.com/webhp?hl=en-US&ie=UTF-8&source=android-browser&q=%s#hl=en-US&newwindow=1&q=%s&safe=strict"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 130
    .end local v1           #url:Ljava/lang/String;
    :cond_a
    const-string/jumbo v1, ""

    .line 131
    .restart local v1       #url:Ljava/lang/String;
    const-string/jumbo v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "ZH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 132
    :cond_b
    const-string/jumbo v2, "http://www.baidu.com/s?wd=%s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_c
    const-string/jumbo v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 134
    :cond_d
    const-string/jumbo v2, "http://www.google.com.hk/webhp?hl=zh-HK&ie=UTF-8&source=android-browser&q=%s#hl=zh-HK&newwindow=1&q=%s&safe=strict"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_2

    .line 136
    :cond_e
    const-string/jumbo v2, "http://www.google.com/webhp?hl=en-US&ie=UTF-8&source=android-browser&q=%s#hl=en-US&newwindow=1&q=%s&safe=strict"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    invoke-interface {v0, p0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->setOnAcitivityCallback(Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnKeyDownListenter;)V

    .line 76
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->initViews()V

    .line 77
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-object v3, v0

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->mCallback:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 66
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo v3, "searchkey"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->searchKey:Ljava/lang/String;

    .line 69
    :cond_0
    return-void

    .line 62
    .end local v1           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, " must implement FragmentCallback.OnMenuOnClickListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 54
    const v0, 0x7f03007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 180
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/WebSearchFragment;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrintStateListenter()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
