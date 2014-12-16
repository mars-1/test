.class public Lcom/itextpdf/text/pdf/XfaForm;
.super Ljava/lang/Object;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;,
        Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;,
        Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;,
        Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;,
        Lcom/itextpdf/text/pdf/XfaForm$Stack2;,
        Lcom/itextpdf/text/pdf/XfaForm$InverseStore;
    }
.end annotation


# static fields
.field public static final XFA_DATA_SCHEMA:Ljava/lang/String; = "http://www.xfa.org/schema/xfa-data/1.0/"


# instance fields
.field private acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

.field private changed:Z

.field private datasetsNode:Lorg/w3c/dom/Node;

.field private datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

.field private domDocument:Lorg/w3c/dom/Document;

.field private reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private templateNode:Lorg/w3c/dom/Node;

.field private templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

.field private xfaPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 10
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 118
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm;->getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 119
    .local v7, xfa:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v7, :cond_0

    .line 120
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 145
    .end local v7           #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-void

    .line 123
    .restart local v7       #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 124
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 125
    .local v2, bout:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v7

    .line 126
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 127
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x1

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 128
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 129
    .local v6, ob:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v8, v6, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v8, :cond_1

    .line 130
    check-cast v6, Lcom/itextpdf/text/pdf/PRStream;

    .end local v6           #ob:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    .line 131
    .local v1, b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 127
    .end local v1           #b:[B
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 135
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :cond_2
    instance-of v8, v7, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v8, :cond_3

    .line 136
    check-cast v7, Lcom/itextpdf/text/pdf/PRStream;

    .end local v7           #xfa:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v1

    .line 137
    .restart local v1       #b:[B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    .end local v1           #b:[B
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 140
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 141
    .local v4, fact:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4, v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 142
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 143
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 144
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    goto :goto_0
.end method

.method private extractNodes()V
    .locals 4

    .prologue
    .line 152
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 153
    .local v0, n:Lorg/w3c/dom/Node;
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 157
    :goto_1
    if-eqz v0, :cond_3

    .line 158
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 159
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, s:Ljava/lang/String;
    const-string/jumbo v2, "template"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    .line 162
    new-instance v2, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    .line 169
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 164
    .restart local v1       #s:Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "datasets"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iput-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 166
    new-instance v2, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    goto :goto_2

    .line 171
    .end local v1           #s:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "n"

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    const-string/jumbo v0, ""

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .parameter "name"

    .prologue
    .line 323
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 324
    .local v0, n2:Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 325
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 326
    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    :cond_0
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 333
    :cond_2
    return-object p1
.end method

.method public static getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 3
    .parameter "reader"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 102
    .local v0, af:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 105
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    goto :goto_0
.end method

