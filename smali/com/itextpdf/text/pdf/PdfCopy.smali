.class public Lcom/itextpdf/text/pdf/PdfCopy;
.super Lcom/itextpdf/text/pdf/PdfWriter;
.source "PdfCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfCopy$StampContent;,
        Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;,
        Lcom/itextpdf/text/pdf/PdfCopy$RefKey;,
        Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    }
.end annotation


# instance fields
.field protected acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected currentObjectNum:I

.field protected fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

.field protected fieldTemplates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected indirectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfCopy$RefKey;",
            "Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;",
            ">;>;"
        }
    .end annotation
.end field

.field protected indirects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfCopy$RefKey;",
            "Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;",
            ">;"
        }
    .end annotation
.end field

.field protected namePtr:[I

.field protected reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private rotateContents:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "document"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    invoke-direct {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 82
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentObjectNum:I

    .line 85
    new-array v0, v1, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->namePtr:[I

    .line 87
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->rotateContents:Z

    .line 132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/Document;->addDocListener(Lcom/itextpdf/text/DocListener;)V

    .line 133
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirectMap:Ljava/util/HashMap;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/PdfCopy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->rotateContents:Z

    return v0
.end method

.method private addFieldResources(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 9
    .parameter "catalog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v6, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 438
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v6, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 439
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 440
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v8, "/Helv 0 Tf 0 g "

    invoke-direct {v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 441
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 443
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 444
    .local v2, dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 445
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 446
    .local v5, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v2, v6}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_1

    .line 449
    .end local v5           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 450
    .local v3, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v3, :cond_3

    .line 451
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v3           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 452
    .restart local v3       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 454
    :cond_3
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 455
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 456
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 457
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 458
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 459
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 460
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 462
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_4
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 463
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 464
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZAPFDINGBATS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 465
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 466
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 467
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/pdf/PdfOutline;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1
    .parameter "outline"

    .prologue
    .line 498
    const/4 v0, 0x0

    return-object v0
.end method

.method add(Lcom/itextpdf/text/pdf/PdfPage;Lcom/itextpdf/text/pdf/PdfContents;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1
    .parameter "page"
    .parameter "contents"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 0
    .parameter "annot"

    .prologue
    .line 500
    return-void
.end method

.method public addPage(Lcom/itextpdf/text/Rectangle;I)V
    .locals 6
    .parameter "rect"
    .parameter "rotation"

    .prologue
    .line 373
    new-instance v0, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    .line 374
    .local v0, mediabox:Lcom/itextpdf/text/pdf/PdfRectangle;
    new-instance v2, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    .line 375
    .local v2, resources:Lcom/itextpdf/text/pdf/PageResources;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfPage;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfPage;-><init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 376
    .local v1, page:Lcom/itextpdf/text/pdf/PdfPage;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TABS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopy;->getTabs()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 377
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/PdfPages;->addPage(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 378
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPageNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPageNumber:I

    .line 379
    return-void
.end method

.method public addPage(Lcom/itextpdf/text/pdf/PdfImportedPage;)V
    .locals 9
    .parameter "iPage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->setFromIPage(Lcom/itextpdf/text/pdf/PdfImportedPage;)I

    move-result v4

    .line 345
    .local v4, pageNum:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 346
    .local v6, thePage:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v3

    .line 347
    .local v3, origRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7, v4}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 348
    new-instance v1, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 350
    .local v1, key:Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .line 351
    .local v0, iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getCopied()Z

    move-result v7

    if-nez v7, :cond_0

    .line 352
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->setCopied()V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfCopy;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    .line 356
    .local v5, pageRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .end local v0           #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 358
    .restart local v0       #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->setCopied()V

    .line 361
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfCopy;->copyDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 362
    .local v2, newPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v7, v2}, Lcom/itextpdf/text/pdf/PdfPages;->addPage(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 363
    iget v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPageNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPageNumber:I

    .line 364
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->open:Z

    if-eqz v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 485
    .local v0, ri:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDocument;->close()V

    .line 486
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->close()V

    .line 487
    if-eqz v0, :cond_0

    .line 489
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    .line 490
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0           #ri:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    :cond_0
    :goto_0
    return-void

    .line 492
    .restart local v0       #ri:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public copyAcroForm(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 9
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->setFromReader(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 390
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 391
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v1, 0x0

    .line 392
    .local v1, hisRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 393
    .local v5, o:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    move-object v1, v5

    .line 394
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 395
    :cond_0
    if-nez v1, :cond_2

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 398
    .local v3, key:Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .line 399
    .local v2, iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    if-eqz v2, :cond_3

    .line 400
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    .local v4, myRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 407
    :goto_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getCopied()Z

    move-result v7

    if-nez v7, :cond_1

    .line 408
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->setCopied()V

    .line 409
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfCopy;->copyDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 410
    .local v6, theForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, v6, v4}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0

    .line 403
    .end local v4           #myRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v6           #theForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    .restart local v4       #myRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 404
    new-instance v2, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .end local v2           #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 405
    .restart local v2       #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected copyArray(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 263
    .local v1, out:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfObject;

    .line 265
    .local v2, value:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 267
    .end local v2           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    return-object v1
.end method

.method protected copyDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 224
    .local v3, out:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 226
    .local v4, type:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v2, v0

    .line 227
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 228
    .local v2, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 230
    .local v5, value:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_1

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 237
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v5           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    return-object v3
.end method

.method protected copyIndirect(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v1, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 192
    .local v1, key:Lcom/itextpdf/text/pdf/PdfCopy$RefKey;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .line 193
    .local v0, iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    .line 195
    .local v3, theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->getCopied()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v3

    .line 214
    .end local v3           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .local v4, theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :goto_0
    return-object v4

    .line 200
    .end local v4           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    .line 201
    .restart local v3       #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    .end local v0           #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 202
    .restart local v0       #iRef:Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 205
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    .line 206
    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 207
    .local v5, type:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v5, :cond_2

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v3

    .line 208
    .end local v3           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v4       #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    goto :goto_0

    .line 211
    .end local v4           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v5           #type:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v3       #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;->setCopied()V

    .line 212
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 213
    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfCopy;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-object v4, v3

    .line 214
    .end local v3           #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v4       #theRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    goto :goto_0
.end method

.method protected copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    sget-object p1, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    .line 303
    .end local p1
    :goto_0
    :pswitch_0
    return-object p1

    .line 276
    .restart local p1
    :cond_0
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    packed-switch v1, :pswitch_data_0

    .line 295
    :pswitch_1
    iget v1, p1, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    if-gez v1, :cond_3

    .line 296
    check-cast p1, Lcom/itextpdf/text/pdf/PdfLiteral;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLiteral;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, lit:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_1
    new-instance p1, Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-direct {p1, v0}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0           #lit:Ljava/lang/String;
    .restart local p1
    :pswitch_2
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->copyDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object p1

    goto :goto_0

    .line 281
    .restart local p1
    :pswitch_3
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->copyIndirect(Lcom/itextpdf/text/pdf/PRIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object p1

    goto :goto_0

    .line 283
    .restart local p1
    :pswitch_4
    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->copyArray(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object p1

    goto :goto_0

    .line 292
    .restart local p1
    :pswitch_5
    check-cast p1, Lcom/itextpdf/text/pdf/PRStream;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfCopy;->copyStream(Lcom/itextpdf/text/pdf/PRStream;)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object p1

    goto :goto_0

    .line 300
    .restart local v0       #lit:Ljava/lang/String;
    :cond_2
    new-instance p1, Lcom/itextpdf/text/pdf/PdfLiteral;

    invoke-direct {p1, v0}, Lcom/itextpdf/text/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v0           #lit:Ljava/lang/String;
    .restart local p1
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CANNOT COPY type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/itextpdf/text/pdf/PdfObject;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    const/4 p1, 0x0

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected copyStream(Lcom/itextpdf/text/pdf/PRStream;)Lcom/itextpdf/text/pdf/PdfStream;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/pdf/BadPdfFormatException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v3, Lcom/itextpdf/text/pdf/PRStream;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5}, Lcom/itextpdf/text/pdf/PRStream;-><init>(Lcom/itextpdf/text/pdf/PRStream;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 246
    .local v3, out:Lcom/itextpdf/text/pdf/PRStream;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PRStream;->getKeys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v2, v0

    .line 247
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 248
    .local v2, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PRStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 249
    .local v4, value:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfCopy;->copyObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/itextpdf/text/pdf/PRStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 252
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    return-object v3
.end method

.method public createPageStamp(Lcom/itextpdf/text/pdf/PdfImportedPage;)Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;
    .locals 4
    .parameter "iPage"

    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPageNumber()I

    move-result v1

    .line 546
    .local v1, pageNum:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    .line 547
    .local v2, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 548
    .local v0, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;

    invoke-direct {v3, v2, v0, p0}, Lcom/itextpdf/text/pdf/PdfCopy$PageStamp;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfCopy;)V

    return-object v3
.end method

.method public freeReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirectMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    .line 511
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 519
    :cond_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 4
    .parameter "rootObj"

    .prologue
    .line 421
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;

    move-result-object v1

    .line 422
    .local v1, theCat:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy;->fieldArray:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 427
    :cond_0
    :goto_0
    return-object v1

    .line 426
    :cond_1
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/PdfCopy;->addFieldResources(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v1           #theCat:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 1
    .parameter "reader"
    .parameter "pageNumber"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-virtual {p1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 176
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getImportedPage(I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v0

    return-object v0

    .line 174
    :cond_1
    invoke-virtual {p1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isRotateContents()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->rotateContents:Z

    return v0
.end method

.method protected setFromIPage(Lcom/itextpdf/text/pdf/PdfImportedPage;)I
    .locals 3
    .parameter "iPage"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPageNumber()I

    move-result v1

    .line 312
    .local v1, pageNum:I
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfCopy;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 313
    .local v0, inst:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 314
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfCopy;->setFromReader(Lcom/itextpdf/text/pdf/PdfReader;)V

    .line 315
    return v1
.end method

.method protected setFromReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 7
    .parameter "reader"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 323
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirectMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    .line 324
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 325
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    .line 326
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirectMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 328
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v2, 0x0

    .line 329
    .local v2, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 330
    .local v1, o:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 336
    .end local v0           #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #o:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v1       #o:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v2       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    move-object v2, v1

    .line 332
    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 333
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfCopy;->indirects:Ljava/util/HashMap;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfCopy$RefKey;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    new-instance v5, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfCopy;->acroForm:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfCopy$IndirectReferences;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setRotateContents(Z)V
    .locals 0
    .parameter "rotateContents"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfCopy;->rotateContents:Z

    .line 151
    return-void
.end method
