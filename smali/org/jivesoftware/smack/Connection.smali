.class public abstract Lorg/jivesoftware/smack/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/Connection$InterceptorWrapper;,
        Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    }
.end annotation


# static fields
.field public static DEBUG_ENABLED:Z

.field private static final connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final connectionEstablishedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountManager:Lorg/jivesoftware/smack/AccountManager;

.field protected chatManager:Lorg/jivesoftware/smack/ChatManager;

.field protected final collectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation
.end field

.field protected final config:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field protected final connectionCounterValue:I

.field protected final connectionListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

.field protected final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected reader:Ljava/io/Reader;

.field protected final recvListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected rosterStorage:Lorg/jivesoftware/smack/RosterStorage;

.field protected saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

.field protected final sendListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 90
    sput-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    .line 106
    sput-boolean v1, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z

    .line 112
    :try_start_0
    const-string/jumbo v0, "smack.debugEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/Connection;->DEBUG_ENABLED:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    .line 132
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    .line 157
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 162
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 167
    iput-object v1, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 188
    new-instance v0, Lorg/jivesoftware/smack/SASLAuthentication;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SASLAuthentication;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    .line 194
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/Connection;->connectionCounterValue:I

    .line 207
    iput-object p1, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 208
    return-void
.end method

.method public static addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .parameter "connectionCreationListener"

    .prologue
    .line 505
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    return-void
.end method

.method protected static getConnectionCreationListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionCreationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static removeConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V
    .locals 1
    .parameter "connectionCreationListener"

    .prologue
    .line 515
    sget-object v0, Lorg/jivesoftware/smack/Connection;->connectionEstablishedListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method


