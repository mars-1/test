.class Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    const/16 v1, 0x83e

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->request(I)V

    .line 60
    return-void
.end method
