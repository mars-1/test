.class Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$4;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    .line 179
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/BottomActionBar$Tab;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    const/4 v1, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->mJumpType:I
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$18(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;I)V

    .line 183
    const/4 v0, 0x1

    return v0
.end method
