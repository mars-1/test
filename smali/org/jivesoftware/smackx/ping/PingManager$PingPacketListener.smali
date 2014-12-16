.class Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;
.super Ljava/lang/Object;
.source "PingManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ping/PingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 9
    .parameter "packet"

    .prologue
    .line 327
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #getter for: Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$3(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    .local v0, currentMillies:J
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #getter for: Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$4(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v5

    sub-long v2, v0, v5

    .line 331
    .local v2, delta:J
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #setter for: Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J
    invoke-static {v5, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->access$5(Lorg/jivesoftware/smackx/ping/PingManager;J)V

    .line 332
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #getter for: Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$3(Lorg/jivesoftware/smackx/ping/PingManager;)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 338
    .end local v0           #currentMillies:J
    .end local v2           #delta:J
    .end local p1
    :goto_0
    return-void

    .line 336
    .restart local p1
    :cond_0
    new-instance v4, Lorg/jivesoftware/smackx/packet/Pong;

    check-cast p1, Lorg/jivesoftware/smackx/packet/Ping;

    .end local p1
    invoke-direct {v4, p1}, Lorg/jivesoftware/smackx/packet/Pong;-><init>(Lorg/jivesoftware/smackx/packet/Ping;)V

    .line 337
    .local v4, pong:Lorg/jivesoftware/smackx/packet/Pong;
    iget-object v5, p0, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    #getter for: Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v5}, Lorg/jivesoftware/smackx/ping/PingManager;->access$6(Lorg/jivesoftware/smackx/ping/PingManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
