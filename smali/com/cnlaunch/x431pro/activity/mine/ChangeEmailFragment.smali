.class public Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ChangeEmailFragment.java"


# instance fields
.field private final REQBINDEMAILCODE:I

.field private final REQRELIEVEUNBINDCODE:I

.field private but_mine_email:Landroid/widget/Button;

.field private et_mine_email:Landroid/widget/EditText;

.field private is_bind_email:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 29
    const/16 v0, 0x83a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->REQRELIEVEUNBINDCODE:I

    .line 30
    const/16 v0, 0x83b

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->REQBINDEMAILCODE:I

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->is_bind_email:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    const v0, 0x7f0705ad

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->setTitle(I)V

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    .line 60
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->is_bind_email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$3;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->but_mine_email:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 6
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 138
    :pswitch_0
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 139
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->unbindEmail()Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v1

    .line 140
    .local v1, resUnbind:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    goto :goto_0

    .line 143
    .end local v1           #resUnbind:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_1
    new-instance v2, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 144
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    .local v0, resBinding:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    move-object v1, v0

    .line 145
    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x83a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSuccess(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mEmail:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "is_bind_email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->is_bind_email:Ljava/lang/String;

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->initViews()V

    .line 49
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const v0, 0x7f030025

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
    .line 189
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x83a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 5
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 157
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 158
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 159
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v1           #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    :pswitch_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 169
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 170
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 171
    .restart local v1       #res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, bundleEmail:Landroid/os/Bundle;
    const-string/jumbo v2, "bindingType"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, "EmailOrPhone"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->et_mine_email:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-class v2, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 177
    .end local v0           #bundleEmail:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    const v3, 0x1adb1

    if-ne v2, v3, :cond_3

    .line 178
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangeEmailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x83a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
