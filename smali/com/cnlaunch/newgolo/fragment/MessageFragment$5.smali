.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemMenuClick;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(II)V
    .locals 3
    .parameter "position"
    .parameter "buttonType"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 276
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    packed-switch p2, :pswitch_data_0

    .line 295
    :goto_0
    :pswitch_0
    return-void

    .line 278
    :pswitch_1
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->copyMessage(Ljava/lang/String;)V

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setShowMenu(Z)V

    .line 280
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 285
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->delMessag(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 289
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$5;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
