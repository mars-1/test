.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;
.super Lcom/cnlaunch/framework/network/download/DownLoadCallback;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->initManager()V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    .line 523
    invoke-direct {p0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "fileName"
    .parameter "strMsg"

    .prologue
    const/16 v11, 0x64

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x7

    const/4 v7, 0x0

    .line 561
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onFailure: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", strMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    const/4 v0, 0x0

    .line 564
    .local v0, ENOSPC:Z
    if-eqz p2, :cond_3

    const-string/jumbo v3, "ENOSPC"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 565
    const/4 v0, 0x1

    .line 586
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 598
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    .line 600
    if-eqz p2, :cond_8

    const-string/jumbo v3, "Token is invalid!"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 601
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 602
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 603
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 604
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 605
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 606
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 567
    :cond_3
    if-eqz p2, :cond_0

    const-string/jumbo v3, "ETIMEDOUT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 568
    const-string/jumbo v3, "UnknownHostException"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 570
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$5(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/download/DownloadManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/framework/network/download/DownloadManager;->close()V

    .line 572
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 573
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 575
    .local v1, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 576
    invoke-virtual {v1, v11}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 577
    invoke-virtual {v1, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 578
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 586
    .end local v1           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 587
    .restart local v1       #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-virtual {v1, v11}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 589
    if-eqz v0, :cond_7

    .line 590
    invoke-virtual {v1, v8}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_0

    .line 593
    :cond_7
    invoke-virtual {v1, v10}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto/16 :goto_0

    .line 608
    .end local v1           #bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    :cond_8
    if-eqz v0, :cond_9

    .line 609
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 610
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 611
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 613
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 616
    .end local v2           #msg:Landroid/os/Message;
    :cond_9
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #calls: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->addDownloadFailed()V
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$8(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)V

    goto/16 :goto_1
.end method

.method public onLoading(Ljava/lang/String;II)V
    .locals 4
    .parameter "fileName"
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 526
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onLoading(Ljava/lang/String;II)V

    .line 527
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    .line 536
    return-void

    .line 527
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 528
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 530
    .local v1, pecentage:I
    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 531
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "filePath"

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadList:Ljava/util/List;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$3(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 557
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 542
    .local v0, bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 543
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 544
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->adapter:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$27(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/DownloadAdapter;->notifyDataSetChanged()V

    .line 549
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$26(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftPackageID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$ZipThread;-><init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0
.end method
