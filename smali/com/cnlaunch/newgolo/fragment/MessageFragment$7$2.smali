.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$2;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->onFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$2;->this$1:Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$2;->this$1:Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;)Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    move-result-object v0

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$4(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 484
    return-void
.end method
