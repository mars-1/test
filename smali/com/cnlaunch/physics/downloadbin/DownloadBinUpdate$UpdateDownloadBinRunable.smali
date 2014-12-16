.class Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;
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
    name = "UpdateDownloadBinRunable"
.end annotation


# instance fields
.field downBin_Name:Ljava/lang/String;

.field downBin_Path:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pDownBin_Path"
    .parameter "pDownBin_Name"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->downBin_Path:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->downBin_Name:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->this$0:Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;

    iget-object v2, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->downBin_Path:Ljava/lang/String;

    iget-object v3, p0, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate$UpdateDownloadBinRunable;->downBin_Name:Ljava/lang/String;

    #calls: Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->updateDownloadBin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;->access$0(Lcom/cnlaunch/physics/downloadbin/DownloadBinUpdate;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
