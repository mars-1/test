.class Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;
.super Ljava/lang/Object;
.source "PrintEditInfoFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintTextWatcher"
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->id:I

    .line 244
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 249
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 255
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 259
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->id:I

    sparse-switch v0, :sswitch_data_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 261
    :sswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_garage_name:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_garage_name:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 266
    :sswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_company_address:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_company_address:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$4(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 271
    :sswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_telephone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$5(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_telephone:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$6(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 276
    :sswitch_3
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_fax:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$7(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_fax:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$8(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto :goto_0

    .line 281
    :sswitch_4
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->edit_license_plate_number:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$9(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment$PrintTextWatcher;->this$0:Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->cb_plate_number:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$10(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->showCheckBox(Landroid/widget/CheckBox;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/PrintEditInfoFragment;Landroid/widget/CheckBox;IZ)V

    goto/16 :goto_0

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c02e3 -> :sswitch_3
        0x7f0c0398 -> :sswitch_0
        0x7f0c039a -> :sswitch_1
        0x7f0c039c -> :sswitch_2
        0x7f0c039f -> :sswitch_4
    .end sparse-switch
.end method
