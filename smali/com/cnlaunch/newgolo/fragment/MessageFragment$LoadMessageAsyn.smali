.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;
.super Landroid/os/AsyncTask;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageAsyn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 1037
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatRoom;->getType()Lcom/cnlaunch/newgolo/model/ChatType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/newgolo/model/ChatType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatManager;->markAsRead(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1039
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v2}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$8(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatManager;->getChatList(Lcom/cnlaunch/newgolo/model/ChatRoom;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1041
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 1048
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$6(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1049
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$LoadMessageAsyn;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
