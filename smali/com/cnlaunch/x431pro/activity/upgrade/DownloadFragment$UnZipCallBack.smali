.class Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Lcom/cnlaunch/x431pro/utils/file/UnZipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnZipCallBack"
.end annotation


# instance fields
.field private bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V
    .locals 1
    .parameter
    .parameter "bean"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 714
    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 715
    return-void
.end method


# virtual methods
.method public error(ILjava/lang/Throwable;)V
    .locals 11
    .parameter "code"
    .parameter "error"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 746
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    const/4 v0, 0x0

    .line 748
    .local v0, ENOSPC:Z
    if-eqz p2, :cond_0

    .line 749
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, strMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$1(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " strMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/cnlaunch/framework/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    const-string/jumbo v3, "ENOSPC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    const/4 v0, 0x1

    .line 755
    .end local v2           #strMsg:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    if-eqz v3, :cond_1

    .line 756
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, msg:Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 759
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v3, v9}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 760
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->downloadMgr:Lcom/cnlaunch/framework/network/download/DownloadManager;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$2(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Lcom/cnlaunch/framework/network/download/DownloadManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/cnlaunch/framework/network/download/DownloadManager;->setDownLoadCallback(Lcom/cnlaunch/framework/network/download/DownLoadCallback;)V

    .line 761
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 762
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 764
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 765
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 766
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 769
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 770
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v10, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 771
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public finished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 739
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 740
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public progress(II)V
    .locals 4
    .parameter "step"
    .parameter "total"

    .prologue
    const/4 v3, 0x0

    .line 728
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    mul-int/lit8 v2, p1, 0x64

    div-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 730
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 731
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1, v3}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setProgress(I)V

    .line 720
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setState(I)V

    .line 721
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 722
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment$UnZipCallBack;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;->access$0(Lcom/cnlaunch/x431pro/activity/upgrade/DownloadFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
