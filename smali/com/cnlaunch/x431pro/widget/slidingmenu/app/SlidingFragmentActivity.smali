.class public Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;
.super Landroid/app/ActivityGroup;
.source "SlidingFragmentActivity.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 36
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    .line 22
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 107
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    .line 108
    .local v0, preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;
    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/model/User;

    invoke-direct {v1}, Lcom/cnlaunch/x431pro/module/user/model/User;-><init>()V

    .line 110
    .local v1, user:Lcom/cnlaunch/x431pro/module/user/model/User;
    invoke-virtual {v0, v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 100
    .local v0, b:Z
    if-eqz v0, :cond_0

    .line 101
    .end local v0           #b:Z
    :goto_0
    return v0

    .restart local v0       #b:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 66
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, -0x1

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 95
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showContent()V

    .line 83
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showMenu()V

    .line 87
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 91
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->toggle()V

    .line 79
    return-void
.end method
