.class public Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "VerificationCodeFragment.java"


# instance fields
.field private final CHANGEEMAILORPHONECODE:I

.field private EmailOrPhone:Ljava/lang/String;

.field private final OBTAINTHEVERIFICATIONCODE:I

.field private bt_send:Landroid/widget/Button;

.field private bt_send_change:Landroid/widget/Button;

.field countdownTimer:Landroid/os/CountDownTimer;

.field private et_verify_code:Landroid/widget/TextView;

.field private mBindingType:Ljava/lang/String;

.field private time:I

.field private tv_verify_tips:Landroid/widget/TextView;

.field private useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 24
    const/16 v0, 0x83e

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->OBTAINTHEVERIFICATIONCODE:I

    .line 25
    const/16 v0, 0x83f

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->CHANGEEMAILORPHONECODE:I

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->time:I

    .line 178
    new-instance v0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;JJ)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->time:I

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->time:I

    return v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->et_verify_code:Landroid/widget/TextView;

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04f1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->tv_verify_tips:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string/jumbo v0, "0"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->tv_verify_tips:Landroid/widget/TextView;

    const v1, 0x7f0705dd

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04f4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send_change:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c04f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->et_verify_code:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send_change:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void

    .line 67
    :cond_1
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->tv_verify_tips:Landroid/widget/TextView;

    const v1, 0x7f0705de

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 7
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 92
    packed-switch p1, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 94
    :pswitch_0
    new-instance v3, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 95
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v4, v5, v6}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    .line 96
    .local v1, resBinding:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    goto :goto_0

    .line 98
    .end local v1           #resBinding:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_1
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/model/UserParam;

    invoke-direct {v2}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;-><init>()V

    .line 100
    .local v2, user:Lcom/cnlaunch/x431pro/module/user/model/UserParam;
    const-string/jumbo v3, "0"

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->setEmail(Ljava/lang/String;)V

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->et_verify_code:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->setVcode(Ljava/lang/String;)V

    .line 106
    new-instance v3, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 107
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v3, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->setBase(Lcom/cnlaunch/x431pro/module/user/model/UserParam;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    .local v0, BindingEmailOrPhone:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    move-object v1, v0

    .line 108
    goto :goto_0

    .line 103
    .end local v0           #BindingEmailOrPhone:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/module/user/model/UserParam;->setMobile(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "bindingType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mBindingType:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "EmailOrPhone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->EmailOrPhone:Ljava/lang/String;

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->initViews()V

    .line 44
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const v0, 0x7f0301bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 161
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 165
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 5
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 120
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 121
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 122
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 133
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 134
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 135
    .restart local v1       #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 139
    :cond_2
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->et_verify_code:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 144
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x83e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
