.class Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;
.super Ljava/lang/Object;
.source "VerificationCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->et_verify_code:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$4(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    const/16 v1, 0x83f

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->request(I)V

    goto :goto_0
.end method
