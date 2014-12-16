.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;
.super Ljava/lang/Object;
.source "ChatMessageActivity.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;)Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
    .locals 1
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    return-object v0
.end method


# virtual methods
.method public onFinish(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPlaying(Z)V

    .line 429
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    new-instance v1, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$2;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    return-void
.end method

.method public onStart(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v2, 0x1

    .line 409
    iget-object v3, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->data:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->access$8(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 410
    .local v0, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getHasPlayed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 411
    .local v1, update:Z
    :goto_0
    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPlaying(Z)V

    .line 412
    invoke-virtual {v0, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setHasPlayed(Z)V

    .line 413
    iget-object v2, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    new-instance v3, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7$1;-><init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$7;)V

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    iget-wide v2, v0, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 422
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 424
    :cond_0
    return-void

    .end local v1           #update:Z
    :cond_1
    move v1, v2

    .line 410
    goto :goto_0
.end method
