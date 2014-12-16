.class public Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "IdentifixSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private btnIdentifixSwitch:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 22
    const v0, 0x7f0706a4

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->setTitle(I)V

    .line 23
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c048b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->btnIdentifixSwitch:Landroid/widget/CheckBox;

    .line 25
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->btnIdentifixSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "show_identifix_tips"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->btnIdentifixSwitch:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->btnIdentifixSwitch:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->initViews()V

    .line 37
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 50
    :pswitch_0
    if-eqz p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "show_identifix_tips"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/IdentifixSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "show_identifix_tips"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0c048b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 42
    const v0, 0x7f030188

    .line 43
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
