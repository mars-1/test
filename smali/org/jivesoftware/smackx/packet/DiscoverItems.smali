.class public Lorg/jivesoftware/smackx/packet/DiscoverItems;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DiscoverItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation
.end field

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public addItem(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 50
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v1

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "<query xmlns=\"http://jabber.org/protocol/disco#items\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 96
    const-string/jumbo v2, " node=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    monitor-enter v3

    .line 102
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const-string/jumbo v2, "</query>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 102
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;

    .line 103
    .local v1, item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 101
    .end local v1           #item:Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->items:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DiscoverItems;->node:Ljava/lang/String;

    .line 90
    return-void
.end method
