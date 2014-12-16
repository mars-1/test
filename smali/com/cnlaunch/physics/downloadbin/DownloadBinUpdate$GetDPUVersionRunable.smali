.class Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;
.super Ljava/lang/Object;
.source "DownloadBinUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetDPUVersionRunable"
.end annotation


# instance fields
.field private dir:Ljava/lang/String;

.field private serialNo:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "serialNo"
    .parameter "baseDir"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->serialNo:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->dir:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->serialNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->readDPUVersionInfo2105(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, downloadBinVer:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->serialNo:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->dir:Ljava/lang/String;

    #calls: Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->readDPUHardwareInfo(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->access$1(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$GetDPUVersionRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    #getter for: Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->mOnDownloadBinListener:Lcom/cnlaunch/physics/listener/OnDownloadBinListener;
    invoke-static {v1}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->access$2(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;)Lcom/cnlaunch/physics/listener/OnDownloadBinListener;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2, v0}, Lcom/cnlaunch/physics/listener/OnDownloadBinListener;->OnDownloadBinListener(ILjava/lang/String;)V

    .line 107
    return-void
.end method
