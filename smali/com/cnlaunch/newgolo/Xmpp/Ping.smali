.class public Lcom/cnlaunch/newgolo/Xmpp/Ping;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Ping.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 13
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->PING:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/Xmpp/Ping;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
