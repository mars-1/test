.class Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_username:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->username:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->password:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_comfirm_password:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->comfirm_password:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->edit_identify_code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->identify_code:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070663

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 111
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->password:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070667

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->comfirm_password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070664

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->comfirm_password:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcountPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070668

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v1, v1, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->comfirm_password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070653

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->identify_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070665

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->identify_code:Ljava/lang/String;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isIdentifyCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070669

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 109
    :cond_6
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->request(I)V

    goto/16 :goto_0
.end method
