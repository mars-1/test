.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseWaitDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x4

    .line 1361
    if-ne p2, v7, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v4

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/cnlaunch/golo3/message/R$string;->canlce_remotediag:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1365
    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createStopCMD()Ljava/lang/String;

    move-result-object v6

    .line 1364
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1366
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v7}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 1367
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$16;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1370
    :cond_0
    const/4 v0, 0x1

    .line 1372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
