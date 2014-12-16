.class public Lcom/cnlaunch/newgolo/activity/ReportActivity;
.super Lcom/cnlaunch/golo3/message/BaseActivity;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ReportActivity"


# instance fields
.field private currentPath:Ljava/lang/String;

.field private hit:Landroid/widget/TextView;

.field private rootPath:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;-><init>()V

    return-void
.end method

.method private InitView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 36
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->ivRightNav:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->ivLeftNav:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    sget v1, Lcom/cnlaunch/golo3/message/R$string;->report_title:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->setTitel(Ljava/lang/String;)V

    .line 39
    sget v1, Lcom/cnlaunch/golo3/message/R$id;->report_web:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    .line 40
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;

    invoke-direct {v2, p0}, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;-><init>(Lcom/cnlaunch/newgolo/activity/ReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 41
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 42
    .local v0, webSettings:Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    sget v1, Lcom/cnlaunch/golo3/message/R$id;->report_hit:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->hit:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/ReportActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->currentPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/activity/ReportActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->hit:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public leftNavClick()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/cnlaunch/golo3/message/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->report_info:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->addContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->InitView()V

    .line 28
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "urlpath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, path:Ljava/lang/String;
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->rootPath:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method public rightNavClick()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
