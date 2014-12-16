.class Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;
.super Ljava/lang/Object;
.source "ModifyPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_new_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, newPassword:Ljava/lang/String;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_confirm_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, confirmPassword:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    .line 192
    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isPassword(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706e3

    invoke-static {v2, v3}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 194
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v2, v3, v4, v4}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    .line 202
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_confirmpass:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v2, v3, v6, v4}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->isSubmitEnable()Z
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :cond_2
    return-void

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_newpass:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v3

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v2, v3, v6, v4}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 180
    return-void
.end method
