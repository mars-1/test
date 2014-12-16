.class public Lcom/cnlaunch/x431pro/activity/tools/ToolsActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "ToolsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0300d1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsActivity;->setContentView(I)V

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-class v0, Lcom/cnlaunch/x431pro/activity/tools/ToolsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/tools/ToolsActivity;->addFragment(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
