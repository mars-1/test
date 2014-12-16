.class public Lcom/cnlaunch/newgolo/Xmpp/XMessage;
.super Lorg/jivesoftware/smack/packet/Message;
.source "XMessage.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V
    .locals 0
    .parameter "to"
    .parameter "type"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 11
    return-void
.end method
