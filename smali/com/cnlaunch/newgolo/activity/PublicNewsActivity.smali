.class public Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;
.super Lcom/cnlaunch/golo3/message/BaseActivity;
.source "PublicNewsActivity.java"


# static fields
.field public static final FAVORITE_COMPLETE:I = 0x2715

.field public static final FAVORITE_UPLOAD_COMPLETE:I = 0x2716

.field public static final REQUEST_CODE_FORWARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PublicNewsActivity"


# instance fields
.field private favorite:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private pub_id:Ljava/lang/String;

.field private report:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Landroid/net/Uri;

.field private url_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->pub_id:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->path:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->url_path:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->note:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->favorite:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->report:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public leftNavClick()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/cnlaunch/golo3/message/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string/jumbo v1, "hsy"

    const-string/jumbo v2, "PublicNewsActivity>>>>>> onCreate()\n"

    invoke-static {v1, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->activity_public_news:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->addContentView(I)V

    .line 50
    invoke-static {p0}, Lcom/cnlaunch/newgolo/GoloApplication;->addActivities(Landroid/app/Activity;)V

    .line 51
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 52
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "pub_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "pub_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->pub_id:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "note"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->note:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->path:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->url_path:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PublicNewsActivity\n uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n note"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->note:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n url_path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->url_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "favorite"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "favorite"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "favorite"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->favorite:Ljava/lang/String;

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->favorite:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "report"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "report"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->report:Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PublicNewsActivity report="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->report:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 95
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->setTitel(Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getRightImage()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    sget v1, Lcom/cnlaunch/golo3/message/R$id;->public_news_web_view:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 102
    .local v0, webView:Landroid/webkit/WebView;
    new-instance v1, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;-><init>(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 125
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 126
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PublicNewsActivitywebView.loadUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0           #webView:Landroid/webkit/WebView;
    :goto_1
    return-void

    .line 97
    :cond_6
    sget v1, Lcom/cnlaunch/golo3/message/R$string;->news:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->setTitel(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_7
    invoke-static {}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->getInstance()Lcom/cnlaunch/newgolo/utils/ScreenManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cnlaunch/newgolo/utils/ScreenManager;->pop(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 146
    return-void
.end method

.method public rightNavClick()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 135
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    sget v1, Lcom/cnlaunch/golo3/message/R$layout;->loading_layout:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 136
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 137
    return-void
.end method
