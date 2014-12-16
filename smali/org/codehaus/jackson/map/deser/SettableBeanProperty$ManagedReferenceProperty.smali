.class public final Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;
.super Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManagedReferenceProperty"
.end annotation


# instance fields
.field protected final _backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _isContainer:Z

.field protected final _managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _referenceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V
    .locals 3
    .parameter "refName"
    .parameter "forward"
    .parameter "backward"
    .parameter "contextAnnotations"
    .parameter "isContainer"

    .prologue
    .line 613
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p2, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lorg/codehaus/jackson/map/TypeDeserializer;

    invoke-direct {p0, v0, v1, v2, p4}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;)V

    .line 615
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    .line 616
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 617
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 618
    iput-boolean p5, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    .line 619
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .parameter "jp"
    .parameter "ctxt"
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 629
    .local p1, acls:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "instance"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_managedProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 656
    if-eqz p2, :cond_7

    .line 657
    iget-boolean v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_isContainer:Z

    if-eqz v4, :cond_6

    .line 658
    instance-of v4, p2, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 659
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 660
    .local v3, ob:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 661
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ob:Ljava/lang/Object;
    .restart local p2
    :cond_1
    instance-of v4, p2, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 665
    check-cast p2, Ljava/util/Collection;

    .end local p2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 666
    .restart local v3       #ob:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 667
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 670
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ob:Ljava/lang/Object;
    .restart local p2
    :cond_3
    instance-of v4, p2, Ljava/util/Map;

    if-eqz v4, :cond_5

    .line 671
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 672
    .restart local v3       #ob:Ljava/lang/Object;
    if-eqz v3, :cond_4

    .line 673
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, v3, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 677
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #ob:Ljava/lang/Object;
    .restart local p2
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported container type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") when resolving reference \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_referenceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    :cond_6
    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;->_backProperty:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v4, p2, p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    .end local p2
    :cond_7
    return-void
.end method
