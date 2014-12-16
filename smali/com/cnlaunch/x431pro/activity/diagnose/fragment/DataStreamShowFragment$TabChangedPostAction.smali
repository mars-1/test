.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;
.super Ljava/lang/Object;
.source "DataStreamShowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabChangedPostAction"
.end annotation


# instance fields
.field private mShowAllSelection:Z

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;Z)V
    .locals 0
    .parameter
    .parameter "showAllSelection"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->mShowAllSelection:Z

    .line 571
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamMask"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mMaskString:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$2(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamShow_Type"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mCurrentDatastreamType:Ljava/lang/String;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$3(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamCount"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDataStreamCount:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$4(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "DataStreamCurPage"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->mDSManager:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;->access$5(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/DataStreamManager;->getDataStreamPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    const-string/jumbo v0, "DataStreamShowFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "run post action :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/DataStreamShowFragment$TabChangedPostAction;->mShowAllSelection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method
