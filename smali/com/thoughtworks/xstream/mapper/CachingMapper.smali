.class public Lcom/thoughtworks/xstream/mapper/CachingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "CachingMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private transient realClassCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 32
    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/CachingMapper;->readResolve()Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    .line 60
    return-object p0
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 56
    return-void
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "elementName"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, cached:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 38
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 39
    check-cast v0, Ljava/lang/Class;

    .line 47
    .end local v0           #cached:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 41
    .restart local v0       #cached:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;

    .end local v0           #cached:Ljava/lang/Object;
    throw v0

    .line 45
    .restart local v0       #cached:Ljava/lang/Object;
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 46
    .local v2, result:Ljava/lang/Class;
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/thoughtworks/xstream/mapper/CannotResolveClassException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 47
    goto :goto_0

    .line 48
    .end local v2           #result:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;
    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/CachingMapper;->realClassCache:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    throw v1
.end method
