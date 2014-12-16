.class public Lcom/cnlaunch/x431pro/activity/mine/MineActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "MineActivity.java"


# static fields
.field public static isFixing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0300d1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->setContentView(I)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    const-class v0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->addFragment(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 61
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 55
    :pswitch_0
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->isFixing:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onPause()V

    .line 43
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 44
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 48
    :cond_0
    return-void
.end method
