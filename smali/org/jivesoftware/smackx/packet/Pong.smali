.class public Lorg/jivesoftware/smackx/packet/Pong;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Pong.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/packet/Ping;)V
    .locals 1
    .parameter "ping"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 30
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Pong;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 31
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Ping;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Pong;->setFrom(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Ping;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Pong;->setTo(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/Ping;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Pong;->setPacketID(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
