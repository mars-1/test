.class public Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;
.super Landroid/app/Activity;
.source "BaseDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->loadDialogTheme(Landroid/content/Context;)V

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_screen_switch"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->setRequestedOrientation(I)V

    .line 35
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 27
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/BaseDialogActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
