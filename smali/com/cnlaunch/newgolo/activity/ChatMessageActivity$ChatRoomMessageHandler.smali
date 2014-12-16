.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;
.super Lcom/cnlaunch/newgolo/handler/MessageHandler;
.source "ChatMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatRoomMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1104
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/handler/MessageHandler;-><init>(Landroid/os/Looper;)V

    .line 1105
    return-void
.end method

.method private updateUi(Z)V
    .locals 3
    .parameter "isAdd"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$16(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1188
    return-void
.end method


# virtual methods
.method public onMessageAdd(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1109
    const-string/jumbo v0, "MessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "message speark id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1110
    const-string/jumbo v2, ", message.roomid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "==============1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "==============2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "==============3"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->updateUi(Z)V

    .line 1119
    const-string/jumbo v0, "MessageActivity"

    const-string/jumbo v1, "==============4"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1121
    iget-object v0, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->disposeMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1123
    const-string/jumbo v0, "MessageActivity"

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

    .line 1127
    :cond_0
    return-void
.end method

.method public onMessageCountUpdate()V
    .locals 0

    .prologue
    .line 1165
    return-void
.end method

.method public onMessageUpdate(Lcom/cnlaunch/newgolo/model/ChatMessage;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 1131
    invoke-static {}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$13()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->speakerId:Ljava/lang/String;

    invoke-static {}, Lcom/cnlaunch/newgolo/GoloApplication;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1132
    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->done:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1133
    invoke-static {v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$11(Z)V

    .line 1134
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "----------->done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.launch.idiag.SendPDFSuccess"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1136
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$15(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    .line 1150
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1151
    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1160
    .end local v0           #i:I
    :cond_1
    :goto_2
    return-void

    .line 1139
    :cond_2
    iget-object v1, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->status:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    sget-object v2, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->failed:Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage$STATUS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1140
    invoke-static {v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$11(Z)V

    .line 1141
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "----------->failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.launch.idiag.SendPDFFail"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1143
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->vFloatingWindow:Landroid/view/View;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$14(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fChatRoomMessageHandler:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$15(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/cnlaunch/newgolo/GoloApplication;->removeMessageHandlers(Lcom/cnlaunch/newgolo/handler/MessageHandler;)V

    goto :goto_0

    .line 1147
    :cond_3
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "----------->init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    .restart local v0       #i:I
    :cond_4
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    iget-wide v3, p1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1154
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1155
    invoke-direct {p0, v5}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$ChatRoomMessageHandler;->updateUi(Z)V

    goto :goto_2

    .line 1152
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
