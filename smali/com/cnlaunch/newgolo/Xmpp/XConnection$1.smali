.class Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;
.super Ljava/lang/Object;
.source "XConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 96
    instance-of v1, p1, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v1, :cond_0

    .line 98
    check-cast p1, Lorg/jivesoftware/smack/XMPPException;

    .end local p1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 99
    .local v0, error:Lorg/jivesoftware/smack/packet/StreamError;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "conflict"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->conflict:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    .line 106
    .end local v0           #error:Lorg/jivesoftware/smack/packet/StreamError;
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;->this$0:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    sget-object v2, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1, v2}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    goto :goto_0
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 111
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 121
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
