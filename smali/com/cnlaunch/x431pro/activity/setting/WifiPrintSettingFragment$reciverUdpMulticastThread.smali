.class public Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;
.super Ljava/lang/Thread;
.source "WifiPrintSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "reciverUdpMulticastThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 207
    const/4 v5, 0x0

    .line 209
    .local v5, mulSocket:Ljava/net/MulticastSocket;
    :try_start_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/net/MulticastSocket;

    move-result-object v5

    .line 210
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 211
    .local v2, data:[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v7, v2

    invoke-direct {v1, v2, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 212
    .local v1, dPacket:Ljava/net/DatagramPacket;
    invoke-virtual {v5, v1}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 213
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 214
    .local v0, Inet:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, strIp:Ljava/lang/String;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 216
    .local v4, msg:Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v4, Landroid/os/Message;->what:I

    .line 217
    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0           #Inet:Ljava/net/InetAddress;
    .end local v1           #dPacket:Ljava/net/DatagramPacket;
    .end local v2           #data:[B
    .end local v6           #strIp:Ljava/lang/String;
    :goto_0
    return-void

    .line 219
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 220
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 221
    .restart local v4       #msg:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->what:I

    .line 222
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$reciverUdpMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$3(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
