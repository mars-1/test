.class public Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.super Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;
.source "CollectionConverter.java"


# instance fields
.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .parameter "mapper"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V
    .locals 3
    .parameter "mapper"
    .parameter "type"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 53
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->type:Ljava/lang/Class;

    .line 54
    if-eqz p2, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method protected addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter "reader"
    .parameter "context"
    .parameter "collection"
    .parameter "target"

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, item:Ljava/lang/Object;
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public canConvert(Ljava/lang/Class;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is14()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java.util.LinkedHashSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createCollection(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter "type"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->type:Ljava/lang/Class;

    .end local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;->createCollection(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4
    .parameter "source"
    .parameter "writer"
    .parameter "context"

    .prologue
    .line 71
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 72
    .local v0, collection:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 74
    .local v1, item:Ljava/lang/Object;
    invoke-virtual {p0, v1, p3, p2}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->writeItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_0

    .line 76
    .end local v1           #item:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;)V
    .locals 0
    .parameter "reader"
    .parameter "context"
    .parameter "collection"

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 86
    return-void
.end method

.method protected populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter "reader"
    .parameter "context"
    .parameter "collection"
    .parameter "target"

    .prologue
    .line 89
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 92
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2
    .parameter "reader"
    .parameter "context"

    .prologue
    .line 79
    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->createCollection(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    .local v0, collection:Ljava/util/Collection;
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;)V

    .line 81
    return-object v0
.end method
