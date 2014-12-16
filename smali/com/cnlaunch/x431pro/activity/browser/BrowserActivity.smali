.class public Lcom/cnlaunch/x431pro/activity/browser/BrowserActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "BrowserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0300d2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserActivity;->setContentView(I)V

    .line 14
    if-nez p1, :cond_0

    .line 15
    const-class v0, Lcom/cnlaunch/x431pro/activity/browser/BrowserFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/browser/BrowserActivity;->addFragment(Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method
