.class public Lcom/cnlaunch/x431pro/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# instance fields
.field protected btn_left:Landroid/widget/ImageButton;

.field protected btn_right:Landroid/widget/TextView;

.field protected layout_head:Landroid/widget/RelativeLayout;

.field loginBroadcast:Landroid/content/BroadcastReceiver;

.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mLayoutBase:Landroid/widget/ViewFlipper;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private radioButtonIds:[I

.field private radioButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field protected slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

.field protected final tag:Ljava/lang/String;

.field protected tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 54
    const-class v0, Lcom/cnlaunch/x431pro/activity/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->tag:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->loginBroadcast:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/BaseActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method private changeHeadRadioButtonWeight(I)V
    .locals 4
    .parameter "weight"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->layout_head:Landroid/widget/RelativeLayout;

    const v3, 0x7f0d028a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 162
    .local v1, rb:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup$LayoutParams;

    .line 163
    .local v0, params:Landroid/widget/RadioGroup$LayoutParams;
    int-to-float v3, p1

    iput v3, v0, Landroid/widget/RadioGroup$LayoutParams;->weight:F

    .line 164
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private findRadiobuttons()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    .line 131
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtonIds:[I

    .line 136
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtons:Ljava/util/List;

    .line 137
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtonIds:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 141
    return-void

    .line 134
    :cond_0
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtonIds:[I

    goto :goto_0

    .line 137
    :cond_1
    aget v0, v3, v2

    .line 138
    .local v0, id:I
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->layout_head:Landroid/widget/RelativeLayout;

    const v6, 0x7f0d028a

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 139
    .local v1, rb:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->radioButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x92t 0x2t 0xdt 0x7ft
        0x8ct 0x2t 0xdt 0x7ft
        0x8dt 0x2t 0xdt 0x7ft
        0x8et 0x2t 0xdt 0x7ft
    .end array-data

    .line 134
    :array_1
    .array-data 0x4
        0x8ct 0x2t 0xdt 0x7ft
        0x8dt 0x2t 0xdt 0x7ft
        0x8et 0x2t 0xdt 0x7ft
        0x8ft 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method private setRadioButtonWeightForScreen()V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->changeHeadRadioButtonWeight(I)V

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->changeHeadRadioButtonWeight(I)V

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto :goto_0
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "fragmentClassName"

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    return-void
.end method

.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "fragmentClassName"
    .parameter "args"

    .prologue
    .line 372
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 373
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0052

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 374
    return-void
.end method

.method public cancelRequest()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest()V

    .line 279
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 275
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
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getMainMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    return-object v0
.end method

.method public goloReplaceFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "fragmentClassName"

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->goloReplaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method public goloReplaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "fragmentClassName"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 393
    .local v0, fragment:Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 395
    const-string/jumbo v1, "SandaGolo"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Fragment is not find"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0052

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 400
    return-void

    .line 397
    :cond_0
    const-string/jumbo v1, "SandaGolo"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Fragment is  find"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "base activity screen change"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRadioButtonWeightForScreen()V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->loadTheme(Landroid/content/Context;)V

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "is_screen_switch"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRequestedOrientation(I)V

    .line 87
    :goto_0
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/cnlaunch/framework/common/ActivityPageManager;->getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->addActivity(Landroid/app/Activity;)V

    .line 89
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const v1, 0x7f0300d0

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 96
    const v1, 0x7f0d0291

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mLayoutBase:Landroid/widget/ViewFlipper;

    .line 97
    const v1, 0x7f0d0288

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->layout_head:Landroid/widget/RelativeLayout;

    .line 98
    const v1, 0x7f0d0289

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_left:Landroid/widget/ImageButton;

    .line 99
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_left:Landroid/widget/ImageButton;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/BaseActivity$2;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0d028b

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    new-instance v2, Lcom/cnlaunch/x431pro/activity/BaseActivity$3;

    invoke-direct {v2, p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0d004d

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->tv_title:Landroid/widget/TextView;

    .line 116
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->findRadiobuttons()V

    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRadioButtonWeightForScreen()V

    .line 120
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void

    .line 79
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 80
    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 82
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 92
    :cond_3
    const v1, 0x7f0300cf

    invoke-super {p0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContentView:Landroid/view/View;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->unbindReferences(Landroid/view/View;)V

    .line 221
    invoke-static {}, Lcom/cnlaunch/framework/common/ActivityPageManager;->getInstance()Lcom/cnlaunch/framework/common/ActivityPageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cnlaunch/framework/common/ActivityPageManager;->removeActivity(Landroid/app/Activity;)V

    .line 222
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContentView:Landroid/view/View;

    .line 223
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    .line 224
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 293
    sparse-switch p2, :sswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 296
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704dd

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 304
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704de

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 293
    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_1
        -0x190 -> :sswitch_0
        -0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 229
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 248
    :goto_0
    return v0

    .line 235
    :cond_0
    new-instance v1, Lcom/cnlaunch/x431pro/activity/BaseActivity$4;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V

    .line 244
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0704f0

    const v4, 0x7f0704f1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity$4;->showDifDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 190
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, login_state:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v3, "login_username"

    invoke-virtual {v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const v2, 0x7f070628

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->btn_right:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 289
    return-void
.end method

.method public request(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->request(IZ)V

    .line 259
    return-void
.end method

.method public request(IZ)V
    .locals 1
    .parameter "requsetCode"
    .parameter "isCheckNetwork"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 271
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 202
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mLayoutBase:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 203
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mLayoutBase:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    .line 205
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 206
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mLayoutBase:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->mContentView:Landroid/view/View;

    .line 209
    return-void
.end method

.method public setHeadVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->layout_head:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 331
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "titleId"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method
