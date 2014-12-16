.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 502
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$29(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$30(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isCanadaZipCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, tempzipcode:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isCanadaZipCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->edit_zipcode:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$29(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    .end local v0           #tempzipcode:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->btn_regist:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$16(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->isRegisterBtnEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 519
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAmericaZipCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->zipcode:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$31(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isCanadaZipCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$6;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->checkbox_zipcode:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$32(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$15(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 498
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 492
    return-void
.end method
