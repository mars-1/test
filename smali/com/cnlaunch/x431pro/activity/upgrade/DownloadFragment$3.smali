.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;
.super Ljava/lang/Thread;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 659
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    const-wide/16 v3, 0x2710

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 668
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 669
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$3;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 670
    return-void

    .line 664
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
