.class Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvitationsMonitor"
.end annotation


# static fields
.field private static final monitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

.field private final invitationsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/muc/InvitationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2565
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2564
    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    .line 2565
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    .line 2599
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    .line 2600
    return-void
.end method

.method static synthetic access$0(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2650
    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 2717
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->removePacketListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 2718
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 2719
    return-void
.end method

.method private fireInvitationListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 10
    .parameter "room"
    .parameter "inviter"
    .parameter "reason"
    .parameter "password"
    .parameter "message"

    .prologue
    .line 2653
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v2

    .line 2654
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Lorg/jivesoftware/smackx/muc/InvitationListener;

    .line 2655
    .local v7, listeners:[Lorg/jivesoftware/smackx/muc/InvitationListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2653
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2657
    array-length v9, v7

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-lt v8, v9, :cond_0

    .line 2660
    return-void

    .line 2653
    .end local v7           #listeners:[Lorg/jivesoftware/smackx/muc/InvitationListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2657
    .restart local v7       #listeners:[Lorg/jivesoftware/smackx/muc/InvitationListener;
    :cond_0
    aget-object v0, v7, v8

    .line 2658
    .local v0, listener:Lorg/jivesoftware/smackx/muc/InvitationListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/jivesoftware/smackx/muc/InvitationListener;->invitationReceived(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V

    .line 2657
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0
.end method

.method public static getInvitationsMonitor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;
    .locals 4
    .parameter "conn"

    .prologue
    .line 2580
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    monitor-enter v1

    .line 2581
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2585
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    new-instance v3, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    invoke-direct {v3, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;-><init>(Lorg/jivesoftware/smack/Connection;)V

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->monitors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;

    monitor-exit v1

    return-object v0

    .line 2580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 2691
    .line 2692
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "http://jabber.org/protocol/muc#user"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 2693
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    .line 2707
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationPacketListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 2710
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 2711
    return-void
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2612
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v1

    .line 2615
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2616
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->init()V

    .line 2618
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2619
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    :cond_1
    monitor-exit v1

    .line 2622
    return-void

    .line 2612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectionClosed()V
    .locals 0

    .prologue
    .line 2663
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->cancel()V

    .line 2664
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2668
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 2672
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2680
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 2676
    return-void
.end method

.method public removeInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2635
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    monitor-enter v1

    .line 2636
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2641
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->invitationsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2642
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$InvitationsMonitor;->cancel()V

    .line 2635
    :cond_1
    monitor-exit v1

    .line 2645
    return-void

    .line 2635
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
