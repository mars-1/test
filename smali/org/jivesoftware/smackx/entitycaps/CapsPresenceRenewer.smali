.class public Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;
.super Ljava/lang/Object;
.source "CapsPresenceRenewer.java"

# interfaces
.implements Lorg/jivesoftware/smackx/entitycaps/CapsVerListener;


# instance fields
.field private capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;)V
    .locals 0
    .parameter "connection"
    .parameter "capsManager"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 12
    iput-object p2, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    .line 13
    return-void
.end method


# virtual methods
.method public capsVerUpdated(Ljava/lang/String;)V
    .locals 2
    .parameter "ver"

    .prologue
    .line 18
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isSendPresence()Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->capsManager:Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->isSendPresence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 22
    .local v0, presence:Lorg/jivesoftware/smack/packet/Presence;
    iget-object v1, p0, Lorg/jivesoftware/smackx/entitycaps/CapsPresenceRenewer;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 24
    .end local v0           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_1
    return-void
.end method
