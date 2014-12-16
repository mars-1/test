.class public Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;
.super Landroid/app/Activity;
.source "HelpShowFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;

.field private mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

.field strKeyword:Ljava/lang/String;

.field strModule:Ljava/lang/String;

.field strShowFilePath:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->webView:Landroid/webkit/WebView;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strModule:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strKeyword:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strShowFilePath:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 26
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public finishActivity()V
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "can\'t find help file!"

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v2, 0x7f0301a1

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strShowFilePath:Ljava/lang/String;

    .line 37
    const v2, 0x7f0d04bb

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->webView:Landroid/webkit/WebView;

    .line 38
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strShowFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strShowFilePath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->showHtmlFileText(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    if-eqz v0, :cond_0

    .line 44
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strModule:Ljava/lang/String;

    .line 45
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_KeyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strKeyword:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strKeyword:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->strModule:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 47
    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    sget-object v4, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 48
    new-instance v2, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;

    .line 49
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity$HelpViewHandler;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setViewHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->finishActivity()V

    goto :goto_0
.end method

.method public showHtmlFileText(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 92
    const v0, 0x7f0d04bb

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->webView:Landroid/webkit/WebView;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    return-void
.end method
