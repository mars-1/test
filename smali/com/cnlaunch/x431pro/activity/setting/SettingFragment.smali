.class public Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private btn_about:Landroid/widget/RadioButton;

.field private btn_checkserve:Landroid/widget/RadioButton;

.field private btn_onekey_clear:Landroid/widget/RadioButton;

.field private btn_onekey_feedback:Landroid/widget/RadioButton;

.field private btn_printinfo_setting:Landroid/widget/RadioButton;

.field private btn_theme:Landroid/widget/RadioButton;

.field private btn_wifiprint_setting:Landroid/widget/RadioButton;

.field private currentMeasuresion:I

.field private currentOrientation:I

.field private item_diag_unit:Landroid/view/View;

.field private item_identifix:Landroid/view/View;

.field private item_orientation:Landroid/view/View;

.field private item_timeout_remind:Landroid/view/View;

.field private linear_line_2:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private radio_h:Landroid/widget/RadioButton;

.field private radio_imperial:Landroid/widget/RadioButton;

.field private radio_metric:Landroid/widget/RadioButton;

.field private radio_v:Landroid/widget/RadioButton;

.field private radiogroup_menu:Landroid/widget/RadioGroup;

.field private radiogroup_orientation:Landroid/widget/RadioGroup;

.field private switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

.field private switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 74
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    .line 75
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentOrientation:I

    .line 374
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/16 v7, 0x8

    .line 90
    const v2, 0x7f0704f0

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->setTitle(I)V

    .line 96
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c016e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_diag_unit:Landroid/view/View;

    .line 97
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_diag_unit:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0472

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radiogroup_menu:Landroid/widget/RadioGroup;

    .line 99
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radiogroup_menu:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0473

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_metric:Landroid/widget/RadioButton;

    .line 104
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0474

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_imperial:Landroid/widget/RadioButton;

    .line 105
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    if-nez v2, :cond_3

    .line 106
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_metric:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 112
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0476

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_orientation:Landroid/view/View;

    .line 113
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "is_screen_switch"

    invoke-virtual {v2, v3, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_orientation:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0475

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_timeout_remind:Landroid/view/View;

    .line 137
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_timeout_remind:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_timeout_remind:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->linear_line_2:Landroid/widget/LinearLayout;

    .line 141
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->linear_line_2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    .line 144
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "expired_remind"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 145
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$2;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_identifix:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_identifix:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    .line 159
    const-string/jumbo v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SHOW_IDENTIFIX_TIPS="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "show_identifix_tips"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v3

    const-string/jumbo v4, "show_identifix_tips"

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 161
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$3;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c047f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_printinfo_setting:Landroid/widget/RadioButton;

    .line 170
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_printinfo_setting:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    sget-object v3, Lcom/cnlaunch/x431pro/common/Constants;->IS_SHOW_PRINTER_SET:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 174
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0482

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_wifiprint_setting:Landroid/widget/RadioButton;

    .line 175
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_wifiprint_setting:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :goto_2
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "is_themes_colorful"

    invoke-virtual {v2, v3, v8}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0485

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_theme:Landroid/widget/RadioButton;

    .line 186
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_theme:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :goto_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0486

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_onekey_feedback:Landroid/widget/RadioButton;

    .line 196
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_onekey_feedback:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0487

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_checkserve:Landroid/widget/RadioButton;

    .line 200
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_checkserve:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0489

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_about:Landroid/widget/RadioButton;

    .line 204
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_about:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0488

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_onekey_clear:Landroid/widget/RadioButton;

    .line 207
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->btn_onekey_clear:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void

    .line 107
    :cond_3
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    if-ne v2, v5, :cond_0

    .line 108
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_imperial:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->item_orientation:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0477

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radiogroup_orientation:Landroid/widget/RadioGroup;

    .line 119
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0478

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_h:Landroid/widget/RadioButton;

    .line 120
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0479

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_v:Landroid/widget/RadioButton;

    .line 121
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radiogroup_orientation:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_h:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_v:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentOrientation:I

    .line 125
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentOrientation:I

    if-nez v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_h:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 127
    :cond_5
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentOrientation:I

    if-ne v2, v5, :cond_1

    .line 128
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_v:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 177
    :cond_6
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0480

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, linear_:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0481

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, linear:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 188
    .end local v0           #linear:Landroid/view/View;
    .end local v1           #linear_:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0483

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .restart local v1       #linear_:Landroid/view/View;
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0484

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .restart local v0       #linear:Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, filter:Landroid/content/IntentFilter;
    const-string/jumbo v1, "replace_printSetFragmet"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
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
    .line 213
    .line 216
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->initViews()V

    .line 81
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->registerBroadcastReceiver()V

    .line 82
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    packed-switch p2, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iput v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    .line 360
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Measuresion"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :pswitch_1
    iput v3, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    .line 364
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Measuresion"

    invoke-virtual {v0, v1, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x7f0c0473
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 240
    :sswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->toggle()V

    goto :goto_0

    .line 244
    :sswitch_1
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 249
    :sswitch_2
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    :sswitch_3
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v2

    const-string/jumbo v3, "is_show_diaglog_tip"

    invoke-virtual {v2, v3, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    .line 256
    .local v0, isShow:Z
    if-eqz v0, :cond_1

    .line 258
    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$4;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0705fa

    const v4, 0x7f0705fb

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$4;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;Landroid/content/Context;II)V

    .line 266
    .local v1, tipDialog:Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
    const v2, 0x7f07002b

    new-instance v3, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$5;

    invoke-direct {v3, p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$5;-><init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V

    invoke-virtual {v1, v2, v5, v3}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setAlphaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 272
    const v2, 0x7f070029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v5, v3}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->setBetaOnClickListener(IZLandroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;->show()V

    goto :goto_0

    .line 275
    .end local v1           #tipDialog:Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
    :cond_1
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    .end local v0           #isShow:Z
    :sswitch_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->toggle()V

    goto :goto_0

    .line 289
    :sswitch_5
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    if-nez v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_imperial:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 291
    :cond_2
    iget v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->currentMeasuresion:I

    if-ne v2, v5, :cond_0

    .line 292
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->radio_metric:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 298
    :sswitch_6
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/CheckServerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto :goto_0

    .line 303
    :sswitch_7
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/OneKeyClearFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 307
    :sswitch_8
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/AboutFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 312
    :sswitch_9
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 342
    :sswitch_a
    const-class v2, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c016e -> :sswitch_5
        0x7f0c0476 -> :sswitch_a
        0x7f0c047a -> :sswitch_0
        0x7f0c047d -> :sswitch_4
        0x7f0c047f -> :sswitch_1
        0x7f0c0482 -> :sswitch_2
        0x7f0c0485 -> :sswitch_9
        0x7f0c0486 -> :sswitch_3
        0x7f0c0487 -> :sswitch_6
        0x7f0c0488 -> :sswitch_7
        0x7f0c0489 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 86
    const v0, 0x7f030187

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroy()V

    .line 388
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 349
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 350
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020524

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_timeout_remind:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "expired_remind"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->switchButton_identifix:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "show_identifix_tips"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 353
    return-void
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 221
    .line 224
    return-void
.end method
