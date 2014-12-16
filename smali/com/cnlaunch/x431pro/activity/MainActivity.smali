.class public Lcom/cnlaunch/x431pro/activity/MainActivity;
.super Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/cnlaunch/framework/network/async/OnDataListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;
    }
.end annotation


# static fields
.field public static final RESULT_RTU_FACTORY_PATTERN:I = 0x73

.field private static isDiagFlag:Z

.field private static isRemoteFlag:Z


# instance fields
.field private final PICK_CONTACT_RTU_HOME_START_REQUEST:I

.field private final RTU_HOME_START_MESSAGE_VALUE:I

.field private final TAG:Ljava/lang/String;

.field private afterLoginOperationCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

.field private countChangeCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

.field private currentCheckID:I

.field private custemorType:Ljava/lang/String;

.field private eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

.field private isGolo:Z

.field private lastCheckID:I

.field private loginCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

.field private final loginHandler:Landroid/os/Handler;

.field private mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

.field private mContext:Landroid/content/Context;

.field private mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private radioGolo:Landroid/widget/RadioButton;

.field private radioSetting:Landroid/widget/RadioButton;

.field private radiobutton_info:Landroid/widget/RadioButton;

.field private radiogroup_menu:Landroid/widget/RadioGroup;

.field private slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    sput-boolean v0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isDiagFlag:Z

    .line 129
    sput-boolean v0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isRemoteFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/4 v1, -0x1

    .line 103
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;-><init>()V

    .line 105
    const-class v0, Lcom/cnlaunch/x431pro/activity/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;

    .line 120
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 121
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 124
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->PICK_CONTACT_RTU_HOME_START_REQUEST:I

    .line 125
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->RTU_HOME_START_MESSAGE_VALUE:I

    .line 238
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 309
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    .line 352
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$3;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->loginCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    .line 377
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$4;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->loginHandler:Landroid/os/Handler;

    .line 394
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$5;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->afterLoginOperationCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    .line 423
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$6;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->countChangeCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    .line 767
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/MainActivity$7;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$11(Lcom/cnlaunch/x431pro/activity/MainActivity;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/MainActivity;)Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->loginHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    return v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    return-void
.end method

