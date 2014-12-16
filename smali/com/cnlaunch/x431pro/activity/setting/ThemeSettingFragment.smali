.class public Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ThemeSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnApply:Landroid/widget/Button;

.field private currentType:I

.field private oldType:I

.field private themes_BlueVoilet:Landroid/widget/RadioButton;

.field private themes_GreenGrassland:Landroid/widget/RadioButton;

.field private themes_RedRose:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 28
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    .line 29
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->oldType:I

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    return v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const v0, 0x7f070712

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->setTitle(I)V

    .line 46
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0483

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    .line 47
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0484

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0485

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d047c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->btnApply:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->btnApply:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "theme_type"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    .line 55
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->oldType:I

    .line 56
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 64
    :cond_2
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->initViews()V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 76
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    iput v4, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    goto :goto_0

    .line 90
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_RedRose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_BlueVoilet:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->themes_GreenGrassland:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I

    goto :goto_0

    .line 99
    :sswitch_3
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;)V

    .line 110
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704fa

    const v3, 0x7f070716

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;->showDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d047c -> :sswitch_3
        0x7f0d0483 -> :sswitch_0
        0x7f0d0484 -> :sswitch_1
        0x7f0d0485 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v0, 0x7f03018a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
