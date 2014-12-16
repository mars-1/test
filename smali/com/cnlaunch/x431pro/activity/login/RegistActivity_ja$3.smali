.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->edit_username:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$5(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, username:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    .line 355
    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isAcount(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v2

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->btn_regist:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$8(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->isRegisterBtnEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    return-void

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v4, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja$3;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->checkbox_username:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$6(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;->access$7(Lcom/cnlaunch/x431pro/activity/login/RegistActivity_ja;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 349
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 344
    return-void
.end method
