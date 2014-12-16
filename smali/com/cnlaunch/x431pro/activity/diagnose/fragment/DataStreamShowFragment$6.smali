.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;
.super Ljava/lang/Thread;
.source "DataStreamShowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->startRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    .line 477
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 479
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->dataStreamList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$16(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    const/4 v2, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->isRecordUnit:Z
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$17(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V

    .line 487
    return-void

    .line 481
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$6;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
