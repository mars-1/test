.class Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;
.super Ljava/lang/Object;
.source "ConnectorActivateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->edit_serialno:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->portNum:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->serialNo_Prefix:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Landroid/widget/CheckBox;IZ)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBtnActivateEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->cb_serialno:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x4

    #calls: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->btn_activate:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/ConnectorActivateFragment;->isBtnActivateEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 167
    return-void
.end method
