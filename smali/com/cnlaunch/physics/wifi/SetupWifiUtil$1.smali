.class Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;
.super Ljava/lang/Object;
.source "SetupWifiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/physics/wifi/SetupWifiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;


# direct methods
.method constructor <init>(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$0(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mClientSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$0(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #calls: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readData()[B
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$1(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)[B

    move-result-object v0

    .line 96
    .local v0, data:[B
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v0}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 98
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v0           #data:[B
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->readRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$3(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_1
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-virtual {v3, v5, v4}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 105
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/cnlaunch/physics/wifi/SetupWifiUtil$1;->this$0:Lcom/cnlaunch/physics/wifi/SetupWifiUtil;

    #getter for: Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->mReadHandler:Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;
    invoke-static {v3}, Lcom/cnlaunch/physics/wifi/SetupWifiUtil;->access$2(Lcom/cnlaunch/physics/wifi/SetupWifiUtil;)Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cnlaunch/physics/wifi/SetupWifiUtilHelper$ReadHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
