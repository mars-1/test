.class public Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "PersonInformationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final REQ_QUERYMINEINFORMATION_CODE:I

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private is_bind_email:Ljava/lang/String;

.field private is_bind_mobile:Ljava/lang/String;

.field loginBroadcast:Landroid/content/BroadcastReceiver;

.field private login_state:Ljava/lang/String;

.field private mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

.field private radioGroup_sex:Landroid/widget/RadioGroup;

.field private radio_female:Landroid/widget/RadioButton;

.field private radio_male:Landroid/widget/RadioButton;

.field private rl_mine_areas:Landroid/widget/RelativeLayout;

.field private rl_mine_email:Landroid/widget/RelativeLayout;

.field private rl_mine_phone:Landroid/widget/RelativeLayout;

.field private rl_mine_sex:Landroid/widget/RelativeLayout;

.field private sex:Ljava/lang/String;

.field private tv_mine_areas:Landroid/widget/TextView;

.field private tv_mine_email:Landroid/widget/TextView;

.field private tv_mine_name:Landroid/widget/TextView;

.field private tv_mine_phone:Landroid/widget/TextView;

.field private userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 47
    const/16 v0, 0x838

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->REQ_QUERYMINEINFORMATION_CODE:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    .line 74
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;)Lcom/cnlaunch/framework/common/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->login_state:Ljava/lang/String;

    return-void
.end method

.method private checkSexRadio(Ljava/lang/String;)V
    .locals 2
    .parameter "newSex"

    .prologue
    const/4 v1, 0x1

    .line 312
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_male:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 314
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_female:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private hasLogin()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->login_state:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->login_state:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 127
    const v0, 0x7f0705a8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->setTitle(I)V

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_name:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_email:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_phone:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03ea

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_areas:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_sex:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_sex:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_email:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_email:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_phone:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_phone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d03e8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_areas:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->rl_mine_areas:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_male:Landroid/widget/RadioButton;

    .line 150
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_male:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0195

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_female:Landroid/widget/RadioButton;

    .line 153
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radio_female:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0194

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->radioGroup_sex:Landroid/widget/RadioGroup;

    .line 156
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 3
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 160
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 173
    :sswitch_0
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userAction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->getBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    move-result-object v0

    goto :goto_0

    .line 182
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setSex(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x838 -> :sswitch_0
        0x7532 -> :sswitch_1
    .end sparse-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 93
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 94
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->login_state:Ljava/lang/String;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const v4, 0x7f0704dd

    const v3, 0x7f0706d8

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 252
    :sswitch_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, bundleEmail:Landroid/os/Bundle;
    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_email:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v2, "is_bind_email"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->is_bind_email:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 267
    .end local v0           #bundleEmail:Landroid/os/Bundle;
    :sswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 275
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 276
    .local v1, bundlePhone:Landroid/os/Bundle;
    const-string/jumbo v2, "phone_number"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_phone:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v2, "is_bind_mobile"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->is_bind_mobile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 282
    .end local v1           #bundlePhone:Landroid/os/Bundle;
    :sswitch_2
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_4

    .line 283
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 290
    :cond_5
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/CountryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->replaceFragment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 296
    :sswitch_3
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_6

    .line 297
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->checkSexRadio(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 301
    :cond_6
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "0"

    :goto_1
    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    .line 302
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->checkSexRadio(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 304
    const/16 v2, 0x7532

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->request(I)V

    goto/16 :goto_0

    .line 301
    :cond_7
    const-string/jumbo v2, "1"

    goto :goto_1

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0195 -> :sswitch_3
        0x7f0d0196 -> :sswitch_3
        0x7f0d03e0 -> :sswitch_3
        0x7f0d03e2 -> :sswitch_0
        0x7f0d03e5 -> :sswitch_1
        0x7f0d03e8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v0, 0x7f03015f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 123
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->loginBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 226
    sparse-switch p1, :sswitch_data_0

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 228
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 230
    const/16 v0, -0x12c

    if-ne v0, p2, :cond_0

    .line 231
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :cond_1
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;Landroid/content/Context;)V

    .line 238
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;->showLoginDialog()Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    move-result-object v0

    .line 232
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mLoginDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoginDialog;

    goto :goto_0

    .line 243
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x838 -> :sswitch_0
        0x7532 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 110
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->initViews()V

    .line 111
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0706d8

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x838

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->request(I)V

    .line 116
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 190
    sparse-switch p1, :sswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 192
    :sswitch_0
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 193
    check-cast v0, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;

    .line 194
    .local v0, res:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;->getData()Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    .line 196
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getUser_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_email:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_phone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getIs_bind_mobile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->is_bind_mobile:Ljava/lang/String;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getIs_bind_email()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->is_bind_email:Ljava/lang/String;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->tv_mine_areas:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getSex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->sex:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->checkSexRadio(Ljava/lang/String;)V

    .line 211
    .end local v0           #res:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 203
    .restart local v0       #res:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 204
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->userInfo:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfo;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 215
    .end local v0           #res:Lcom/cnlaunch/x431pro/module/user/model/UserBaseInfoResponse;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :sswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x838 -> :sswitch_0
        0x7532 -> :sswitch_1
    .end sparse-switch
.end method
