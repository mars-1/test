.class Lorg/jivesoftware/smackx/entitycaps/CapsPacketListener;
.super Ljava/lang/Object;
.source "CapsPacketListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private manager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPacketListener;->manager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .line 26
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5
    .parameter "packet"

    .prologue
    .line 30
    const-string/jumbo v3, "c"

    const-string/jumbo v4, "http://jabber.org/protocol/caps"

    invoke-virtual {p1, v3, v4}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/entitycaps/packet/CapsExtension;

    .line 32
    .local v0, ext:Lorg/jivesoftware/smackx/entitycaps/packet/CapsExtension;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/entitycaps/packet/CapsExtension;->getNode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/entitycaps/packet/CapsExtension;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, nodeVer:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, user:Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPacketListener;->manager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    invoke-virtual {v3, v2, v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addUserCapsNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
