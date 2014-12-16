.class Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->et_old_password:Lcom/cnlaunch/x431pro/widget/ClearEditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, oldPassword:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    .line 159
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isPassword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0706e5

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 161
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v4}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    .line 169
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->isSubmitEnable()Z
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    :cond_1
    return-void

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->checkbox_oldpass:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->btn_submit_password:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/ModifyPasswordFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 148
    return-void
.end method
