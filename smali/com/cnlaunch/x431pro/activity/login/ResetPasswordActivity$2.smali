.class Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$2;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 117
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/login/ResetPasswordActivity;->button_comfirm:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
