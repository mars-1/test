.class public Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "SlidingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityBase;


# instance fields
.field private btn_diagnose:Landroid/widget/RadioButton;

.field private btn_golo:Landroid/widget/RadioButton;

.field private btn_info:Landroid/widget/RadioButton;

.field private btn_mine:Landroid/widget/RadioButton;

.field private btn_setting:Landroid/widget/RadioButton;

.field private btn_tools:Landroid/widget/RadioButton;

.field private btn_upgrade:Landroid/widget/RadioButton;

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

.field private slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 111
    .end local v0           #v:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #v:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    :goto_0
    :sswitch_0
    return-void

    .line 69
    :sswitch_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->toggle()V

    goto :goto_0

    .line 73
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, v3, v3}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0289 -> :sswitch_1
        0x7f0d028b -> :sswitch_2
        0x7f0d02d8 -> :sswitch_0
        0x7f0d02d9 -> :sswitch_0
        0x7f0d02da -> :sswitch_0
        0x7f0d02db -> :sswitch_0
        0x7f0d02dc -> :sswitch_0
        0x7f0d02dd -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 34
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    .line 36
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f0301a4

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->setBehindContentView(I)V

    .line 39
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 40
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_left:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const v2, 0x7f0c00e9

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowWidthRes(I)V

    .line 44
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const v2, 0x7f02059f

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowDrawable(I)V

    .line 45
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 46
    .local v0, width:I
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 47
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 49
    const v1, 0x7f0d02d8

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_diagnose:Landroid/widget/RadioButton;

    .line 50
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_diagnose:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0d02d9

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_info:Landroid/widget/RadioButton;

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_info:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0d02db

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_golo:Landroid/widget/RadioButton;

    .line 54
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_golo:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f0d02da

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_upgrade:Landroid/widget/RadioButton;

    .line 56
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_upgrade:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0d02dc

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_tools:Landroid/widget/RadioButton;

    .line 58
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_tools:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f0d02de

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_setting:Landroid/widget/RadioButton;

    .line 60
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_setting:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0d02dd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_mine:Landroid/widget/RadioButton;

    .line 62
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->btn_mine:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 165
    .local v0, b:Z
    if-eqz v0, :cond_0

    .line 166
    .end local v0           #b:Z
    :goto_0
    return v0

    .restart local v0       #b:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->setBehindContentView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "v"
    .parameter "params"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 160
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showContent()V

    .line 148
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showMenu()V

    .line 152
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 156
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivity;->mHelper:Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingActivityHelper;->toggle()V

    .line 144
    return-void
.end method
