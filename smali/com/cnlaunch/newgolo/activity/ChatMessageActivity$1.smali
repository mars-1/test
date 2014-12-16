.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;
.super Landroid/os/Handler;
.source "ChatMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 150
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseFailDialog()V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->waitforotherstart:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseWaitDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseRefuseDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :pswitch_5
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->waitDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$2(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$2(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->okDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$2(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 175
    :pswitch_6
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #calls: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showDiagnoseAskforDialog()V
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$3(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)V

    .line 176
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->autoAnswerAskfor(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_7
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->dimissDiagnoseDialog()V

    goto/16 :goto_0

    .line 183
    :pswitch_8
    :try_start_0
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 185
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->isTouched:Z
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$5(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 197
    :cond_2
    :goto_1
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_2
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_3
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$6(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 189
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$7(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 191
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$7(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->fListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$7(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 193
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    const-string/jumbo v1, "MessageActivity"

    const-string/jumbo v2, "------------7"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateUi errro:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_9
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cnlaunch/golo3/message/R$string;->too_big:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 150
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
    .end packed-switch
.end method
