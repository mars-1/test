.class Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;
.super Ljava/util/TimerTask;
.source "DownloadBinWriteByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTasks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    const/16 v1, 0x400

    new-array v1, v1, [B

    #setter for: Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->buffer:[B
    invoke-static {v0, v1}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->access$0(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;[B)V

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte$MyTimerTasks;->this$0:Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;

    #getter for: Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->mBridge:Lcom/cnlaunch/physics/utils/Bridge;
    invoke-static {v0}, Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;->access$1(Lcom/cnlaunch/physics/utils/DownloadBinWriteByte;)Lcom/cnlaunch/physics/utils/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/physics/utils/Bridge;->putData()V

    .line 66
    return-void
.end method
