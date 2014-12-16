.class public Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "TimeOutRemindFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private btn_timeout_remind:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 52
    const v0, 0x7f0705ec

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->setTitle(I)V

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0486

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "expired_remind"

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->initViews()V

    .line 39
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 69
    :pswitch_0
    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "expired_remind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "expired_remind"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->btn_timeout_remind:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/TimeOutRemindFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0d0486
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 44
    const v0, 0x7f03018b

    .line 45
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
