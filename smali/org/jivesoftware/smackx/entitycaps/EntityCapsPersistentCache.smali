.class public interface abstract Lorg/jivesoftware/smackx/entitycaps/EntityCapsPersistentCache;
.super Ljava/lang/Object;
.source "EntityCapsPersistentCache.java"


# virtual methods
.method public abstract addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
.end method

.method public abstract emptyCache()V
.end method

.method public abstract replay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
