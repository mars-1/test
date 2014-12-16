.class Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;
.super Ljava/util/TimerTask;
.source "DataStreamReplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->startPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    .line 232
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->itemcount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$19(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/ReplayDataStreamManager;->resetData()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$20(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V

    .line 240
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$21(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->dataStreamAllList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$22(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->playSingleData(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$23(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Ljava/util/ArrayList;)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->itemcount:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->stopPlay()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$24(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V

    .line 244
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mReplayCount:I
    invoke-static {v0, v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$20(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V

    .line 245
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$21(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
