.class public Lcom/cnlaunch/x431pro/activity/mine/MineFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "MineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private btn_connector_activate:Landroid/widget/TextView;

.field private btn_firmware_fix:Landroid/widget/TextView;

.field private btn_help:Landroid/widget/TextView;

.field private btn_logout:Landroid/widget/Button;

.field private btn_mineinfo:Landroid/widget/TextView;

.field private btn_modify_password:Landroid/widget/TextView;

.field private btn_myconnector:Landroid/widget/TextView;

.field private btn_myreport:Landroid/widget/TextView;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 100
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 69
    const v1, 0x7f0704ef

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->setTitle(I)V

    .line 70
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0381

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myconnector:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myconnector:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0384

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myreport:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myreport:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0382

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_connector_activate:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_connector_activate:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0385

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_mineinfo:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_mineinfo:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0386

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_modify_password:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_modify_password:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0149

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_help:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_help:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0383

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_firmware_fix:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_firmware_fix:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0387

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    .line 92
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 1
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 126
    .line 129
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->initViews()V

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 152
    :sswitch_0
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 157
    :sswitch_1
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :sswitch_2
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 167
    :sswitch_3
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :sswitch_4
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0706da

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 183
    :sswitch_5
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 188
    :sswitch_6
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-class v3, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 195
    :sswitch_7
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, login_state:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;-><init>(Landroid/content/Context;)V

    .line 198
    .local v1, dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f07068e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f07068f

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 200
    .end local v1           #dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, LoginIntent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0149 -> :sswitch_6
        0x7f0c0381 -> :sswitch_0
        0x7f0c0382 -> :sswitch_2
        0x7f0c0383 -> :sswitch_3
        0x7f0c0384 -> :sswitch_1
        0x7f0c0385 -> :sswitch_4
        0x7f0c0386 -> :sswitch_5
        0x7f0c0387 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const v0, 0x7f03013c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 211
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 115
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, login_state:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    const v2, 0x7f07062b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020524

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    const v2, 0x7f070629

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 134
    .line 137
    return-void
.end method
