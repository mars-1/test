.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->showResendDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    iput p2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->val$position:I

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 385
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-wide v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupId(J)V

    .line 386
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->currentChatRoom:Lcom/cnlaunch/newgolo/model/ChatRoom;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$10(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/model/ChatRoom;

    move-result-object v1

    iget-object v1, v1, Lcom/cnlaunch/newgolo/model/ChatRoom;->publicGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPublicGroupName(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$10;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$9(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->sendMessage(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 388
    return-void
.end method
