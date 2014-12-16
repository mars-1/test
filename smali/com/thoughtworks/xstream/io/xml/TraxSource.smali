.class public Lcom/thoughtworks/xstream/io/xml/TraxSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "TraxSource.java"


# static fields
.field public static final XSTREAM_FEATURE:Ljava/lang/String; = "http://com.thoughtworks.xstream/XStreamSource/feature"


# instance fields
.field private source:Ljava/util/List;

.field private xmlReader:Lorg/xml/sax/XMLReader;

.field private xstream:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 69
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 79
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 100
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 69
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 79
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 102
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .parameter "source"
    .parameter "xstream"

    .prologue
    const/4 v1, 0x0

    .line 117
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 69
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 79
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 119
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSource(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 132
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 69
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 79
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 134
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .parameter "source"
    .parameter "xstream"

    .prologue
    const/4 v1, 0x0

    .line 149
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-direct {p0, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 69
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 74
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 79
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 151
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setXStream(Lcom/thoughtworks/xstream/XStream;)V

    .line 153
    return-void
.end method

.method private configureXMLReader()V
    .locals 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-eqz v1, :cond_1

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string/jumbo v2, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string/jumbo v2, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_1
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 2
    .parameter "filterChain"

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 278
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 279
    return-void

    .line 262
    :cond_0
    instance-of v1, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 264
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 265
    .local v0, filter:Lorg/xml/sax/XMLFilter;
    :goto_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLFilter;

    move-object v0, v1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_1

    .line 268
    :cond_1
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    if-nez v1, :cond_2

    .line 269
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/SaxWriter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 273
    :cond_2
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    goto :goto_0

    .line 275
    .end local v0           #filter:Lorg/xml/sax/XMLFilter;
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method


# virtual methods
.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 1
    .parameter "inputSource"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "obj"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v0, list:Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->setSourceAsList(Ljava/util/List;)V

    .line 235
    return-void
.end method

.method public setSourceAsList(Ljava/util/List;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->source:Ljava/util/List;

    .line 255
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 256
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->createXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 186
    return-void
.end method

.method public setXStream(Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .parameter "xstream"

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "xstream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/TraxSource;->xstream:Lcom/thoughtworks/xstream/XStream;

    .line 218
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/TraxSource;->configureXMLReader()V

    .line 219
    return-void
.end method
