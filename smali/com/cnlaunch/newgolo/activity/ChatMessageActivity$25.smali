.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseAskforDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1857
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1860
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 1861
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    .line 1862
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 1863
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v4

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 1864
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1865
    sget v6, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_refuse_1:I

    .line 1864
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1866
    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$25;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createRefuseCMD()Ljava/lang/String;

    move-result-object v6

    .line 1860
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1867
    return-void
.end method
