.class public Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;
.super Landroid/app/Activity;
.source "LoginBaseActivity.java"

# interfaces
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# instance fields
.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field protected mContext:Landroid/content/Context;

.field protected slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-class v0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->tag:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest()V

    .line 81
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 77
    return-void
.end method

.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->loadDialogTheme(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_screen_switch"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->setRequestedOrientation(I)V

    .line 54
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 58
    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    invoke-virtual {v0, v1, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 47
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 95
    sparse-switch p2, :sswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704dd

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 104
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704de

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 62
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 65
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 91
    return-void
.end method

.method public request(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/LoginBaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(ILcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 73
    return-void
.end method
