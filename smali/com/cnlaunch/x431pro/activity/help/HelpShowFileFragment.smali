.class public Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "HelpShowFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;

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
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->webView:Landroid/webkit/WebView;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strModule:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strKeyword:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strShowFilePath:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 27
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;

    .line 20
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f0704ef

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->setTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d04bb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->webView:Landroid/webkit/WebView;

    .line 33
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strShowFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strShowFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->showHtmlFileText(Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    .local v0, bd:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strModule:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_KeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strKeyword:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strKeyword:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strModule:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 43
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_help_doc:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 44
    new-instance v1, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;

    .line 45
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment$HelpViewHandler;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setViewHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 96
    const v0, 0x7f0301a1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->setBundle(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_OpenHtmlFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->strShowFilePath:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public showHtmlFileText(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d04bb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->webView:Landroid/webkit/WebView;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    return-void
.end method
