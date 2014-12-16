.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;
.super Landroid/os/Handler;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseFailDialog()V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->waitforotherstart:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseWaitDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseRefuseDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_4
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 179
    :pswitch_5
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$2(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$2(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->okDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$2(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 190
    :pswitch_6
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showDiagnoseAskforDialog()V
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$3(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    .line 191
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->autoAnswerAskfor(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_7
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->dimissDiagnoseDialog()V

    goto/16 :goto_0

    .line 198
    :pswitch_8
    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 199
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->isTouched:Z
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$5(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$6(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v7

    .line 204
    .local v7, e:Ljava/lang/Exception;
    const-string/jumbo v0, "MessageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateUi errro:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 201
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 209
    :pswitch_9
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cnlaunch/golo3/message/R$string;->too_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 212
    :pswitch_a
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v0, v0, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    iget-wide v2, v2, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v4

    iget-object v4, v4, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/cnlaunch/golo3/message/R$string;->canlce_remotediag:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v6, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    iget-object v6, v6, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->imManager:Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;

    invoke-virtual {v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->createStopCMD()Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual/range {v0 .. v6}, Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;->creatDiagnoseMsg(Lcom/cnlaunch/newgolo/model/ChatRoom;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cnlaunch/newgolo/model/ChatMessage;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/newgolo/task/SendTask;->send(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 214
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v1, 0x4

    #calls: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->sendRemoteStatus(I)V
    invoke-static {v0, v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$9(Lcom/cnlaunch/newgolo/fragment/MessageFragment;I)V

    .line 215
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cnlaunch/golo3/message/R$string;->diagnose_timeout:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$1;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$1(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
