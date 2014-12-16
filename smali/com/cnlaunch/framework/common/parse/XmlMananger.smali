.class public Lcom/cnlaunch/framework/common/parse/XmlMananger;
.super Ljava/lang/Object;
.source "XmlMananger.java"


# static fields
.field private static instance:Lcom/cnlaunch/framework/common/parse/XmlMananger;


# instance fields
.field private final tag:Ljava/lang/String;

.field private xmlMapper:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->tag:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cnlaunch/framework/common/parse/XmlMananger$1;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/framework/common/parse/XmlMananger$1;-><init>(Lcom/cnlaunch/framework/common/parse/XmlMananger;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    iput-object v0, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    .line 57
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/framework/common/parse/XmlMananger;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->instance:Lcom/cnlaunch/framework/common/parse/XmlMananger;

    if-nez v0, :cond_1

    .line 66
    const-class v1, Lcom/cnlaunch/framework/common/parse/XmlMananger;

    monitor-enter v1

    .line 67
    :try_start_0
    sget-object v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->instance:Lcom/cnlaunch/framework/common/parse/XmlMananger;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;

    invoke-direct {v0}, Lcom/cnlaunch/framework/common/parse/XmlMananger;-><init>()V

    sput-object v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->instance:Lcom/cnlaunch/framework/common/parse/XmlMananger;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    sget-object v0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->instance:Lcom/cnlaunch/framework/common/parse/XmlMananger;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public beanToXml(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlMapper()Lcom/thoughtworks/xstream/XStream;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    return-object v0
.end method

.method public xmlToBean(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "xml"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 97
    iget-object v1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, obj:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method public xmlToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "xml"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p2}, Lcom/thoughtworks/xstream/XStream;->processAnnotations(Ljava/lang/Class;)V

    .line 84
    iget-object v1, p0, Lcom/cnlaunch/framework/common/parse/XmlMananger;->xmlMapper:Lcom/thoughtworks/xstream/XStream;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, obj:Ljava/lang/Object;,"TT;"
    return-object v0
.end method
