.class Lcom/cnlaunch/newgolo/Xmpp/XConnection$3;
.super Ljava/lang/Object;
.source "XConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$3;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 229
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_msg:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-direct {v0, v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;-><init>(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    .line 230
    .local v0, event:Lcom/cnlaunch/newgolo/model/event/XmppEvent;
    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->setPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 231
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->sendToTarget()V

    .line 232
    return-void
.end method
