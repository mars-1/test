.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemLongClick;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 290
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    const-string/jumbo v1, "MessageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLongClick msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getShowMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->hidenMenu()Z

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setShowMenu(Z)V

    .line 296
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$6;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
