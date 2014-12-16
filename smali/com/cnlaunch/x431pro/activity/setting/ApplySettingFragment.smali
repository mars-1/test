.class public Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ApplySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private setting_gongzhi:Landroid/widget/RadioButton;

.field private setting_yingzhi:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 40
    const v1, 0x7f0705eb

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setTitle(I)V

    .line 41
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d044b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    .line 43
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d044c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    .line 45
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const/4 v0, -0x1

    .line 49
    .local v0, MeasuresionTag:I
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/Tools;->getApplicationMeasuresion(Landroid/content/Context;)I

    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-ne v0, v3, :cond_0

    .line 54
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 55
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->initViews()V

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Measuresion"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_gongzhi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->setting_yingzhi:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/ApplySettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Measuresion"

    invoke-virtual {v0, v1, v3}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f0d044b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    const v0, 0x7f030181

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
