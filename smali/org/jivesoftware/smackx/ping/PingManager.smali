.class public Lorg/jivesoftware/smackx/ping/PingManager;
.super Ljava/lang/Object;
.source "PingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;,
        Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "ping"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:ping"

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/ping/PingManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private lastPingStamp:J

.field private lastServerPingStamp:J

.field private pingFailedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/ping/PingFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pingInterval:I

.field private pingMinDelta:J

.field private serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

.field private serverPingThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 60
    sput-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    .line 64
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    const-string/jumbo v1, "ping"

    const-string/jumbo v2, "urn:xmpp:ping"

    new-instance v3, Lorg/jivesoftware/smackx/provider/PingProvider;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/provider/PingProvider;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ping/PingManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 4
    .parameter "connection"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultPingInterval()I

    move-result v2

    iput v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    .line 80
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    .line 81
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    .line 84
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastServerPingStamp:J

    .line 87
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 88
    .local v1, sdm:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;
    const-string/jumbo v2, "urn:xmpp:ping"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    .line 90
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lorg/jivesoftware/smackx/packet/Ping;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 91
    .local v0, pingPacketFilter:Lorg/jivesoftware/smack/filter/PacketFilter;
    new-instance v2, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/ping/PingManager$PingPacketListener;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;)V

    invoke-virtual {p1, v2, v0}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 92
    new-instance v2, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smackx/ping/PingManager$PingConnectionListener;)V

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 93
    sget-object v2, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStartPingServerTask()V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V

    return-void
.end method

.method static synthetic access$2(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStartPingServerTask()V

    return-void
.end method

.method static synthetic access$3(Lorg/jivesoftware/smackx/ping/PingManager;)J
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    return-wide v0
.end method

.method static synthetic access$4(Lorg/jivesoftware/smackx/ping/PingManager;)J
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    return-wide v0
.end method

.method static synthetic access$5(Lorg/jivesoftware/smackx/ping/PingManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastPingStamp:J

    return-void
.end method

.method static synthetic access$6(Lorg/jivesoftware/smackx/ping/PingManager;)Lorg/jivesoftware/smack/Connection;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method public static getInstaceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ping/PingManager;
    .locals 2
    .parameter "connection"

    .prologue
    .line 98
    sget-object v1, Lorg/jivesoftware/smackx/ping/PingManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ping/PingManager;

    .line 100
    .local v0, pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager;

    .end local v0           #pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ping/PingManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 104
    .restart local v0       #pingManager:Lorg/jivesoftware/smackx/ping/PingManager;
    :cond_0
    return-object v0
.end method

.method private maybeStartPingServerTask()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->setDone()V

    .line 296
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 297
    iput-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    .line 298
    iput-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    .line 299
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Smack PingManger: Found existing serverPingTask"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    if-lez v0, :cond_1

    .line 303
    new-instance v0, Lorg/jivesoftware/smackx/ping/ServerPingTask;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    iget v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/ping/ServerPingTask;-><init>(Lorg/jivesoftware/smack/Connection;I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    .line 304
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    .line 305
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Smack Ping Server Task ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    :cond_1
    return-void
.end method

.method private maybeStopPingServerTask()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->setDone()V

    .line 314
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 316
    :cond_0
    return-void
.end method


# virtual methods
.method public disablePingFloodProtection()V
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->setPingMinimumInterval(J)V

    .line 128
    return-void
.end method

.method public getLastSuccessfulPing()J
    .locals 4

    .prologue
    .line 263
    const-wide/16 v0, -0x1

    .line 264
    .local v0, taskLastSuccessfulPing:J
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->getLastSucessfulPing()J

    move-result-wide v0

    .line 267
    :cond_0
    iget-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastServerPingStamp:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method protected getPingFailedListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/ping/PingFailedListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    return-object v0
.end method

.method public getPingIntervall()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    return v0
.end method

.method public getPingMinimumInterval()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    return-wide v0
.end method

.method public isPingSupported(Ljava/lang/String;)Z
    .locals 3
    .parameter "jid"

    .prologue
    .line 247
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-static {v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 248
    .local v1, result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string/jumbo v2, "urn:xmpp:ping"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 251
    .end local v1           #result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public ping(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "jid"

    .prologue
    .line 176
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .parameter "jid"
    .parameter "pingTimeout"

    .prologue
    .line 152
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 155
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/packet/Ping;

    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lorg/jivesoftware/smackx/packet/Ping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, ping:Lorg/jivesoftware/smackx/packet/Ping;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v4, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/Ping;->getPacketID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v0

    .line 160
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 162
    invoke-virtual {v0, p2, p3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 164
    .local v2, result:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    goto :goto_0
.end method

.method public pingEntity(Ljava/lang/String;)Z
    .locals 2
    .parameter "jid"

    .prologue
    .line 204
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingEntity(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public pingEntity(Ljava/lang/String;J)Z
    .locals 3
    .parameter "jid"
    .parameter "pingTimeout"

    .prologue
    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 196
    .local v0, result:Lorg/jivesoftware/smack/packet/IQ;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_1

    .line 198
    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pingMyServer()Z
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer(J)Z

    move-result v0

    return v0
.end method

.method public pingMyServer(J)Z
    .locals 4
    .parameter "pingTimeout"

    .prologue
    .line 216
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Ljava/lang/String;J)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 218
    .local v1, result:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v1, :cond_1

    .line 219
    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    const/4 v2, 0x0

    .line 225
    :goto_1
    return v2

    .line 219
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 220
    .local v0, l:Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v0}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    goto :goto_0

    .line 224
    .end local v0           #l:Lorg/jivesoftware/smackx/ping/PingFailedListener;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jivesoftware/smackx/ping/PingManager;->lastServerPingStamp:J

    .line 225
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public registerPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public setPingIntervall(I)V
    .locals 1
    .parameter "pingIntervall"

    .prologue
    .line 108
    iput p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->serverPingTask:Lorg/jivesoftware/smackx/ping/ServerPingTask;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/ping/ServerPingTask;->setPingInterval(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setPingMinimumInterval(J)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 131
    iput-wide p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingMinDelta:J

    .line 132
    return-void
.end method

.method public unregisterPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method
