.class public Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "ResetPasswordActivity.java"


# instance fields
.field private final REQ_ERROR_ILLEGAL_PARAMETER:I

.field private final REQ_ERROR_NULL_PARAMETER:I

.field private final REQ_ERROR_VOID_PARAMETER:I

.field private final REQ_RESET_PASSWORD_CODE:I

.field private final REQ_RESET_PASSWORD_ERROR_FAIL_RESET:I

.field private final REQ_RESET_PASSWORD_ERROR_IDENTIFY_CODE_INCORRECT:I

.field private final REQ_RESET_PASSWORD_ERROR_PASSWORD_IDNETICAL:I

.field private final REQ_RESET_PASSWORD_SUCCESS:I

.field action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field button_comfirm:Landroid/widget/Button;

.field comfirm_password:Ljava/lang/String;

.field edit_comfirm_password:Landroid/widget/EditText;

.field edit_identify_code:Landroid/widget/EditText;

.field edit_password:Landroid/widget/EditText;

.field edit_username:Landroid/widget/EditText;

.field identify_code:Ljava/lang/String;

.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 23
    const/16 v0, 0xc8

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_RESET_PASSWORD_CODE:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_RESET_PASSWORD_SUCCESS:I

    .line 26
    const/16 v0, 0x3fe

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_ERROR_ILLEGAL_PARAMETER:I

    .line 27
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_ERROR_VOID_PARAMETER:I

    .line 28
    const/16 v0, 0x2711

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_ERROR_NULL_PARAMETER:I

    .line 30
    const v0, 0x1ae79

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_RESET_PASSWORD_ERROR_PASSWORD_IDNETICAL:I

    .line 31
    const v0, 0x1ae15

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_RESET_PASSWORD_ERROR_IDENTIFY_CODE_INCORRECT:I

    .line 32
    const v0, 0x1ae7a

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->REQ_RESET_PASSWORD_ERROR_FAIL_RESET:I

    .line 21
    return-void
.end method

.method private ResetPasswordFailPrompt(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 135
    const v0, 0x7f07068a

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 138
    :goto_0
    return-void

    .line 129
    :sswitch_0
    const v0, 0x7f07068b

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    :sswitch_1
    const v0, 0x7f07068c

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1ae15 -> :sswitch_1
        0x1ae79 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 61
    const v0, 0x7f0c02e9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_username:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0c02ea

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_password:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_password:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 64
    const v0, 0x7f0c02eb

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_comfirm_password:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_comfirm_password:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 67
    const v0, 0x7f0c02ec

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_identify_code:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_username:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 71
    const v0, 0x7f0c02ed

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->button_comfirm:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->button_comfirm:Landroid/widget/Button;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_identify_code:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$2;-><init>(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 5
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->comfirm_password:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->identify_code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyResetPass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v1, 0x7f0300f5

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->setContentView(I)V

    .line 52
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->setHeadVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v1, "username_or_mail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->username:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->initView()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 176
    const v0, 0x7f07068a

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->finish()V

    .line 184
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 2
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onSuccess(ILjava/lang/Object;)V

    .line 172
    return-void

    .line 159
    :pswitch_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 160
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 161
    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 162
    .local v0, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const v1, 0x7f070689

    invoke-static {p0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 164
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->finish()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->ResetPasswordFailPrompt(I)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
