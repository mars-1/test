.class Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;
.super Ljava/lang/Thread;
.source "DownloadBinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;

    .line 234
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2$1;->this$1:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;

    #getter for: Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->this$0:Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;->access$0(Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity$2;)Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/bluetooth/DownloadBinActivity;->finish()V

    .line 242
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
