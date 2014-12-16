.class public Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "RegisterProfileActivity.java"


# instance fields
.field private btn_save:Landroid/widget/Button;

.field private edit_address:Landroid/widget/EditText;

.field private edit_fax:Landroid/widget/EditText;

.field private edit_mobile:Landroid/widget/EditText;

.field private edit_telephont:Landroid/widget/EditText;

.field private edit_workshop:Landroid/widget/EditText;

.field private mAddress:Ljava/lang/String;

.field private mFax:Ljava/lang/String;

.field private mMobile:Ljava/lang/String;

.field private mTelephone:Ljava/lang/String;

.field private mWockshop:Ljava/lang/String;

.field private radio_female:Landroid/widget/RadioButton;

.field private radio_male:Landroid/widget/RadioButton;

.field private radiogroup_sex:Landroid/widget/RadioGroup;

.field private sex:Ljava/lang/String;

.field private tv_skip:Landroid/widget/TextView;

.field useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 66
    const v0, 0x7f0c042b

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->radiogroup_sex:Landroid/widget/RadioGroup;

    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->radiogroup_sex:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 76
    const v0, 0x7f0c042c

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->radio_male:Landroid/widget/RadioButton;

    .line 77
    const v0, 0x7f0c042d

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->radio_female:Landroid/widget/RadioButton;

    .line 79
    const v0, 0x7f0c042e

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->edit_workshop:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0c042f

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->edit_address:Landroid/widget/EditText;

    .line 81
    const v0, 0x7f0c0431

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->edit_mobile:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f0c0432

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->edit_telephont:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f0c0433

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->edit_fax:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f0c0435

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->btn_save:Landroid/widget/Button;

    .line 85
    const v0, 0x7f0c0436

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->tv_skip:Landroid/widget/TextView;

    .line 108
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
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030172

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->setContentView(I)V

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->setHeadVisibility(I)V

    .line 61
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 130
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/RegisterProfileActivity;->finish()V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSuccess(ILjava/lang/Object;)V

    .line 114
    return-void
.end method
