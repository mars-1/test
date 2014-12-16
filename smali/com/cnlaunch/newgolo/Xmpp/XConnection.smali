.class public Lcom/cnlaunch/newgolo/Xmpp/XConnection;
.super Ljava/lang/Object;
.source "XConnection.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

.field private static instance:Lcom/cnlaunch/newgolo/Xmpp/XConnection;


# instance fields
.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private packetListener:Lorg/jivesoftware/smack/PacketListener;

.field private packetShareListener:Lorg/jivesoftware/smack/PacketListener;

.field private pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private pingStamp:J


# direct methods
.method static synthetic $SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->values()[Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->conflict:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_successfully:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ping_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->pwd_error:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_msg:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_share:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->receive_upgrade_bin:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->send_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {v1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection$1;-><init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 210
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection$2;-><init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 224
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$3;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection$3;-><init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 235
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection$4;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection$4;-><init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetShareListener:Lorg/jivesoftware/smack/PacketListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/Xmpp/XConnection;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingStamp:J

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)J
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingStamp:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance()Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->instance:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->instance:Lcom/cnlaunch/newgolo/Xmpp/XConnection;

    .line 36
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->instance:Lcom/cnlaunch/newgolo/Xmpp/XConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized startPing()V
    .locals 7

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 182
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingStamp:J

    .line 183
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;

    invoke-direct {v1, p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection$5;-><init>(Lcom/cnlaunch/newgolo/Xmpp/XConnection;)V

    .line 198
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 183
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopPing()V
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->pingExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized disConnect()V
    .locals 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->stopPing()V

    .line 138
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 142
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized login(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ip"
    .parameter "port"
    .parameter "name"
    .parameter "password"
    .parameter "serviceName"
    .parameter "resource"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v0, config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    invoke-virtual {v0, p5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setServiceName(Ljava/lang/String;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSendPresence(Z)V

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setRosterLoadedAtLogin(Z)V

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setDebuggerEnabled(Z)V

    .line 65
    new-instance v3, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    iput-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 66
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 67
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v5, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->packetFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v3, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 68
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v4, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connectionListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 69
    iget-object v3, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3, p3, p4, p6}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_successfully:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v0           #config:Lorg/jivesoftware/smack/ConnectionConfiguration;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, msg:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "SASL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    sget-object v3, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->pwd_error:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 81
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v2       #msg:Ljava/lang/String;
    :cond_1
    :try_start_3
    sget-object v3, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->connect_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {p0, v3}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 148
    invoke-static {}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->$SWITCH_TABLE$com$cnlaunch$newgolo$model$event$XmppEvent$Code()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/cnlaunch/newgolo/model/event/XmppEvent;

    invoke-direct {v0, p1}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;-><init>(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    .line 170
    .local v0, event:Lcom/cnlaunch/newgolo/model/event/XmppEvent;
    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/model/event/XmppEvent;->sendToTarget()V

    .line 171
    return-void

    .line 151
    .end local v0           #event:Lcom/cnlaunch/newgolo/model/event/XmppEvent;
    :pswitch_1
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->startPing()V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0

    .line 160
    :pswitch_4
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0

    .line 163
    :pswitch_5
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0

    .line 166
    :pswitch_6
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->disConnect()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;->send_failed:Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;

    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/Xmpp/XConnection;->notifyConnectionChange(Lcom/cnlaunch/newgolo/model/event/XmppEvent$Code;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method
