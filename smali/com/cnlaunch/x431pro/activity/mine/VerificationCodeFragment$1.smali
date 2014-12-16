.class Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;
.super Landroid/os/CountDownTimer;
.source "VerificationCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    .line 178
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    const v2, 0x7f0705e0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->countdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 192
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 6
    .parameter "millisUntilFinished"

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v1, v1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->time:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$1(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;I)V

    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->bt_send:Landroid/widget/Button;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$0(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    const v2, 0x7f0705df

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->time:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->access$2(Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/mine/VerificationCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method
