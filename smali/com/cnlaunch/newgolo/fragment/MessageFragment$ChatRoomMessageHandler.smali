.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;
.super Lcom/cnlaunch/newgolo/handler/MessageHandler;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatRoomMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1074
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/handler/MessageHandler;-><init>(Landroid/os/Looper;)V

    .line 1075
    return-void
.end method

.method private updateUi(Z)V
    .locals 3
    .parameter "isAdd"

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1138
    return-void
.end method


# virtual methods
.method public onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1079
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "message speark id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", message.roomid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "==============1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "==============2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "==============3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->updateUi(Z)V

    .line 1087
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "==============4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->disposeMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1090
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "==============5message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    return-void
.end method

.method public onMessageCountUpdate()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public onMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 1117
    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1126
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1119
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    iget-wide v3, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1120
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ChatRoomMessageHandler;->updateUi(Z)V

    goto :goto_1

    .line 1118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