# virtual methods
.method public addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 2
    .parameter "connectionListener"

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    if-nez p1, :cond_2

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 2
    .parameter "packetInterceptor"
    .parameter "packetFilter"

    .prologue
    .line 693
    if-nez p1, :cond_0

    .line 694
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet interceptor is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    new-instance v1, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;-><init>(Lorg/jivesoftware/smack/PacketInterceptor;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-void
.end method

.method public addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 610
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 611
    .local v0, wrapper:Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-void
.end method

.method public addPacketSendingListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V
    .locals 3
    .parameter "packetListener"
    .parameter "packetFilter"

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Packet listener is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;-><init>(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 648
    .local v0, wrapper:Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    return-void
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;
    .locals 2
    .parameter "packetFilter"

    .prologue
    .line 574
    new-instance v0, Lorg/jivesoftware/smack/PacketCollector;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 576
    .local v0, collector:Lorg/jivesoftware/smack/PacketCollector;
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 577
    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 476
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/Connection;->disconnect(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 477
    return-void
.end method

.method public abstract disconnect(Lorg/jivesoftware/smack/packet/Presence;)V
.end method

.method protected firePacketInterceptors(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 730
    if-eqz p1, :cond_0

    .line 731
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    :cond_0
    return-void

    .line 731
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;

    .line 732
    .local v0, interceptorWrapper:Lorg/jivesoftware/smack/Connection$InterceptorWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$InterceptorWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method protected firePacketSendingListeners(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 677
    iget-object v1, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    return-void

    .line 677
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Connection$ListenerWrapper;

    .line 678
    .local v0, listenerWrapper:Lorg/jivesoftware/smack/Connection$ListenerWrapper;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection$ListenerWrapper;->notifyListener(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public getAccountManager()Lorg/jivesoftware/smack/AccountManager;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Lorg/jivesoftware/smack/AccountManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/AccountManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    .line 416
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->accountManager:Lorg/jivesoftware/smack/AccountManager;

    return-object v0
.end method

.method public getCapsNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getCapsNode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getChatManager()Lorg/jivesoftware/smack/ChatManager;
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lorg/jivesoftware/smack/ChatManager;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/ChatManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;

    .line 429
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->chatManager:Lorg/jivesoftware/smack/ChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-object v0
.end method

.method public abstract getConnectionID()Ljava/lang/String;
.end method

.method protected getConnectionListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/ConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPacketCollectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/PacketCollector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    return-object v0
.end method

.method protected getPacketInterceptors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketInterceptor;",
            "Lorg/jivesoftware/smack/Connection$InterceptorWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    return-object v0
.end method

.method protected getPacketSendingListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/PacketListener;",
            "Lorg/jivesoftware/smack/Connection$ListenerWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getPort()I

    move-result v0

    return v0
.end method

.method public abstract getRoster()Lorg/jivesoftware/smack/Roster;
.end method

.method public getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->saslAuthentication:Lorg/jivesoftware/smack/SASLAuthentication;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method protected initDebugger()V
    .locals 9

    .prologue
    .line 745
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    if-nez v6, :cond_1

    .line 746
    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "Reader or writer isn\'t initialized."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 749
    :cond_1
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isDebuggerEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 750
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    if-nez v6, :cond_5

    .line 752
    const/4 v0, 0x0

    .line 756
    .local v0, className:Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "smack.debuggerClass"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 761
    :goto_0
    const/4 v2, 0x0

    .line 762
    .local v2, debuggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2

    .line 764
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 770
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 773
    :try_start_2
    const-string/jumbo v6, "de.measite.smack.AndroidDebugger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 788
    :cond_3
    :goto_2
    const/4 v6, 0x3

    :try_start_3
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    .line 789
    const-class v8, Lorg/jivesoftware/smack/Connection;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/io/Writer;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/io/Reader;

    aput-object v8, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 790
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    .line 791
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getReader()Ljava/io/Reader;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 792
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    invoke-interface {v6}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->getWriter()Ljava/io/Writer;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 805
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #debuggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    return-void

    .line 766
    .restart local v0       #className:Ljava/lang/String;
    .restart local v2       #debuggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 767
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 775
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 778
    .local v4, ex:Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "org.jivesoftware.smack.debugger.ConsoleDebugger"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 777
    goto :goto_2

    .line 780
    :catch_2
    move-exception v5

    .line 781
    .local v5, ex2:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 794
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #ex2:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 795
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Can\'t initialize the configured debugger!"

    invoke-direct {v6, v7, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 800
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #debuggerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    invoke-interface {v6, v7}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->reader:Ljava/io/Reader;

    .line 801
    iget-object v6, p0, Lorg/jivesoftware/smack/Connection;->debugger:Lorg/jivesoftware/smack/debugger/SmackDebugger;

    iget-object v7, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    invoke-interface {v6, v7}, Lorg/jivesoftware/smack/debugger/SmackDebugger;->newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object v6

    iput-object v6, p0, Lorg/jivesoftware/smack/Connection;->writer:Ljava/io/Writer;

    goto :goto_3

    .line 758
    .restart local v0       #className:Ljava/lang/String;
    :catch_4
    move-exception v6

    goto/16 :goto_0
.end method

.method public abstract isAnonymous()Z
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isConnected()Z
.end method

.method protected isReconnectionAllowed()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isReconnectionAllowed()Z

    move-result v0

    return v0
.end method

.method public abstract isSecureConnection()Z
.end method

.method public isSendPresence()Z
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->config:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSendPresence()Z

    move-result v0

    return v0
.end method

.method public abstract isUsingCompression()Z
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 357
    const-string/jumbo v0, "Smack"

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smack/Connection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public abstract loginAnonymously()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation
.end method

.method public removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V
    .locals 1
    .parameter "connectionListener"

    .prologue
    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->connectionListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method protected removePacketCollector(Lorg/jivesoftware/smack/PacketCollector;)V
    .locals 1
    .parameter "collector"

    .prologue
    .line 586
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->collectors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method public removePacketInterceptor(Lorg/jivesoftware/smack/PacketInterceptor;)V
    .locals 1
    .parameter "packetInterceptor"

    .prologue
    .line 705
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    return-void
.end method

.method public removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .parameter "packetListener"

    .prologue
    .line 620
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->recvListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public removePacketSendingListener(Lorg/jivesoftware/smack/PacketListener;)V
    .locals 1
    .parameter "packetListener"

    .prologue
    .line 657
    iget-object v0, p0, Lorg/jivesoftware/smack/Connection;->sendListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    return-void
.end method

.method public abstract sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end method

.method public abstract setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
