.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_identifycode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$33(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$34(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$35(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$36(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$36(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$16(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 550
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->validcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$35(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 542
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07063f

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;I)V

    .line 543
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_username:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$13(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->username:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$37(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$7;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_identifycode:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$36(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 534
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 527
    return-void
.end method
