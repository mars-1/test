.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 219
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->hidenMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 241
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->openTextContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->openFile(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 233
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->openPicture(I)V

    goto :goto_0

    .line 236
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$2;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->playVoice(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
