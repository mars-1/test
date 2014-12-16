.class Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;
.super Ljava/lang/Thread;
.source "DownloadBinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->startUpdateing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    .line 178
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->isUpdateing:Z
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$15(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    return-void

    .line 182
    :cond_0
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$16(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    const/4 v2, 0x0

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$17(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;I)V

    .line 188
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    const-string/jumbo v2, "."

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$18(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Ljava/lang/String;)V

    .line 192
    :goto_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$16(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadIndex:I
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$17(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;I)V

    .line 193
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$1(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$14(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->loadString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->access$18(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;Ljava/lang/String;)V

    goto :goto_2
.end method
