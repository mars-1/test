.class Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;
.super Landroid/os/Handler;
.source "RegisterInstructionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    :pswitch_0
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->access$1(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->tvContent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity$1;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->sContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;->access$3(Lcom/cnlaunch/x431pro/activity/login/RegisterInstructionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
