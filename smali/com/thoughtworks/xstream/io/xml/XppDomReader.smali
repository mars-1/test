.class public Lcom/thoughtworks/xstream/io/xml/XppDomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "XppDomReader.java"


# instance fields
.field private currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 0
    .parameter "xppDom"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .parameter "xppDom"
    .parameter "nameCoder"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .parameter "xppDom"
    .parameter "replacer"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "attributeName"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getParent()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, text:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 52
    .restart local v0       #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 88
    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .end local p1
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 89
    return-void
.end method
