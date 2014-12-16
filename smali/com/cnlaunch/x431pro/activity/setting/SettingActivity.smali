.class public Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "SettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0300d2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->setContentView(I)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    const-class v0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->addFragment(Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onPause()V

    .line 40
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 41
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 45
    :cond_0
    return-void
.end method
