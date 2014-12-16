.class Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;
.super Ljava/lang/Object;
.source "SetupWifiUtilHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->startCheckSocketClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 248
    :goto_0
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z
    invoke-static {v2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->getInstance()Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->isClosed()Z

    move-result v1

    .line 250
    .local v1, isClose:Z
    if-eqz v1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    const/4 v3, 0x0

    #setter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->isCheckSocketClosed:Z
    invoke-static {v2, v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->access$3(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;Z)V

    .line 252
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    invoke-virtual {v2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->close()V

    .line 253
    iget-object v2, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    #calls: Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->receiverMsg(ILjava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;->access$1(Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper;ILjava/lang/Object;)V

    .line 258
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
