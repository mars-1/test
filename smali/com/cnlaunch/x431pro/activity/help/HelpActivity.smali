.class public Lcom/cnlaunch/x431pro/activity/help/HelpActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "HelpActivity.java"


# instance fields
.field private bOnlyShowFile:Z

.field private strKeyword:Ljava/lang/String;

.field private strModule:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strModule:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strKeyword:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->bOnlyShowFile:Z

    .line 11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 19
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v2, 0x7f0300d1

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->setContentView(I)V

    .line 21
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->btn_left:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 22
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->btn_right:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 24
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    .local v0, bd:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 26
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_Module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strModule:Ljava/lang/String;

    .line 27
    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->str_KeyWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strKeyword:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strModule:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->strKeyword:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 29
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->bOnlyShowFile:Z

    .line 33
    :cond_0
    if-nez p1, :cond_1

    .line 34
    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->bOnlyShowFile:Z

    if-eqz v2, :cond_2

    .line 35
    const-class v2, Lcom/cnlaunch/x431pro/activity/help/HelpShowFileFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    const-class v2, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/help/HelpActivity;->addFragment(Ljava/lang/String;)V

    goto :goto_0
.end method
