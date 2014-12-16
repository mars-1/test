.class Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;
.super Ljava/lang/Object;
.source "XConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/Xmpp/XConnection;->startPing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide v7, 0x41107ac000000000L

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    #getter for: Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingStamp:J
    invoke-static {v5}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->access$2(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 189
    .local v1, time:J
    const-wide/32 v3, 0x3a980

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    long-to-double v3, v1

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_1

    .line 191
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/Ping;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Xmpp/Ping;-><init>()V

    .line 192
    .local v0, ping:Lcom/cnlaunch/newgolo/Xmpp/Ping;
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-virtual {v3, v0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 197
    .end local v0           #ping:Lcom/cnlaunch/newgolo/Xmpp/Ping;
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    long-to-double v3, v1

    cmpl-double v3, v3, v7

    if-lez v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    sget-object v4, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ping_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v3, v4}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    goto :goto_0
.end method
