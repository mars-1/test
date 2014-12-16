.class Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;
.super Ljava/lang/Object;
.source "DataStreamReplayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChangedPostAction"
.end annotation


# instance fields
.field private mShowAllSelection:Z

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Z)V
    .locals 0
    .parameter
    .parameter "showAllSelection"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->mShowAllSelection:Z

    .line 270
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamMask"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamShow_Type"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mCurrentDatastreamType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamCount"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mDataStreamCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mBtnSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$TabChangedPostAction;->mShowAllSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 278
    return-void

    .line 277
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
