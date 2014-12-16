.class Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;
.super Landroid/os/Handler;
.source "MessageBoxDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 123
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 126
    .local v0, b0:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string/jumbo v3, "MessageTitle"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string/jumbo v3, "MessageContent"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string/jumbo v3, "MessageRatio"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 131
    .end local v0           #b0:Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 132
    .local v1, b1:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string/jumbo v3, "MessageTitle"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->messageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/view/MessageBoxDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string/jumbo v3, "MessageContent"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
