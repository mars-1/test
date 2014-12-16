.class public Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;
.super Landroid/app/Activity;
.source "P_DFScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;,
        Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

.field private fileName:Ljava/lang/String;

.field private progressBar:Landroid/app/ProgressDialog;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private repairInfoPath:Ljava/lang/String;

.field private tempfileName:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->tempfileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public doPdfHandler()V
    .locals 8

    .prologue
    .line 115
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".download"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->tempfileName:Ljava/lang/String;

    .line 118
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, uri:Landroid/net/Uri;
    const-string/jumbo v4, "application/pdf"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->finish()V

    .line 142
    .end local v1           #file:Ljava/io/File;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 128
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    .line 129
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 132
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    const v6, 0x7f0704d7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    const v7, 0x7f070580

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 135
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 136
    new-instance v4, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;-><init>(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    .line 137
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v4, 0x7f03015b

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->setContentView(I)V

    .line 57
    const v4, 0x7f0d03d3

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    .line 58
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    .line 59
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/PathUtils;->getRepairInfoPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;

    .line 60
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 61
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 62
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 64
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;

    invoke-direct {v5, p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$MyClient;-><init>(Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 67
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 68
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 70
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 71
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->requestFocus()Z

    .line 72
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 73
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".pdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->fileName:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, intent1:Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, uri:Landroid/net/Uri;
    const-string/jumbo v4, "application/pdf"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->finish()V

    .line 101
    .end local v0           #file:Ljava/io/File;
    .end local v2           #intent1:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->doPdfHandler()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 274
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;->cancel(Z)Z

    .line 277
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->downloadTask:Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity$DownloadTask;

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->repairInfoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->tempfileName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v0, tempfile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    .end local v0           #tempfile:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->finish()V

    .line 287
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 4

    .prologue
    .line 104
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 105
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0300e9

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 107
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/info/P_DFScanActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f0d02ae

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    .local v1, imageView:Landroid/widget/ImageView;
    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 110
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 111
    return-void
.end method
