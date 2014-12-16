.class Lcom/cnlaunch/newgolo/Xmpp/XConnection$2;
.super Ljava/lang/Object;
.source "XConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/Xmpp/XConnection;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$2;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 3
    .parameter "packet"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$2;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingStamp:J
    invoke-static {v0, v1, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->access$0(Lcom/cnlaunch/newgolo/Xmpp/XConnection;J)V

    .line 216
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
