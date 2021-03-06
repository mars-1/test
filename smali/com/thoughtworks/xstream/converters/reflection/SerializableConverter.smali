.class public Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.source "SerializableConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_SERIALIZATION:Ljava/lang/String; = "serialization"

.field private static final ATTRIBUTE_VALUE_CUSTOM:Ljava/lang/String; = "custom"

.field private static final ELEMENT_DEFAULT:Ljava/lang/String; = "default"

.field private static final ELEMENT_FIELD:Ljava/lang/String; = "field"

.field private static final ELEMENT_FIELDS:Ljava/lang/String; = "fields"

.field private static final ELEMENT_NULL:Ljava/lang/String; = "null"

.field private static final ELEMENT_UNSERIALIZABLE_PARENTS:Ljava/lang/String; = "unserializable-parents"


# instance fields
.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 3
    .parameter "mapper"
    .parameter "reflectionProvider"

    .prologue
    .line 97
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    new-instance v1, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1
    .parameter "mapper"
    .parameter "reflectionProvider"
    .parameter "classLoaderReference"

    .prologue
    .line 82
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 83
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "mapper"
    .parameter "reflectionProvider"
    .parameter "classLoader"

    .prologue
    .line 90
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isSerializable(Ljava/lang/Class;)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 105
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v1, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    invoke-virtual {v1, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readField(Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "field"
    .parameter "type"
    .parameter "instance"

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 287
    .local v1, javaField:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 288
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    return-object v2

    .line 289
    .end local v1           #javaField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 291
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 293
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 295
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 17
    .parameter "source"
    .parameter "writer"
    .parameter "context"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string/jumbo v6, "serialization"

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, attributeName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 113
    const-string/jumbo v5, "custom"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    .line 118
    .local v8, currentType:[Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v10, v5, [Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v10, v5

    .line 120
    .local v10, writtenClassWrapper:[Z
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;[Ljava/lang/Class;Ljava/lang/Object;[Z)V

    .line 225
    .local v4, callback:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;
    const/4 v15, 0x0

    .line 226
    .local v15, mustHandleUnserializableParent:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->hierarchyFor(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 227
    .local v13, classHieararchy:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 228
    const/4 v6, 0x0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v8, v6

    .line 229
    const-class v5, Ljava/io/Serializable;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    const/4 v15, 0x1

    .line 231
    goto :goto_0

    .line 233
    :cond_2
    if-eqz v15, :cond_3

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V

    .line 235
    const/4 v15, 0x0

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->supportsWriteObject(Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v10, v5

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 240
    const/4 v5, 0x0

    aget-object v5, v8, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v7, 0x0

    aget-object v7, v8, v7

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string/jumbo v6, "class"

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, classAttributeName:Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 243
    const/4 v5, 0x0

    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v12           #classAttributeName:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    move-result-object v16

    .line 247
    .local v16, objectOutputStream:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v5, v6, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->callWriteObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V

    .line 248
    invoke-virtual/range {v16 .. v16}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;

    .line 249
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 273
    .end local v13           #classHieararchy:Ljava/util/Iterator;
    .end local v16           #objectOutputStream:Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;
    :catch_0
    move-exception v14

    .line 274
    .local v14, e:Ljava/io/IOException;
    new-instance v5, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string/jumbo v6, "Could not call defaultWriteObject()"

    invoke-direct {v5, v6, v14}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 250
    .end local v14           #e:Ljava/io/IOException;
    .restart local v13       #classHieararchy:Ljava/util/Iterator;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 254
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, v10, v5

    .line 255
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v6, 0x0

    aget-object v6, v8, v6

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 256
    const/4 v5, 0x0

    aget-object v5, v8, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const/4 v7, 0x0

    aget-object v7, v8, v7

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string/jumbo v6, "class"

    invoke-interface {v5, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .restart local v12       #classAttributeName:Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 259
    const/4 v5, 0x0

    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v12           #classAttributeName:Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    .line 263
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto/16 :goto_0

    .line 265
    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v10, v5

    .line 266
    invoke-interface {v4}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;->defaultWriteObject()V

    .line 267
    const/4 v5, 0x0

    aget-boolean v5, v10, v5

    if-eqz v5, :cond_1

    .line 268
    invoke-interface/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 276
    :cond_8
    return-void
.end method

.method protected doMarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1
    .parameter "source"
    .parameter "writer"
    .parameter "context"

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    goto :goto_0
.end method

.method public doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 12
    .parameter "result"
    .parameter "reader"
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 315
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    .line 317
    .local v5, currentType:[Ljava/lang/Class;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string/jumbo v2, "serialization"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, attributeName:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v1, "custom"

    invoke-interface {p2, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string/jumbo v2, "Cannot deserialize object with new readObject()/writeObject() methods"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 425
    .local v0, callback:Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    :goto_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 427
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 428
    .local v9, nodeName:Ljava/lang/String;
    const-string/jumbo v1, "unserializable-parents"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    .line 450
    :goto_1
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {p2, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, classAttribute:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 433
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v2, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v11

    .line 437
    :goto_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    aget-object v2, v5, v11

    invoke-virtual {v1, v2, v11}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->supportsReadObject(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-static {p3, v0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v10

    .line 440
    .local v10, objectInputStream:Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMethodInvoker:Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;

    aget-object v2, v5, v11

    invoke-virtual {v1, v2, p1, v10}, Lcom/thoughtworks/xstream/converters/reflection/SerializationMethodInvoker;->callReadObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/io/ObjectInputStream;)V

    .line 441
    invoke-virtual {v10}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    goto :goto_1

    .line 435
    .end local v10           #objectInputStream:Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v5, v11

    goto :goto_2

    .line 444
    :cond_3
    :try_start_0
    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->defaultReadObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 445
    :catch_0
    move-exception v8

    .line 446
    .local v8, e:Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string/jumbo v2, "Could not call defaultWriteObject()"

    invoke-direct {v1, v2, v8}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 453
    .end local v7           #classAttribute:Ljava/lang/String;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #nodeName:Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method protected doUnmarshalConditionally(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1
    .parameter "result"
    .parameter "reader"
    .parameter "context"

    .prologue
    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->isSerializable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doUnmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected hierarchyFor(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .parameter "type"

    .prologue
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, result:Ljava/util/List;
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 303
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 310
    return-object v0
.end method

.method protected marshalUnserializableParent(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;Ljava/lang/Object;)V
    .locals 1
    .parameter "writer"
    .parameter "context"
    .parameter "replacedSource"

    .prologue
    .line 279
    const-string/jumbo v0, "unserializable-parents"

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 280
    invoke-super {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->doMarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 281
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 282
    return-void
.end method
