.class public Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;
.super Lcom/cnlaunch/x431pro/activity/BaseActivity;
.source "FindPassActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final REQ_FINDPASS_CODE:I

.field private action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

.field private btn_findpass:Landroid/widget/Button;

.field private edit_username:Landroid/widget/EditText;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseActivity;-><init>()V

    .line 35
    const/16 v0, 0xca

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->REQ_FINDPASS_CODE:I

    .line 33
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->btn_right:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    const v0, 0x7f0d02a6

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->edit_username:Landroid/widget/EditText;

    .line 57
    const v0, 0x7f0d02a7

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->btn_findpass:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->btn_findpass:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
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
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->username:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/framework/utils/lang/LangManager;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->verifyReqSendCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->username:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0704e0

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 107
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->request(I)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0d02a7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->setContentView(I)V

    .line 50
    new-instance v0, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->action:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 51
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->initViews()V

    .line 52
    return-void
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseActivity;->onFailure(IILjava/lang/Object;)V

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 72
    packed-switch p1, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 75
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 76
    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 77
    .local v0, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/FindPassActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "success"

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method
