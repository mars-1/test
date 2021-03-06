.class public Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;
.super Ljava/lang/Object;
.source "SortableFieldKeySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 96
    return-void
.end method

.method public registerFieldOrder(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "fields"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;

    invoke-direct {v1, p0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter "type"
    .parameter "keyedByFieldKey"

    .prologue
    .line 35
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v2, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    .line 37
    .local v2, result:Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    move-object v0, v3

    check-cast v0, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 39
    .local v0, fieldKeys:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 41
    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #fieldKeys:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    .end local v1           #i:I
    .end local v2           #result:Ljava/util/Map;
    :cond_0
    move-object v2, p2

    .line 45
    :cond_1
    return-object v2
.end method
