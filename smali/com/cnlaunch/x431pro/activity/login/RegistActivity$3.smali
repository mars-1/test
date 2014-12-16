.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_password:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$17(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$18(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_confirmpass:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$19(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$20(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$21(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 426
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$21(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isPasswordValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    .line 435
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$23(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$23(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->confirmpass:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$23(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->password:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$21(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$24(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    .line 445
    :goto_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$16(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 446
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$22(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$24(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_1

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_confirm_password:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$24(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v4, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 418
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 411
    return-void
.end method
