.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;
.super Ljava/lang/Object;
.source "RegistActivity_ja.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    .line 613
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_phone:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$38(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$39(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$40(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$41(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$41(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x4

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    .line 623
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$8(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isRegisterBtnEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->phone:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$40(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isPhoneNum(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$42(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$41(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v3, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$11;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_phone:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$41(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v3, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 609
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 603
    return-void
.end method
