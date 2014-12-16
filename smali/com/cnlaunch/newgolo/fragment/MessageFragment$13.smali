.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;
.super Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;->initRemoteDiagManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1215
    invoke-direct {p0, p2}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAcceptListener(Ljava/lang/String;)V
    .locals 3
    .parameter "snKey"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    invoke-static {}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getInstance()Lcom/cnlaunch/newgolo/data/shared/SharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "REMOTE_SN_KEY"

    invoke-virtual {v0, v1, v2, p1}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.launch.iDiagServive.initRemoteDiag"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1273
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1274
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "MSG_DIAGNOSE_INIT onAcceptListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void
.end method

.method public onAskForListener(Ljava/lang/String;)V
    .locals 3
    .parameter "snKey"

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1264
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1265
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MSG_DIAGNOSE_ASKFOR onAskForListener :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method public onErrorListener(Ljava/lang/String;)V
    .locals 4
    .parameter "errorMessage"

    .prologue
    const/4 v3, 0x4

    .line 1255
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1257
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MSG_DIAGNOSE_ERROR onErrorListener :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v3}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 1259
    return-void
.end method

.method public onFailListener()V
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1248
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1249
    const-string/jumbo v0, "MessageFragment"

    const-string/jumbo v1, "MSG_DIAGNOSE_FAIL onFailListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v1, 0x4

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 1251
    return-void
.end method

.method public onNeedUpdateListener(I)V
    .locals 7
    .parameter "type"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1228
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1229
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v4

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    sget v6, Lcom/cnlaunch/golo3/message/R$string;->you_need_update:I

    invoke-virtual {v5, v6}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1230
    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createStopCMD()Ljava/lang/String;

    move-result-object v6

    .line 1229
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 1231
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v1, 0x4

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 1232
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MSG_DIAGNOSE_NEEDUPDATE onNeedUpdateListener type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    return-void
.end method

.method public onRefuseListener(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1221
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MSG_DIAGNOSE_REFUSE onRefuseListener :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v1, 0x4

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 1223
    return-void
.end method

.method public onStopListener()V
    .locals 3

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1238
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$17(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1240
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "StopRemotoDiagnose"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, intentStop:Landroid/content/Intent;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$13;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1242
    const-string/jumbo v1, "MessageFragment"

    const-string/jumbo v2, "MSG_DIAGNOSE_STOP onStopListener type:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void
.end method
