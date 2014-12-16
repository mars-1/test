.class public Lcom/thoughtworks/xstream/io/xml/StandardStaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "StandardStaxDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0
    .parameter "qnameMap"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .parameter "qnameMap"
    .parameter "nameCoder"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .parameter "nameCoder"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 5

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 55
    .local v1, exception:Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v2

    .line 56
    .local v2, staxInputFactory:Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLInputFactory;

    return-object v3

    .line 59
    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string/jumbo v4, "Java runtime has no standard XMLInputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v2           #staxInputFactory:Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/InstantiationException;
    move-object v1, v0

    .line 68
    .end local v0           #e:Ljava/lang/InstantiationException;
    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string/jumbo v4, "Cannot create standard XMLInputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 63
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 67
    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    goto :goto_0
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 5

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, exception:Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v2

    .line 75
    .local v2, staxOutputFactory:Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/XMLOutputFactory;

    return-object v3

    .line 78
    :cond_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string/jumbo v4, "Java runtime has no standard XMLOutputFactory implementation."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 80
    .end local v2           #staxOutputFactory:Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/InstantiationException;
    move-object v1, v0

    .line 87
    .end local v0           #e:Ljava/lang/InstantiationException;
    :goto_0
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    const-string/jumbo v4, "Cannot create standard XMLOutputFactory instance of Java runtime."

    invoke-direct {v3, v4, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 82
    :catch_1
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 86
    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    goto :goto_0
.end method
