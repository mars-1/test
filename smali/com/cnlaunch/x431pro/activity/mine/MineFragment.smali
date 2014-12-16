.class public Lcom/cnlaunch/x431pro/activity/mine/MineFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "MineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private btn_connector_activate:Landroid/widget/RadioButton;

.field private btn_firmware_fix:Landroid/widget/RadioButton;

.field private btn_help:Landroid/widget/RadioButton;

.field private btn_logout:Landroid/widget/Button;

.field private btn_mineinfo:Landroid/widget/RadioButton;

.field private btn_modify_password:Landroid/widget/RadioButton;

.field private btn_myconnector:Landroid/widget/RadioButton;

.field private btn_myreport:Landroid/widget/RadioButton;

.field private preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/MineFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    .line 68
    const v1, 0x7f0704ed

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->setTitle(I)V

    .line 69
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myconnector:Landroid/widget/RadioButton;

    .line 70
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myconnector:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myreport:Landroid/widget/RadioButton;

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_myreport:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_connector_activate:Landroid/widget/RadioButton;

    .line 76
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_connector_activate:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_mineinfo:Landroid/widget/RadioButton;

    .line 79
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_mineinfo:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_modify_password:Landroid/widget/RadioButton;

    .line 82
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_modify_password:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0149

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_help:Landroid/widget/RadioButton;

    .line 85
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_help:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d036c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_firmware_fix:Landroid/widget/RadioButton;

    .line 88
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_firmware_fix:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0370

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    .line 91
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
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
    .line 125
    .line 128
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->initViews()V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 151
    :sswitch_0
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 156
    :sswitch_1
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/MyReportFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 161
    :sswitch_2
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 166
    :sswitch_3
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/FirmwareFixFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
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

    .line 172
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0706d8

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 182
    :sswitch_5
    const-class v3, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 187
    :sswitch_6
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const-class v3, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 194
    :sswitch_7
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v4, "login_state"

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, login_state:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    new-instance v1, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;-><init>(Landroid/content/Context;)V

    .line 197
    .local v1, dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f07068c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f07068d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v7}, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 199
    .end local v1           #dialog:Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cnlaunch/x431pro/activity/login/LoginActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, LoginIntent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0149 -> :sswitch_6
        0x7f0d036a -> :sswitch_0
        0x7f0d036b -> :sswitch_2
        0x7f0d036c -> :sswitch_3
        0x7f0d036d -> :sswitch_1
        0x7f0d036e -> :sswitch_4
        0x7f0d036f -> :sswitch_5
        0x7f0d0370 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v0, 0x7f03013a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 210
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->LogBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 114
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    const-string/jumbo v2, "login_state"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, login_state:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    const v2, 0x7f070629

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/MineFragment;->btn_logout:Landroid/widget/Button;

    const v2, 0x7f070627

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 133
    .line 136
    return-void
.end method
