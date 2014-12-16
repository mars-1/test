.class Lcom/cnlaunch/framework/network/download/DownloadManager$1;
.super Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/framework/network/download/DownloadManager;->newAsyncHttpResponseHandler(Lcom/cnlaunch/framework/network/download/DownloadParam;)Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/download/DownloadParam;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    .line 481
    invoke-direct {p0, p2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;-><init>(Lcom/cnlaunch/framework/network/download/DownloadParam;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 6
    .parameter "error"

    .prologue
    .line 514
    const-string/jumbo v0, ""

    .line 515
    .local v0, message:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$1(Lcom/cnlaunch/framework/network/download/DownloadManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onFailure: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v1}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendFailureMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #calls: Lcom/cnlaunch/framework/network/download/DownloadManager;->pausehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    invoke-static {v1, p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$3(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    .line 525
    return-void
.end method

.method public onFinish()V
    .locals 5

    .prologue
    .line 501
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$1(Lcom/cnlaunch/framework/network/download/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onFinish: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #calls: Lcom/cnlaunch/framework/network/download/DownloadManager;->completehandler(Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V
    invoke-static {v0, p0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$2(Lcom/cnlaunch/framework/network/download/DownloadManager;Lcom/cnlaunch/framework/network/http/AsyncHttpResponseHandler;)V

    .line 503
    return-void
.end method

.method public onProgress(II)V
    .locals 2
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/framework/network/http/BreakpointHttpResponseHandler;->onProgress(II)V

    .line 486
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendLoadMessage(Ljava/lang/String;II)V

    .line 489
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 506
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->onStart()V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$1(Lcom/cnlaunch/framework/network/download/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStart: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->tag:Ljava/lang/String;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$1(Lcom/cnlaunch/framework/network/download/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onSuccess: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->this$0:Lcom/cnlaunch/framework/network/download/DownloadManager;

    #getter for: Lcom/cnlaunch/framework/network/download/DownloadManager;->mDownLoadCallback:Lcom/cnlaunch/framework/network/download/DownLoadCallback;
    invoke-static {v0}, Lcom/cnlaunch/framework/network/download/DownloadManager;->access$0(Lcom/cnlaunch/framework/network/download/DownloadManager;)Lcom/cnlaunch/framework/network/download/DownLoadCallback;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cnlaunch/framework/network/download/DownloadManager$1;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/network/download/DownLoadCallback;->sendSuccessMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method
