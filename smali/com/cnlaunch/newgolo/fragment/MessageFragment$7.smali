.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;)Lcom/cnlaunch/newgolo/fragment/MessageFragment;
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    return-object v0
.end method


# virtual methods
.method public onFinish(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPlaying(Z)V

    .line 475
    iget-object v1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 476
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 479
    :cond_0
    new-instance v1, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$2;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStart(I)V
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v3, 0x1

    .line 452
    iget-object v4, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->data:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$7(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/newgolo/model/ChatMessage;

    .line 453
    .local v1, msg:Lcom/cnlaunch/newgolo/model/ChatMessage;
    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/ChatMessage;->getHasPlayed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    .line 454
    .local v2, update:Z
    :goto_0
    invoke-virtual {v1, v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setPlaying(Z)V

    .line 455
    invoke-virtual {v1, v3}, Lcom/cnlaunch/newgolo/model/ChatMessage;->setHasPlayed(Z)V

    .line 456
    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v3}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 457
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 458
    new-instance v3, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$1;

    invoke-direct {v3, p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$7$1;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment$7;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    :cond_0
    iget-wide v3, v1, Lcom/cnlaunch/newgolo/model/ChatMessage;->id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    if-eqz v2, :cond_1

    .line 468
    invoke-static {}, Lcom/cnlaunch/newgolo/model/ChatManager;->getInstance()Lcom/cnlaunch/newgolo/model/ChatManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cnlaunch/newgolo/model/ChatManager;->updateDB(Lcom/cnlaunch/newgolo/model/ChatMessage;)V

    .line 470
    :cond_1
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #update:Z
    :cond_2
    move v2, v3

    .line 453
    goto :goto_0
.end method
