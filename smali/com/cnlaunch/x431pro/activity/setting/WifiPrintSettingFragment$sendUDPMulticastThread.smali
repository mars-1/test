.class public Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;
.super Ljava/lang/Thread;
.source "WifiPrintSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sendUDPMulticastThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, dPacket:Ljava/net/DatagramPacket;
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destAddressStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 194
    .local v3, destAddress:Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/net/MulticastSocket;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 195
    const-string/jumbo v4, "HLK"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 196
    .local v2, data:[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v4, v2

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->destPortInt:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$2(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)I

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0           #dPacket:Ljava/net/DatagramPacket;
    .local v1, dPacket:Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment$sendUDPMulticastThread;->this$0:Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->multicastSocket:Ljava/net/MulticastSocket;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;->access$1(Lcom/cnlaunch/x431pro/activity/setting/WifiPrintSettingFragment;)Ljava/net/MulticastSocket;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 201
    .end local v1           #dPacket:Ljava/net/DatagramPacket;
    .end local v2           #data:[B
    .end local v3           #destAddress:Ljava/net/InetAddress;
    .restart local v0       #dPacket:Ljava/net/DatagramPacket;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0           #dPacket:Ljava/net/DatagramPacket;
    .restart local v1       #dPacket:Ljava/net/DatagramPacket;
    .restart local v2       #data:[B
    .restart local v3       #destAddress:Ljava/net/InetAddress;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #dPacket:Ljava/net/DatagramPacket;
    .restart local v0       #dPacket:Ljava/net/DatagramPacket;
    goto :goto_0
.end method
