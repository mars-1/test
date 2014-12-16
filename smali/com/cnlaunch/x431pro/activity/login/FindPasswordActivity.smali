.class public Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "FindPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final REQ_ERROR_ILLEGAL_PARAMETER:I

.field private final REQ_ERROR_NULL_PARAMETER:I

.field private final REQ_ERROR_VOID_PARAMETER:I

.field private final REQ_SEND_CODE:I

.field private final REQ_SEND_CODE_ERROR_NO_MAIL:I

.field private final REQ_SEND_CODE_ERROR_REGISTERED:I

.field private final REQ_SEND_CODE_ERROR_SEND_MAIL_FAILED:I

.field private final REQ_SEND_CODE_ERROR_UNREGISTERED:I

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private btn_findpass:Landroid/widget/Button;

.field private edit_usernameormail:Landroid/widget/EditText;

.field private username_or_mail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 39
    const/16 v0, 0xca

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_SEND_CODE:I

    .line 41
    const/16 v0, 0x3fe

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_ERROR_ILLEGAL_PARAMETER:I

    .line 42
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_ERROR_VOID_PARAMETER:I

    .line 43
    const/16 v0, 0x2711

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_ERROR_NULL_PARAMETER:I

    .line 45
    const v0, 0x1adb1

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_SEND_CODE_ERROR_REGISTERED:I

    .line 46
    const v0, 0x1adb2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_SEND_CODE_ERROR_UNREGISTERED:I

    .line 47
    const/16 v0, 0x7539

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_SEND_CODE_ERROR_NO_MAIL:I

    .line 48
    const v0, 0x1adb3

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->REQ_SEND_CODE_ERROR_SEND_MAIL_FAILED:I

    .line 36
    return-void
.end method

.method private GetIdentifyCodeFailPrompt(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 90
    sparse-switch p1, :sswitch_data_0

    .line 104
    const v0, 0x7f070676

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 107
    :goto_0
    return-void

    .line 92
    :sswitch_0
    const v0, 0x7f070671

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 95
    :sswitch_1
    const v0, 0x7f070672

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 98
    :sswitch_2
    const v0, 0x7f070673

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 101
    :sswitch_3
    const v0, 0x7f070674

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_0
        0x7539 -> :sswitch_3
        0x1adb1 -> :sswitch_1
        0x1adb2 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->btn_findpass:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->btn_right:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    const v0, 0x7f0d02a9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 75
    const v0, 0x7f0d02a7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->btn_findpass:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->btn_findpass:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity$1;-><init>(Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 4
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->edit_usernameormail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const v0, 0x7f07067f

    invoke-static {p0, v0}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 162
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->request(I)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0d02a7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f0300e0

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->setContentView(I)V

    .line 63
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 64
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->initViews()V

    .line 67
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->setHeadVisibility(I)V

    .line 68
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 0
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 170
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->finish()V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 124
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 125
    check-cast v1, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 126
    .local v1, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->isSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const v2, 0x7f070686

    invoke-static {p0, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "username_or_mail"

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->username_or_mail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->finish()V

    goto :goto_0

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/cnlaunch/x431pro/activity/login/FindPasswordActivity;->GetIdentifyCodeFailPrompt(I)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method
