.class Lorg/jivesoftware/smack/Roster$RosterPacketListener;
.super Ljava/lang/Object;
.source "Roster.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RosterPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/Roster;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smack/Roster;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Roster$RosterPacketListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Roster$RosterPacketListener;-><init>(Lorg/jivesoftware/smack/Roster;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 11
    .parameter "packet"

    .prologue
    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v0, addedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v6, updatedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v1, deletedEntries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, version:Ljava/lang/String;
    move-object v5, p1

    .line 996
    check-cast v5, Lorg/jivesoftware/smack/packet/RosterPacket;

    .line 997
    .local v5, rosterPacket:Lorg/jivesoftware/smack/packet/RosterPacket;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v4, rosterItems:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/RosterPacket$Item;>;"
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1003
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1004
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    const/4 v9, 0x0

    #setter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v8, v9}, Lorg/jivesoftware/smack/Roster;->access$9(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/RosterStorage;)V

    .line 1009
    :goto_1
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v8}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    iget-boolean v8, v8, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    if-nez v8, :cond_0

    .line 1010
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v8}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v8

    invoke-interface {v8}, Lorg/jivesoftware/smack/RosterStorage;->getEntries()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1015
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1018
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v8}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1019
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getRosterItems()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1029
    :cond_1
    iget-object v9, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    monitor-enter v9

    .line 1030
    :try_start_0
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lorg/jivesoftware/smack/Roster;->rosterInitialized:Z

    .line 1031
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 1029
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    iget-object v8, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v8, v0, v6, v1}, Lorg/jivesoftware/smack/Roster;->access$8(Lorg/jivesoftware/smack/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1036
    return-void

    .line 998
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 999
    .local v3, item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1006
    .end local v3           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_3
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/RosterPacket;->getVersion()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1010
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 1011
    .restart local v3       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1015
    .end local v3           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 1016
    .restart local v3       #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    iget-object v9, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #calls: Lorg/jivesoftware/smack/Roster;->insertRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    invoke-static {v9, v3, v0, v6, v1}, Lorg/jivesoftware/smack/Roster;->access$7(Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_3

    .line 1019
    .end local v3           #item:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    .line 1020
    .local v2, i:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v9

    sget-object v10, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v9, v10}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1021
    iget-object v9, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v9}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v9

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/jivesoftware/smack/RosterStorage;->removeEntry(Ljava/lang/String;)V

    goto :goto_4

    .line 1024
    :cond_7
    iget-object v9, p0, Lorg/jivesoftware/smack/Roster$RosterPacketListener;->this$0:Lorg/jivesoftware/smack/Roster;

    #getter for: Lorg/jivesoftware/smack/Roster;->persistentStorage:Lorg/jivesoftware/smack/RosterStorage;
    invoke-static {v9}, Lorg/jivesoftware/smack/Roster;->access$6(Lorg/jivesoftware/smack/Roster;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v9

    invoke-interface {v9, v2, v7}, Lorg/jivesoftware/smack/RosterStorage;->addEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/lang/String;)V

    goto :goto_4

    .line 1029
    .end local v2           #i:Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
