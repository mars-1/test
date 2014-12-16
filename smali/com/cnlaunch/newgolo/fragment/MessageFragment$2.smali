.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemEntityClick;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 232
    .local v0, message:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->hidenMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 254
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string/jumbo v1, "MessageFragment"

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

    .line 238
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->openTextContent(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->openFile(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->openPicture(I)V

    goto :goto_0

    .line 249
    :pswitch_4
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$2;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->playVoice(I)V

    goto :goto_0

    .line 238
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
