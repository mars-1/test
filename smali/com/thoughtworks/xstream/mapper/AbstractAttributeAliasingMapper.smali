.class public abstract Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "AbstractAttributeAliasingMapper.java"


# instance fields
.field protected final aliasToName:Ljava/util/Map;

.field protected transient nameToAlias:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .parameter "wrapped"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    .line 39
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, alias:Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 43
    .end local v0           #alias:Ljava/lang/Object;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public addAliasFor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "attributeName"
    .parameter "alias"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->aliasToName:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AbstractAttributeAliasingMapper;->nameToAlias:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method
