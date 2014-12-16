.class Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;
.super Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;
.source "DataStreamReplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->initBottomActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    .line 165
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$14(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    const/4 v1, 0x2

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$18(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070540

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method
