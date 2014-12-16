.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;
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

.field private final synthetic val$keyNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iput-object p2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->val$keyNo:Ljava/lang/String;

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.launch.iDiagServive.initRemoteDiag"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1821
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->creatFloatingWindowForIdiag()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$34(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 1824
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 1825
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    .line 1826
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    .line 1827
    iget-object v4, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v4

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    .line 1828
    iget-object v5, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1829
    sget v6, Lcom/cnlaunch/golo3/message/R$string;->remote_diag_accept:I

    .line 1828
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1829
    iget-object v6, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    .line 1830
    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createAcceptCMD()Ljava/lang/String;

    move-result-object v6

    .line 1824
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1831
    new-instance v7, Landroid/content/Intent;

    .line 1832
    const-string/jumbo v0, "com.launch.iDiagServive.startRemoteDiag"

    .line 1831
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v7, intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1834
    .local v8, remoteDiagBundle:Landroid/os/Bundle;
    const-string/jumbo v0, "IdentityType"

    const-string/jumbo v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    const-string/jumbo v0, "SNKey"

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->val$keyNo:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    const-string/jumbo v0, "AskFrom"

    const-string/jumbo v1, "message"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string/jumbo v0, "IP"

    const-string/jumbo v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v0, "PORT"

    const-string/jumbo v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const-string/jumbo v0, "DOMAI"

    const-string/jumbo v1, ""

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const-string/jumbo v0, "UserID"

    .line 1841
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1840
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string/jumbo v0, "NickName"

    .line 1843
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1842
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1845
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$24;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v0, v7}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1847
    return-void
.end method
