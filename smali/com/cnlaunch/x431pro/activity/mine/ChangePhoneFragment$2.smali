.class Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;
.super Ljava/lang/Object;
.source "ChangePhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isMobile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    const/16 v1, 0x83d

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->request(I)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
