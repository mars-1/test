.class Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;
.super Ljava/lang/Object;
.source "ChangePhoneFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 63
    return-void
.end method