.method public static serializeDoc(Lorg/w3c/dom/Node;)[B
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v1, Lcom/itextpdf/text/xml/XmlDomWriter;

    invoke-direct {v1}, Lcom/itextpdf/text/xml/XmlDomWriter;-><init>()V

    .line 236
    .local v1, xw:Lcom/itextpdf/text/xml/XmlDomWriter;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v0, fout:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/xml/XmlDomWriter;->setCanonical(Z)V

    .line 239
    invoke-virtual {v1, p0}, Lcom/itextpdf/text/xml/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 241
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static setXfa(Lcom/itextpdf/text/pdf/XfaForm;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 13
    .parameter "form"
    .parameter "reader"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 182
    .local v0, af:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm;->getXfaObject(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 186
    .local v10, xfa:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v1, v10

    .line 187
    check-cast v1, Lcom/itextpdf/text/pdf/PdfArray;

    .line 188
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, -0x1

    .line 189
    .local v8, t:I
    const/4 v2, -0x1

    .line 190
    .local v2, d:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 191
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 192
    .local v6, s:Lcom/itextpdf/text/pdf/PdfString;
    const-string/jumbo v11, "template"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 193
    add-int/lit8 v8, v4, 0x1

    .line 195
    :cond_1
    const-string/jumbo v11, "datasets"

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 196
    add-int/lit8 v2, v4, 0x1

    .line 190
    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 199
    .end local v6           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_3
    const/4 v11, -0x1

    if-le v8, v11, :cond_4

    const/4 v11, -0x1

    if-le v2, v11, :cond_4

    .line 200
    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 201
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 202
    new-instance v9, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 203
    .local v9, tStream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 204
    invoke-virtual {p2, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v1, v8, v11}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 205
    new-instance v3, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 206
    .local v3, dStream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 207
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 208
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v12, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    invoke-virtual {v0, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 212
    .end local v1           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #d:I
    .end local v3           #dStream:Lcom/itextpdf/text/pdf/PdfStream;
    .end local v4           #k:I
    .end local v8           #t:I
    .end local v9           #tStream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 213
    new-instance v7, Lcom/itextpdf/text/pdf/PdfStream;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/XfaForm;->serializeDoc(Lorg/w3c/dom/Node;)[B

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 214
    .local v7, str:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getCompressionLevel()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 215
    invoke-virtual {p2, v7}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    .line 216
    .local v5, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public fillXfaForm(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Ljava/io/InputStream;)V

    .line 1107
    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;)V

    .line 1111
    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;)V
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 1133
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1134
    .local v0, data:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1135
    .local v1, list:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1141
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    .line 1142
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/XfaForm;->setChanged(Z)V

    .line 1143
    return-void

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1, v4}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;)V
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 1118
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1119
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 1120
    .local v3, newdoc:Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1126
    return-void

    .line 1121
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #newdoc:Lorg/w3c/dom/Document;
    :catch_0
    move-exception v2

    .line 1122
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 1123
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .line 1124
    .local v2, e:Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public findDatasetsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->inverseSearchGlobal(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 304
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "af"

    .prologue
    .line 269
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v0

    .line 270
    .local v0, items:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    .end local p1
    :goto_0
    return-object p1

    .line 272
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    if-nez v1, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    if-eqz v1, :cond_2

    .line 274
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    .line 278
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_0

    .line 276
    :cond_2
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    goto :goto_1

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->splitParts(Ljava/lang/String;)Lcom/itextpdf/text/pdf/XfaForm$Stack2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;->inverseSearchGlobal(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getAcroFieldsSom()Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    return-object v0
.end method

.method public getDatasetsNode()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDatasetsSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    return-object v0
.end method

.method public getDomDocument()Lorg/w3c/dom/Document;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/text/pdf/PdfReader;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    return-object v0
.end method

.method public getTemplateSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    return v0
.end method

.method public isXfaPresent()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    return v0
.end method

.method public setAcroFieldsSom(Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;)V
    .locals 0
    .parameter "acroFieldsSom"

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->acroFieldsSom:Lcom/itextpdf/text/pdf/XfaForm$AcroFieldsSearch;

    .line 1095
    return-void
.end method

.method public setChanged(Z)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    .line 402
    return-void
.end method

.method public setDatasetsSom(Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;)V
    .locals 0
    .parameter "datasetsSom"

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->datasetsSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    .line 1079
    return-void
.end method

.method public setDomDocument(Lorg/w3c/dom/Document;)V
    .locals 0
    .parameter "domDocument"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 369
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/XfaForm;->extractNodes()V

    .line 370
    return-void
.end method

.method public setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 4
    .parameter "n"
    .parameter "text"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 346
    .local v0, nc:Lorg/w3c/dom/Node;
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 349
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string/jumbo v3, "dataNode"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 350
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string/jumbo v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string/jumbo v3, "dataNode"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/XfaForm;->changed:Z

    goto :goto_0
.end method

.method public setReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 0
    .parameter "reader"

    .prologue
    .line 385
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 386
    return-void
.end method

.method public setTemplateSom(Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;)V
    .locals 0
    .parameter "templateSom"

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->templateSom:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomTemplate;

    .line 1063
    return-void
.end method

.method public setXfa(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/XfaForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-static {p0, v0, p1}, Lcom/itextpdf/text/pdf/XfaForm;->setXfa(Lcom/itextpdf/text/pdf/XfaForm;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 226
    return-void
.end method

.method public setXfaPresent(Z)V
    .locals 0
    .parameter "xfaPresent"

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/XfaForm;->xfaPresent:Z

    .line 361
    return-void
.end method
