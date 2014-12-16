.class public Lcom/itextpdf/text/html/simpleparser/HTMLWorker;
.super Ljava/lang/Object;
.source "HTMLWorker.java"

# interfaces
.implements Lcom/itextpdf/text/DocListener;
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# static fields
.field public static final tagsSupported:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final tagsSupportedString:Ljava/lang/String; = "ol ul li a pre font span br p div body table td th tr i b u sub sup em strong s strike h1 h2 h3 h4 h5 h6 img hr"


# instance fields
.field private cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

.field private currentParagraph:Lcom/itextpdf/text/Paragraph;

.field protected document:Lcom/itextpdf/text/DocListener;

.field private factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

.field private interfaceProps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isPRE:Z

.field protected objectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field private pendingLI:Z

.field private pendingTD:Z

.field private pendingTR:Z

.field private skipText:Z

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

.field private tableState:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<[Z>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 710
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tagsSupported:Ljava/util/HashSet;

    .line 713
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "ol ul li a pre font span br p div body table td th tr i b u sub sup em strong s strike h1 h2 h3 h4 h5 h6 img hr"

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 714
    .local v0, tok:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    sget-object v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tagsSupported:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/DocListener;)V
    .locals 2
    .parameter "document"

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    .line 88
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 90
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 92
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    .line 94
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .line 96
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->isPRE:Z

    .line 98
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    .line 100
    iput-boolean v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 104
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    invoke-direct {v0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    .line 110
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    .line 111
    return-void
.end method

.method public static parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "reader"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static parseToList(Ljava/io/Reader;Lcom/itextpdf/text/html/simpleparser/StyleSheet;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 2
    .parameter "reader"
    .parameter "style"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Lcom/itextpdf/text/html/simpleparser/StyleSheet;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    .local p2, interfaceProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;-><init>(Lcom/itextpdf/text/DocListener;)V

    .line 146
    .local v0, worker:Lcom/itextpdf/text/html/simpleparser/HTMLWorker;
    if-eqz p1, :cond_0

    .line 147
    iput-object p1, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .line 148
    :cond_0
    iput-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    .line 149
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->setInterfaceProps(Ljava/util/HashMap;)V

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->parse(Ljava/io/Reader;)V

    .line 152
    iget-object v1, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/ArrayList;

    return-object v1
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method public clearTextWrap()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 668
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public endDocument()V
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/Element;

    invoke-interface {v3, v2}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    iget-object v3, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-interface {v2, v3}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 161
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 22
    .parameter "tag"

    .prologue
    .line 442
    sget-object v20, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tagsSupported:Ljava/util/HashSet;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    :try_start_0
    sget-object v20, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 446
    .local v7, follow:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v7           #follow:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 609
    .local v6, e:Ljava/lang/Exception;
    new-instance v20, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v20

    .line 450
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #follow:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v20, "font"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, "span"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_4
    const-string/jumbo v20, "a"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 456
    new-instance v20, Lcom/itextpdf/text/Paragraph;

    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/Paragraph;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 458
    :cond_5
    const/4 v14, 0x0

    .line 459
    .local v14, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const-string/jumbo v21, "alink_interface"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/html/simpleparser/ALink;

    .line 461
    .local v9, i:Lcom/itextpdf/text/html/simpleparser/ALink;
    if-eqz v9, :cond_6

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v9, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ALink;->process(Lcom/itextpdf/text/Paragraph;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Z

    move-result v14

    .line 464
    .end local v9           #i:Lcom/itextpdf/text/html/simpleparser/ALink;
    :cond_6
    if-nez v14, :cond_7

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    const-string/jumbo v21, "href"

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 466
    .local v8, href:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Chunk;

    .line 468
    .local v3, ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/Chunk;->setAnchor(Ljava/lang/String;)Lcom/itextpdf/text/Chunk;

    goto :goto_1

    .line 472
    .end local v3           #ck:Lcom/itextpdf/text/Chunk;
    .end local v8           #href:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/text/Paragraph;

    .line 473
    .local v18, tmp:Lcom/itextpdf/text/Paragraph;
    new-instance v19, Lcom/itextpdf/text/Phrase;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/Phrase;-><init>()V

    .line 474
    .local v19, tmp2:Lcom/itextpdf/text/Phrase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 475
    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 476
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    const-string/jumbo v21, "a"

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .end local v14           #skip:Z
    .end local v18           #tmp:Lcom/itextpdf/text/Paragraph;
    .end local v19           #tmp2:Lcom/itextpdf/text/Phrase;
    :cond_8
    const-string/jumbo v20, "br"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 495
    :cond_9
    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 496
    const-string/jumbo v20, "ul"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    const-string/jumbo v20, "ol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 498
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 499
    const-string/jumbo v20, "li"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 500
    :cond_b
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/Element;

    .line 505
    .local v13, obj:Lcom/itextpdf/text/Element;
    instance-of v0, v13, Lcom/itextpdf/text/List;

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 487
    .end local v13           #obj:Lcom/itextpdf/text/Element;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/Element;

    .line 488
    .restart local v13       #obj:Lcom/itextpdf/text/Element;
    instance-of v0, v13, Lcom/itextpdf/text/TextElementArray;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 489
    move-object v0, v13

    check-cast v0, Lcom/itextpdf/text/TextElementArray;

    move-object v5, v0

    .line 490
    .local v5, current:Lcom/itextpdf/text/TextElementArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    .line 492
    .end local v5           #current:Lcom/itextpdf/text/TextElementArray;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 509
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/TextElementArray;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 515
    .end local v13           #obj:Lcom/itextpdf/text/Element;
    :cond_10
    const-string/jumbo v20, "li"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 516
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    .line 517
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/Element;

    .line 522
    .restart local v13       #obj:Lcom/itextpdf/text/Element;
    instance-of v0, v13, Lcom/itextpdf/text/ListItem;

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 526
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 530
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/Element;

    .line 531
    .local v12, list:Lcom/itextpdf/text/Element;
    instance-of v0, v12, Lcom/itextpdf/text/List;

    move/from16 v20, v0

    if-nez v20, :cond_13

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 535
    :cond_13
    move-object v0, v13

    check-cast v0, Lcom/itextpdf/text/ListItem;

    move-object v11, v0

    .line 536
    .local v11, item:Lcom/itextpdf/text/ListItem;
    move-object v0, v12

    check-cast v0, Lcom/itextpdf/text/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/List;->add(Lcom/itextpdf/text/Element;)Z

    .line 537
    invoke-virtual {v11}, Lcom/itextpdf/text/ListItem;->getChunks()Ljava/util/ArrayList;

    move-result-object v4

    .line 538
    .local v4, cks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_14

    .line 539
    invoke-virtual {v11}, Lcom/itextpdf/text/ListItem;->getListSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v21

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/Chunk;

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Chunk;->setFont(Lcom/itextpdf/text/Font;)V

    .line 541
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 544
    .end local v4           #cks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/Chunk;>;"
    .end local v11           #item:Lcom/itextpdf/text/ListItem;
    .end local v12           #list:Lcom/itextpdf/text/Element;
    .end local v13           #obj:Lcom/itextpdf/text/Element;
    :cond_15
    const-string/jumbo v20, "div"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_16

    const-string/jumbo v20, "body"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 545
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :cond_17
    const-string/jumbo v20, "pre"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 550
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->isPRE:Z

    goto/16 :goto_0

    .line 553
    :cond_18
    const-string/jumbo v20, "p"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 557
    :cond_19
    const-string/jumbo v20, "h1"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    const-string/jumbo v20, "h2"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    const-string/jumbo v20, "h3"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    const-string/jumbo v20, "h4"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    const-string/jumbo v20, "h5"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    const-string/jumbo v20, "h6"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 559
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    :cond_1b
    const-string/jumbo v20, "table"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 563
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 564
    const-string/jumbo v20, "tr"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 565
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    const-string/jumbo v21, "table"

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/html/simpleparser/IncTable;

    .line 567
    .local v16, table:Lcom/itextpdf/text/html/simpleparser/IncTable;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/html/simpleparser/IncTable;->buildTable()Lcom/itextpdf/text/pdf/PdfPTable;

    move-result-object v17

    .line 568
    .local v17, tb:Lcom/itextpdf/text/pdf/PdfPTable;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setSplitRows(Z)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->empty()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 573
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Z

    .line 574
    .local v15, state:[Z
    const/16 v20, 0x0

    aget-boolean v20, v15, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 575
    const/16 v20, 0x1

    aget-boolean v20, v15, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 576
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    goto/16 :goto_0

    .line 572
    .end local v15           #state:[Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/TextElementArray;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/itextpdf/text/TextElementArray;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_3

    .line 579
    .end local v16           #table:Lcom/itextpdf/text/html/simpleparser/IncTable;
    .end local v17           #tb:Lcom/itextpdf/text/pdf/PdfPTable;
    :cond_1e
    const-string/jumbo v20, "tr"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 580
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 581
    const-string/jumbo v20, "td"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 582
    :cond_1f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    const-string/jumbo v21, "tr"

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 584
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v2, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    const/16 v16, 0x0

    .line 587
    .restart local v16       #table:Lcom/itextpdf/text/html/simpleparser/IncTable;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/Element;

    .line 588
    .restart local v13       #obj:Lcom/itextpdf/text/Element;
    instance-of v0, v13, Lcom/itextpdf/text/html/simpleparser/IncCell;

    move/from16 v20, v0

    if-eqz v20, :cond_21

    .line 589
    move-object v0, v13

    check-cast v0, Lcom/itextpdf/text/html/simpleparser/IncCell;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/html/simpleparser/IncCell;->getCell()Lcom/itextpdf/text/pdf/PdfPCell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_21
    instance-of v0, v13, Lcom/itextpdf/text/html/simpleparser/IncTable;

    move/from16 v20, v0

    if-eqz v20, :cond_20

    .line 592
    move-object v0, v13

    check-cast v0, Lcom/itextpdf/text/html/simpleparser/IncTable;

    move-object/from16 v16, v0

    .line 596
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/html/simpleparser/IncTable;->addCols(Ljava/util/ArrayList;)V

    .line 597
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/html/simpleparser/IncTable;->endRow()V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    goto/16 :goto_0

    .line 602
    .end local v2           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfPCell;>;"
    .end local v13           #obj:Lcom/itextpdf/text/Element;
    .end local v16           #table:Lcom/itextpdf/text/html/simpleparser/IncTable;
    :cond_22
    const-string/jumbo v20, "td"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_23

    const-string/jumbo v20, "th"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 603
    :cond_23
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v20, v0

    const-string/jumbo v21, "td"

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 605
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getInterfaceProps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStyleSheet()Lcom/itextpdf/text/html/simpleparser/StyleSheet;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    return-object v0
.end method

.method public newPage()Z
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x1

    return v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method

.method public parse(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandlerComment;Ljava/io/Reader;Z)V

    .line 136
    return-void
.end method

.method public resetPageCount()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public setInterfaceProps(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, interfaceProps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, ff:Lcom/itextpdf/text/FontProvider;
    if-eqz p1, :cond_0

    .line 125
    const-string/jumbo v1, "font_factory"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ff:Lcom/itextpdf/text/FontProvider;
    check-cast v0, Lcom/itextpdf/text/FontProvider;

    .line 126
    .restart local v0       #ff:Lcom/itextpdf/text/FontProvider;
    :cond_0
    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->setFontImp(Lcom/itextpdf/text/FontProvider;)V

    .line 128
    :cond_1
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 1
    .parameter "marginMirroring"

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 1
    .parameter "marginMirroring"

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public setMargins(FFFF)Z
    .locals 1
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public setPageCount(I)V
    .locals 0
    .parameter "pageN"

    .prologue
    .line 701
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public setStyleSheet(Lcom/itextpdf/text/html/simpleparser/StyleSheet;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    .line 115
    return-void
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;->applyStyle(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 170
    iget-object v1, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 171
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 41
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tagsSupported:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->style:Lcom/itextpdf/text/html/simpleparser/StyleSheet;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/StyleSheet;->applyStyle(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 179
    sget-object v3, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->followTags:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 180
    .local v16, follow:Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 181
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v27, prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v16           #follow:Ljava/lang/String;
    .end local v27           #prop:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v15

    .line 437
    .local v15, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v15}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 186
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #follow:Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->insertStyle(Ljava/util/HashMap;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    .line 187
    const-string/jumbo v3, "a"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v3, :cond_3

    .line 190
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3}, Lcom/itextpdf/text/Paragraph;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 192
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3}, Lcom/itextpdf/text/Paragraph;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    goto :goto_0

    .line 196
    :cond_4
    const-string/jumbo v3, "br"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v3, :cond_5

    .line 198
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3}, Lcom/itextpdf/text/Paragraph;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 200
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    const-string/jumbo v8, "\n"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v6, v8, v0}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 204
    :cond_6
    const-string/jumbo v3, "hr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 209
    const/4 v10, 0x1

    .line 210
    .local v10, addLeadingBreak:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v3, :cond_7

    .line 211
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3}, Lcom/itextpdf/text/Paragraph;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 212
    const/4 v10, 0x0

    .line 214
    :cond_7
    if-eqz v10, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v3}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 216
    .local v25, numChunks:I
    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v3}, Lcom/itextpdf/text/Paragraph;->getChunks()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v6, v25, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 218
    :cond_8
    const/4 v10, 0x0

    .line 220
    .end local v25           #numChunks:I
    :cond_9
    const-string/jumbo v3, "align"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 221
    .local v12, align:Ljava/lang/String;
    const/4 v7, 0x1

    .line 222
    .local v7, hrAlign:I
    if-eqz v12, :cond_b

    .line 223
    const-string/jumbo v3, "left"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 224
    const/4 v7, 0x0

    .line 225
    :cond_a
    const-string/jumbo v3, "right"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 226
    const/4 v7, 0x2

    .line 228
    :cond_b
    const-string/jumbo v3, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 229
    .local v37, width:Ljava/lang/String;
    const/high16 v5, 0x3f80

    .line 230
    .local v5, hrWidth:F
    if-eqz v37, :cond_d

    .line 231
    const/high16 v3, 0x4140

    move-object/from16 v0, v37

    invoke-static {v0, v3}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v35

    .line 232
    .local v35, tmpWidth:F
    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-lez v3, :cond_c

    move/from16 v5, v35

    .line 233
    :cond_c
    const-string/jumbo v3, "%"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 234
    const/high16 v5, 0x42c8

    .line 236
    .end local v35           #tmpWidth:F
    :cond_d
    const-string/jumbo v3, "size"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 237
    .local v29, size:Ljava/lang/String;
    const/high16 v4, 0x3f80

    .line 238
    .local v4, hrSize:F
    if-eqz v29, :cond_e

    .line 239
    const/high16 v3, 0x4140

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v34

    .line 240
    .local v34, tmpSize:F
    const/4 v3, 0x0

    cmpl-float v3, v34, v3

    if-lez v3, :cond_e

    .line 241
    move/from16 v4, v34

    .line 243
    .end local v34           #tmpSize:F
    :cond_e
    if-eqz v10, :cond_f

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    sget-object v6, Lcom/itextpdf/text/Chunk;->NEWLINE:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 245
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    move-object/from16 v39, v0

    new-instance v3, Lcom/itextpdf/text/pdf/draw/LineSeparator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v8}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v8

    const/high16 v40, 0x4000

    div-float v8, v8, v40

    invoke-direct/range {v3 .. v8}, Lcom/itextpdf/text/pdf/draw/LineSeparator;-><init>(FFLcom/itextpdf/text/BaseColor;IF)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    sget-object v6, Lcom/itextpdf/text/Chunk;->NEWLINE:Lcom/itextpdf/text/Chunk;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 249
    .end local v4           #hrSize:F
    .end local v5           #hrWidth:F
    .end local v7           #hrAlign:I
    .end local v10           #addLeadingBreak:Z
    .end local v12           #align:Ljava/lang/String;
    .end local v29           #size:Ljava/lang/String;
    .end local v37           #width:Ljava/lang/String;
    :cond_10
    const-string/jumbo v3, "font"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "span"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 250
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 253
    :cond_12
    const-string/jumbo v3, "img"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 254
    const-string/jumbo v3, "src"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 255
    .local v31, src:Ljava/lang/String;
    if-eqz v31, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 258
    const/16 v21, 0x0

    .line 259
    .local v21, img:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    if-eqz v3, :cond_14

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    const-string/jumbo v6, "img_provider"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/html/simpleparser/ImageProvider;

    .line 262
    .local v22, ip:Lcom/itextpdf/text/html/simpleparser/ImageProvider;
    if-eqz v22, :cond_13

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/itextpdf/text/html/simpleparser/ImageProvider;->getImage(Ljava/lang/String;Ljava/util/HashMap;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;)Lcom/itextpdf/text/Image;

    move-result-object v21

    .line 264
    :cond_13
    if-nez v21, :cond_14

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    const-string/jumbo v6, "img_static"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    .line 267
    .local v20, images:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/Image;>;"
    if-eqz v20, :cond_1f

    .line 268
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/itextpdf/text/Image;

    .line 269
    .local v33, tim:Lcom/itextpdf/text/Image;
    if-eqz v33, :cond_14

    .line 270
    invoke-static/range {v33 .. v33}, Lcom/itextpdf/text/Image;->getInstance(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/Image;

    move-result-object v21

    .line 283
    .end local v20           #images:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/Image;>;"
    .end local v22           #ip:Lcom/itextpdf/text/html/simpleparser/ImageProvider;
    .end local v33           #tim:Lcom/itextpdf/text/Image;
    :cond_14
    :goto_1
    if-nez v21, :cond_17

    .line 284
    const-string/jumbo v3, "http"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "image_path"

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 286
    .local v26, path:Ljava/lang/String;
    if-nez v26, :cond_15

    .line 287
    const-string/jumbo v26, ""

    .line 288
    :cond_15
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    .line 290
    .end local v26           #path:Ljava/lang/String;
    :cond_16
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v21

    .line 292
    :cond_17
    const-string/jumbo v3, "align"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 293
    .restart local v12       #align:Ljava/lang/String;
    const-string/jumbo v3, "width"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 294
    .restart local v37       #width:Ljava/lang/String;
    const-string/jumbo v3, "height"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 295
    .local v17, height:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "before"

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 296
    .local v14, before:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "after"

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 297
    .local v11, after:Ljava/lang/String;
    if-eqz v14, :cond_18

    .line 298
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Image;->setSpacingBefore(F)V

    .line 299
    :cond_18
    if-eqz v11, :cond_19

    .line 300
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Image;->setSpacingAfter(F)V

    .line 301
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "size"

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x4140

    invoke-static {v3, v6}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v9

    .line 304
    .local v9, actualFontSize:F
    const/4 v3, 0x0

    cmpg-float v3, v9, v3

    if-gtz v3, :cond_1a

    .line 305
    const/high16 v9, 0x4140

    .line 306
    :cond_1a
    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v38

    .line 307
    .local v38, widthInPoints:F
    move-object/from16 v0, v17

    invoke-static {v0, v9}, Lcom/itextpdf/text/html/Markup;->parseLength(Ljava/lang/String;F)F

    move-result v18

    .line 309
    .local v18, heightInPoints:F
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_20

    const/4 v3, 0x0

    cmpl-float v3, v18, v3

    if-lez v3, :cond_20

    .line 310
    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    .line 320
    :cond_1b
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/Image;->setWidthPercentage(F)V

    .line 321
    if-eqz v12, :cond_23

    .line 322
    const-string/jumbo v3, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 323
    const/16 v28, 0x1

    .line 324
    .local v28, ralign:I
    const-string/jumbo v3, "left"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 325
    const/16 v28, 0x0

    .line 328
    :cond_1c
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Image;->setAlignment(I)V

    .line 329
    const/16 v19, 0x0

    .line 330
    .local v19, i:Lcom/itextpdf/text/html/simpleparser/Img;
    const/16 v30, 0x0

    .line 331
    .local v30, skip:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    if-eqz v3, :cond_1d

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    const-string/jumbo v6, "img_interface"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #i:Lcom/itextpdf/text/html/simpleparser/Img;
    check-cast v19, Lcom/itextpdf/text/html/simpleparser/Img;

    .line 333
    .restart local v19       #i:Lcom/itextpdf/text/html/simpleparser/Img;
    if-eqz v19, :cond_1d

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/itextpdf/text/html/simpleparser/Img;->process(Lcom/itextpdf/text/Image;Ljava/util/HashMap;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;Lcom/itextpdf/text/DocListener;)Z

    move-result v30

    .line 336
    :cond_1d
    if-nez v30, :cond_1e

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->document:Lcom/itextpdf/text/DocListener;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Lcom/itextpdf/text/DocListener;->add(Lcom/itextpdf/text/Element;)Z

    .line 338
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v9           #actualFontSize:F
    .end local v11           #after:Ljava/lang/String;
    .end local v12           #align:Ljava/lang/String;
    .end local v14           #before:Ljava/lang/String;
    .end local v17           #height:Ljava/lang/String;
    .end local v18           #heightInPoints:F
    .end local v19           #i:Lcom/itextpdf/text/html/simpleparser/Img;
    .end local v28           #ralign:I
    .end local v30           #skip:Z
    .end local v37           #width:Ljava/lang/String;
    .end local v38           #widthInPoints:F
    .restart local v20       #images:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/Image;>;"
    .restart local v22       #ip:Lcom/itextpdf/text/html/simpleparser/ImageProvider;
    :cond_1f
    const-string/jumbo v3, "http"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->interfaceProps:Ljava/util/HashMap;

    const-string/jumbo v6, "img_baseurl"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 275
    .local v13, baseurl:Ljava/lang/String;
    if-eqz v13, :cond_14

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 277
    invoke-static/range {v31 .. v31}, Lcom/itextpdf/text/Image;->getInstance(Ljava/lang/String;)Lcom/itextpdf/text/Image;

    move-result-object v21

    goto/16 :goto_1

    .line 311
    .end local v13           #baseurl:Ljava/lang/String;
    .end local v20           #images:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/Image;>;"
    .end local v22           #ip:Lcom/itextpdf/text/html/simpleparser/ImageProvider;
    .restart local v9       #actualFontSize:F
    .restart local v11       #after:Ljava/lang/String;
    .restart local v12       #align:Ljava/lang/String;
    .restart local v14       #before:Ljava/lang/String;
    .restart local v17       #height:Ljava/lang/String;
    .restart local v18       #heightInPoints:F
    .restart local v37       #width:Ljava/lang/String;
    .restart local v38       #widthInPoints:F
    :cond_20
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_21

    .line 312
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v3

    mul-float v3, v3, v38

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    div-float v18, v3, v6

    .line 314
    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    goto/16 :goto_2

    .line 315
    :cond_21
    const/4 v3, 0x0

    cmpl-float v3, v18, v3

    if-lez v3, :cond_1b

    .line 316
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v3

    mul-float v3, v3, v18

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v6

    div-float v38, v3, v6

    .line 318
    move-object/from16 v0, v21

    move/from16 v1, v38

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    goto/16 :goto_2

    .line 326
    .restart local v28       #ralign:I
    :cond_22
    const-string/jumbo v3, "right"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 327
    const/16 v28, 0x2

    goto/16 :goto_3

    .line 340
    .end local v28           #ralign:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->removeChain(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v3, :cond_24

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-static {v3}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 345
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    new-instance v6, Lcom/itextpdf/text/Chunk;

    const/4 v8, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-direct {v6, v0, v8, v1}, Lcom/itextpdf/text/Chunk;-><init>(Lcom/itextpdf/text/Image;FF)V

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto/16 :goto_0

    .line 349
    .end local v9           #actualFontSize:F
    .end local v11           #after:Ljava/lang/String;
    .end local v12           #align:Ljava/lang/String;
    .end local v14           #before:Ljava/lang/String;
    .end local v17           #height:Ljava/lang/String;
    .end local v18           #heightInPoints:F
    .end local v21           #img:Lcom/itextpdf/text/Image;
    .end local v31           #src:Ljava/lang/String;
    .end local v37           #width:Ljava/lang/String;
    .end local v38           #widthInPoints:F
    :cond_25
    const-string/jumbo v3, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v3, "h1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "h2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "h3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "h4"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "h5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "h6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 352
    :cond_26
    const-string/jumbo v3, "size"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 353
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v36, v3, 0x7

    .line 354
    .local v36, v:I
    const-string/jumbo v3, "size"

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v36           #v:I
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 359
    :cond_28
    const-string/jumbo v3, "ul"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 360
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    if-eqz v3, :cond_29

    .line 361
    const-string/jumbo v3, "li"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 362
    :cond_29
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 364
    new-instance v24, Lcom/itextpdf/text/List;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/itextpdf/text/List;-><init>(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    .local v24, list:Lcom/itextpdf/text/List;
    :try_start_2
    new-instance v3, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v8, "indent"

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    :goto_4
    :try_start_3
    const-string/jumbo v3, "\u2022"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/List;->setListSymbol(Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 367
    :catch_1
    move-exception v15

    .line 368
    .restart local v15       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/List;->setAutoindent(Z)V

    goto :goto_4

    .line 374
    .end local v15           #e:Ljava/lang/Exception;
    .end local v24           #list:Lcom/itextpdf/text/List;
    :cond_2a
    const-string/jumbo v3, "ol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 375
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    if-eqz v3, :cond_2b

    .line 376
    const-string/jumbo v3, "li"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 377
    :cond_2b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 379
    new-instance v24, Lcom/itextpdf/text/List;

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Lcom/itextpdf/text/List;-><init>(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 381
    .restart local v24       #list:Lcom/itextpdf/text/List;
    :try_start_4
    new-instance v3, Ljava/lang/Float;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v8, "indent"

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 385
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 382
    :catch_2
    move-exception v15

    .line 383
    .restart local v15       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/List;->setAutoindent(Z)V

    goto :goto_5

    .line 388
    .end local v15           #e:Ljava/lang/Exception;
    .end local v24           #list:Lcom/itextpdf/text/List;
    :cond_2c
    const-string/jumbo v3, "li"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 389
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    if-eqz v3, :cond_2d

    .line 390
    const-string/jumbo v3, "li"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 391
    :cond_2d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 392
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingLI:Z

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-static {v3}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createListItem(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/ListItem;

    move-result-object v23

    .line 395
    .local v23, item:Lcom/itextpdf/text/ListItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 398
    .end local v23           #item:Lcom/itextpdf/text/ListItem;
    :cond_2e
    const-string/jumbo v3, "div"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string/jumbo v3, "body"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string/jumbo v3, "p"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 399
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 402
    :cond_30
    const-string/jumbo v3, "pre"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 403
    const-string/jumbo v3, "face"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 404
    const-string/jumbo v3, "face"

    const-string/jumbo v6, "Courier"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 407
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->isPRE:Z

    goto/16 :goto_0

    .line 410
    :cond_32
    const-string/jumbo v3, "tr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 411
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    if-eqz v3, :cond_33

    .line 412
    const-string/jumbo v3, "tr"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 413
    :cond_33
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 414
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "tr"

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 418
    :cond_34
    const-string/jumbo v3, "td"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "th"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 419
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    if-eqz v3, :cond_36

    .line 420
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->endElement(Ljava/lang/String;)V

    .line 421
    :cond_36
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    .line 422
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "td"

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    new-instance v6, Lcom/itextpdf/text/html/simpleparser/IncCell;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v8}, Lcom/itextpdf/text/html/simpleparser/IncCell;-><init>(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)V

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 427
    :cond_37
    const-string/jumbo v3, "table"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    const-string/jumbo v6, "table"

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lcom/itextpdf/text/html/simpleparser/ChainedProperties;->addToChain(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 429
    new-instance v32, Lcom/itextpdf/text/html/simpleparser/IncTable;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/itextpdf/text/html/simpleparser/IncTable;-><init>(Ljava/util/HashMap;)V

    .line 430
    .local v32, table:Lcom/itextpdf/text/html/simpleparser/IncTable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->stack:Ljava/util/Stack;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->tableState:Ljava/util/Stack;

    const/4 v6, 0x2

    new-array v6, v6, [Z

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    move/from16 v39, v0

    aput-boolean v39, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    move/from16 v39, v0

    aput-boolean v39, v6, v8

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTD:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->pendingTR:Z

    .line 433
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 10
    .parameter "str"

    .prologue
    const/16 v8, 0x20

    .line 614
    iget-boolean v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->skipText:Z

    if-eqz v7, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    move-object v3, p1

    .line 617
    .local v3, content:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->isPRE:Z

    if-eqz v7, :cond_3

    .line 618
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v7, :cond_2

    .line 619
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-static {v7}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 621
    :cond_2
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    iget-object v8, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;

    move-result-object v2

    .line 622
    .local v2, chunk:Lcom/itextpdf/text/Chunk;
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 625
    .end local v2           #chunk:Lcom/itextpdf/text/Chunk;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_0

    .line 629
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 632
    .local v5, len:I
    const/4 v6, 0x0

    .line 633
    .local v6, newline:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 634
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, character:C
    sparse-switch v1, :sswitch_data_0

    .line 651
    const/4 v6, 0x0

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 633
    :cond_5
    :goto_2
    :sswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 636
    :sswitch_1
    if-nez v6, :cond_5

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 641
    :sswitch_2
    if-lez v4, :cond_5

    .line 642
    const/4 v6, 0x1

    .line 643
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 655
    .end local v1           #character:C
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    if-nez v7, :cond_7

    .line 656
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-static {v7}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createParagraph(Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Paragraph;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    .line 658
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->factoryProperties:Lcom/itextpdf/text/html/simpleparser/FactoryProperties;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->cprops:Lcom/itextpdf/text/html/simpleparser/ChainedProperties;

    invoke-virtual {v7, v8, v9}, Lcom/itextpdf/text/html/simpleparser/FactoryProperties;->createChunk(Ljava/lang/String;Lcom/itextpdf/text/html/simpleparser/ChainedProperties;)Lcom/itextpdf/text/Chunk;

    move-result-object v2

    .line 659
    .restart local v2       #chunk:Lcom/itextpdf/text/Chunk;
    iget-object v7, p0, Lcom/itextpdf/text/html/simpleparser/HTMLWorker;->currentParagraph:Lcom/itextpdf/text/Paragraph;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
