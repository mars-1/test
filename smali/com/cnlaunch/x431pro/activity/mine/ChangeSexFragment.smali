.class public Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ChangeSexFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private final REQ_CHANGE_SEX_CODE:I

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private radio_female:Landroid/widget/RadioButton;

.field private radio_male:Landroid/widget/RadioButton;

.field private radiogroup_sex:Landroid/widget/RadioGroup;

.field private sex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 30
    const/16 v0, 0x839

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->REQ_CHANGE_SEX_CODE:I

    .line 27
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    const v0, 0x7f0705a8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->setTitle(I)V

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020521

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d035f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radiogroup_sex:Landroid/widget/RadioGroup;

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radiogroup_sex:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radio_male:Landroid/widget/RadioButton;

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0195

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radio_female:Landroid/widget/RadioButton;

    .line 66
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radio_male:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->radio_female:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 2
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->sex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setSex(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x839
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 45
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 47
    const-string/jumbo v1, "sex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->sex:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->initViews()V

    .line 50
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 107
    const-string/jumbo v0, "lps"

    const-string/jumbo v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    packed-switch p2, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->sex:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_1
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->sex:Ljava/lang/String;

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0195
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const v0, 0x7f030137

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 121
    const/16 v0, 0x839

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->request(I)V

    .line 122
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onDestroyView()V

    .line 123
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x839
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeSexFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x839
        :pswitch_0
    .end packed-switch
.end method