.method static synthetic access$8(Lcom/cnlaunch/x431pro/activity/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    return-void
.end method

.method static synthetic access$9(Lcom/cnlaunch/x431pro/activity/MainActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private initConfigInfo(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    .locals 5
    .parameter "country_id"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 910
    new-instance v0, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;-><init>()V

    .line 911
    .local v0, info:Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setCountry_id(Ljava/lang/String;)V

    .line 912
    const-string/jumbo v1, "CN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const-string/jumbo v1, "http://base.api.dbscar.com/?action=config_service.urls"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfigurl(Ljava/lang/String;)V

    .line 914
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfiglan(Ljava/lang/String;)V

    .line 915
    const-string/jumbo v1, "configLaunch"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "---->\u53d1\u5e03\u73af\u5883\uff1a\u56fd\u5185"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    :goto_0
    return-object v0

    .line 917
    :cond_0
    const-string/jumbo v1, "http://base.us.api.dbscar.com/?action=config_service.urls"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfigurl(Ljava/lang/String;)V

    .line 918
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/config/model/ConfigLoadInfo;->setConfiglan(Ljava/lang/String;)V

    .line 919
    const-string/jumbo v1, "configLaunch"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "---->\u53d1\u5e03\u73af\u5883\uff1a\u6d77\u5916"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 871
    const v0, 0x7f0c02ee

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiogroup_menu:Landroid/widget/RadioGroup;

    .line 872
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiogroup_menu:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 874
    const v0, 0x7f0c02f0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiobutton_info:Landroid/widget/RadioButton;

    .line 875
    const v0, 0x7f0c02f2

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    .line 876
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiobutton_info:Landroid/widget/RadioButton;

    const v1, 0x7f0704eb

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 879
    :cond_0
    const v0, 0x7f0c02f5

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;

    .line 881
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_golo"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    .line 882
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v1, 0x7f0704ed

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 884
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v1, 0x7f02051e

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 891
    :goto_0
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 892
    return-void

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v1, 0x7f0706a0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 888
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v1, 0x7f020505

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public static isDiagFlag()Z
    .locals 1

    .prologue
    .line 857
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isDiagFlag:Z

    return v0
.end method

.method public static isRemoteFlag()Z
    .locals 1

    .prologue
    .line 895
    sget-boolean v0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isRemoteFlag:Z

    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 744
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "show_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v1, "show_remotediag"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string/jumbo v1, "show_Setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v1, "Golo_new_tip_wran"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string/jumbo v1, "show_PrintSetting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string/jumbo v1, "show_golo_chatroom"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    return-void
.end method

.method public static setDiagFlag(Z)V
    .locals 0
    .parameter "isDiagFlag"

    .prologue
    .line 866
    sput-boolean p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isDiagFlag:Z

    .line 867
    return-void
.end method

.method public static setRemoteFlag(Z)V
    .locals 0
    .parameter "isRemoteFlag"

    .prologue
    .line 899
    sput-boolean p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isRemoteFlag:Z

    .line 900
    return-void
.end method

.method private showActivity(Ljava/lang/Class;)V
    .locals 6
    .parameter "activityClass"

    .prologue
    const v5, 0x7f0c02f2

    const/4 v4, 0x1

    .line 570
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->isMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->toggle()V

    .line 573
    :cond_0
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-eq v2, v3, :cond_1

    .line 574
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-ne v2, v5, :cond_1

    .line 575
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "golo_replace_flag"

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v2, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 579
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v1, intent:Landroid/content/Intent;
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-ne v2, v5, :cond_2

    .line 582
    const-string/jumbo v2, "Customer_type"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->custemorType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 586
    .local v0, activity:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 587
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setContentView(Landroid/view/View;)V

    .line 588
    return-void
.end method

.method private showConflictView()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showConflictView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/LoginConfictActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 350
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest()V

    .line 850
    return-void
.end method

.method public cancelRequest(I)V
    .locals 1
    .parameter "requsetCode"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->cancelRequest(I)V

    .line 846
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
    .line 809
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceUrlList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cnlaunch/golo3/dto/InterfaceUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/cnlaunch/golo3/dto/InterfaceUrl;>;"
    if-eqz p1, :cond_0

    .line 757
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 764
    :cond_0
    return-object v1

    .line 757
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;

    .line 758
    .local v2, tmp:Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;
    new-instance v0, Lcom/cnlaunch/golo3/dto/InterfaceUrl;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;-><init>()V

    .line 759
    .local v0, item:Lcom/cnlaunch/golo3/dto/InterfaceUrl;
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setKey(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/config/model/ConfigUrl;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/cnlaunch/golo3/dto/InterfaceUrl;->setValue(Ljava/lang/String;)V

    .line 761
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMainMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 252
    const/16 v3, 0xf

    if-ne p1, v3, :cond_3

    .line 253
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->finish()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    sget-boolean v3, Lcom/cnlaunch/x431pro/common/Constants;->FactoryPattern:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x73

    if-ne p2, v3, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 259
    .local v2, current:Landroid/app/Activity;
    const v3, 0x7f0c028f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 260
    .local v1, btn_right:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 261
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :cond_2
    const v3, 0x7f0c0294

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, btn_factory_pattern:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 265
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 270
    .end local v0           #btn_factory_pattern:Landroid/widget/TextView;
    .end local v1           #btn_right:Landroid/widget/TextView;
    .end local v2           #current:Landroid/app/Activity;
    :cond_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 271
    .restart local v2       #current:Landroid/app/Activity;
    instance-of v3, v2, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "current instanceof DiagnoseActivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    check-cast v2, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    .end local v2           #current:Landroid/app/Activity;
    invoke-virtual {v2, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;->onDiagnoseAcitvityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "arg0"
    .parameter "checkid"

    .prologue
    const/4 v2, -0x1

    .line 497
    packed-switch p2, :pswitch_data_0

    .line 565
    :goto_0
    return-void

    .line 499
    :pswitch_0
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 500
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 501
    const-class v1, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 504
    :pswitch_1
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 506
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 507
    const-class v1, Lcom/cnlaunch/x431pro/activity/info/InfoActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 510
    :cond_0
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-eq v1, v2, :cond_1

    .line 511
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "show_identifix_tips"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, show:Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->showIdentifixDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->startIdentifix(Landroid/content/Context;)V

    goto :goto_0

    .line 521
    .end local v0           #show:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    if-nez v1, :cond_4

    .line 522
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-eq v1, v2, :cond_3

    .line 523
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 525
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/common/SlidingMenuHelper;->startBrowser(Landroid/content/Context;)V

    goto :goto_0

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->isLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 529
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    if-eq v1, v2, :cond_5

    .line 530
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    .line 532
    :cond_5
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0706da

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 534
    :cond_6
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 535
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 536
    const-class v1, Lcom/cnlaunch/x431pro/activity/golo/GoloActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 542
    :pswitch_3
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 543
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 544
    const-class v1, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 548
    :pswitch_4
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 549
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 550
    const-class v1, Lcom/cnlaunch/x431pro/activity/tools/ToolsActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 554
    :pswitch_5
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 555
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 556
    const-class v1, Lcom/cnlaunch/x431pro/activity/mine/MineActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 560
    :pswitch_6
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 561
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 562
    const-class v1, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c02ef
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 480
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->initConfig(Landroid/content/Context;)V

    .line 482
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 483
    .local v1, mainScreenSize:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    mul-int/2addr v3, v1

    div-int/lit8 v2, v3, 0x64

    .line 485
    .local v2, width:I
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->getSlidingMenuLayout(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setBehindContentView(I)V

    .line 487
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->initMenu()V

    .line 489
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 490
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "screen_change"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f0c02ef

    const/4 v8, 0x2

    const v11, 0x7f0c02f2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 133
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->loadTheme(Landroid/content/Context;)V

    .line 134
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "is_screen_switch"

    invoke-virtual {v6, v7, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "Orientation"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_2

    .line 138
    invoke-virtual {p0, v10}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRequestedOrientation(I)V

    .line 148
    :goto_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->getSlidingMenuLayout(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setBehindContentView(I)V

    .line 149
    iput-object p0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    .line 150
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 152
    new-instance v0, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;-><init>(Lcom/cnlaunch/x431pro/activity/MainActivity;Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;)V

    .line 153
    .local v0, configAsyncTask:Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v7, "login_state"

    const-string/jumbo v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 155
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 157
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    .line 159
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getSlidingMenu()Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    .line 160
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const v7, 0x7f0b00e9

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowWidthRes(I)V

    .line 161
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    const v7, 0x7f0205a3

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setShadowDrawable(I)V

    .line 164
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 165
    .local v3, mainScreenSize:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    mul-int/2addr v6, v3

    div-int/lit8 v5, v6, 0x64

    .line 167
    .local v5, width:I
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v6, v5}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setBehindOffset(I)V

    .line 168
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->slidingMenu:Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;

    invoke-virtual {v6, v9}, Lcom/cnlaunch/x431pro/widget/slidingmenu/SlidingMenu;->setTouchModeAbove(I)V

    .line 170
    const v6, 0x7f0c02ee

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiogroup_menu:Landroid/widget/RadioGroup;

    .line 171
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiogroup_menu:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 173
    const v6, 0x7f0c02f0

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiobutton_info:Landroid/widget/RadioButton;

    .line 174
    invoke-virtual {p0, v11}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    .line 175
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiobutton_info:Landroid/widget/RadioButton;

    const v7, 0x7f0704eb

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->registerBroadcastReceiver()V

    .line 183
    const v6, 0x7f0c02f5

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;

    .line 184
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "is_golo"

    invoke-virtual {v6, v7, v10}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    .line 185
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 186
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_7

    .line 187
    const-string/jumbo v6, "Setting"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string/jumbo v6, "SettingLaunchReceiver"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 190
    const v6, 0x7f0c02f5

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 191
    const-class v6, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    .line 192
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 210
    .end local v4           #str:Ljava/lang/String;
    :goto_1
    iget-boolean v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    if-eqz v6, :cond_8

    .line 211
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v7, 0x7f0704ed

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 212
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v7, 0x7f02051e

    invoke-virtual {v6, v7, v10, v10, v10}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 213
    new-instance v6, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    .line 214
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    invoke-virtual {v6}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->register()V

    .line 215
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->countChangeCallback:Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->setChangeCallback(Lcom/cnlaunch/x431pro/common/UnreadCount$ChangeCallback;)V

    .line 216
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->loginCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->addListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V

    .line 217
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->afterLoginOperationCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->addGetSNInfoListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;)V

    .line 218
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    invoke-static {v6}, Lcom/cnlaunch/newgolo/GoloApplication;->addEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 224
    :goto_2
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "isFirstRun"

    invoke-virtual {v6, v7, v9}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    .line 227
    .local v2, isFirstRun:Z
    if-eqz v2, :cond_1

    .line 228
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 233
    .end local v2           #isFirstRun:Z
    :cond_1
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->initConfig(Landroid/content/Context;)V

    .line 235
    invoke-static {v10}, Lcom/cnlaunch/physics/utils/MLog;->openDebug(Z)V

    .line 236
    return-void

    .line 139
    .end local v0           #configAsyncTask:Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #mainScreenSize:I
    .end local v5           #width:I
    :cond_2
    invoke-static {p0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v6

    const-string/jumbo v7, "Orientation"

    invoke-virtual {v6, v7, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 140
    invoke-virtual {p0, v9}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 142
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-virtual {p0, v10}, Lcom/cnlaunch/x431pro/activity/MainActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 193
    .restart local v0       #configAsyncTask:Lcom/cnlaunch/x431pro/activity/MainActivity$ConfigAsyncTask;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #mainScreenSize:I
    .restart local v4       #str:Ljava/lang/String;
    .restart local v5       #width:I
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "startgolo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 194
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 195
    iput v11, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 196
    const-string/jumbo v6, "Customer_type"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->custemorType:Ljava/lang/String;

    .line 198
    invoke-virtual {p0, v11}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto/16 :goto_1

    .line 200
    :cond_6
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 201
    iput v12, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 202
    const-class v6, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 205
    .end local v4           #str:Ljava/lang/String;
    :cond_7
    iget v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 206
    iput v12, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 207
    const-class v6, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-direct {p0, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 221
    :cond_8
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v7, 0x7f0706a0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 222
    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioGolo:Landroid/widget/RadioButton;

    const v7, 0x7f020505

    invoke-virtual {v6, v7, v10, v10, v10}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->isGolo:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mGoloAllUnreadCount:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;->unregister()V

    .line 465
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->loginCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->removeListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$LoginCallback;)V

    .line 466
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->afterLoginOperationCallback:Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->removeGetSNInfoListenser(Lcom/cnlaunch/x431pro/activity/login/LoginFunction$AfterLoginOperationCallback;)V

    .line 467
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->eventListener:Lcom/cnlaunch/newgolo/model/event/EventListener;

    invoke-static {v0}, Lcom/cnlaunch/newgolo/GoloApplication;->removeEventListener(Lcom/cnlaunch/newgolo/model/event/EventListener;)V

    .line 470
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 471
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiscCache()V

    .line 472
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->onDestroy()V

    .line 473
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 826
    .line 830
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 601
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 603
    .local v0, flag:Z
    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/MainActivity;->finish()V

    .line 607
    .end local v0           #flag:Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const v3, 0x7f0c02f2

    const v2, 0x7f0c02ef

    .line 279
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 280
    if-eqz p1, :cond_2

    .line 281
    const-string/jumbo v1, "Setting"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "SettingLaunchReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-class v1, Lcom/cnlaunch/x431pro/activity/setting/SettingActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    .line 284
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radioSetting:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 301
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-void

    .line 285
    .restart local v0       #str:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "startgolo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 287
    iput v3, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 288
    const-string/jumbo v1, "Customer_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->custemorType:Ljava/lang/String;

    .line 290
    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto :goto_0

    .line 292
    :cond_1
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 293
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 294
    const-class v1, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 297
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->lastCheckID:I

    .line 298
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->currentCheckID:I

    .line 299
    const-class v1, Lcom/cnlaunch/x431pro/activity/diagnose/DiagnoseActivity;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Lcom/cnlaunch/x431pro/widget/slidingmenu/app/SlidingFragmentActivity;->onPause()V

    .line 306
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cnlaunch/x431pro/common/Constants;->STAT_SETTING_FLAG:Z

    .line 307
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 818
    .line 822
    return-void
.end method

.method public request(IZ)V
    .locals 1
    .parameter "requsetCode"
    .parameter "isCheckNetwork"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->mAsyncTaskManager:Lcom/cnlaunch/framework/network/async/AsyncTaskManager;

    invoke-virtual {v0, p1, p2, p0}, Lcom/cnlaunch/framework/network/async/AsyncTaskManager;->request(IZLcom/cnlaunch/framework/network/async/OnDataListener;)V

    .line 842
    return-void
.end method

.method public showActivity(I)V
    .locals 1
    .parameter "checkid"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/MainActivity;->radiogroup_menu:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 597
    return-void
.end method
