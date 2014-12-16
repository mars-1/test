.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$1;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->onStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$1;->this$1:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$1;->this$1:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;)Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    move-result-object v0

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mChatMessageAdapter:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$4(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 418
    return-void
.end method
