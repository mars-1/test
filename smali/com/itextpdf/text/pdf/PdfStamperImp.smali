.class Lcom/itextpdf/text/pdf/PdfStamperImp;
.super Lcom/itextpdf/text/pdf/PdfWriter;
.source "PdfStamperImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    }
.end annotation


# instance fields
.field protected acroFields:Lcom/itextpdf/text/pdf/AcroFields;

.field protected append:Z

.field closed:Z

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

.field protected fieldsAdded:Z

.field file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected flat:Z

.field protected flatFreeText:Z

.field protected initialXrefSize:I

.field protected marked:Lcom/itextpdf/text/pdf/IntHashtable;

.field myXref:Lcom/itextpdf/text/pdf/IntHashtable;

.field protected namePtr:[I

.field protected openAction:Lcom/itextpdf/text/pdf/PdfAction;

.field pagesToContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;",
            ">;"
        }
    .end annotation
.end field

.field protected partialFlattening:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field readers2file:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;",
            ">;"
        }
    .end annotation
.end field

.field readers2intrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ">;"
        }
    .end annotation
.end field

.field private rotateContents:Z

.field protected sigFlags:I

.field protected useVp:Z

.field protected viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;CZ)V
    .locals 6
    .parameter "reader"
    .parameter "os"
    .parameter "pdfVersion"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    invoke-direct {p0, v2, p2}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    .line 74
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 76
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    .line 77
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    .line 79
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    .line 81
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    .line 82
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    .line 83
    new-array v2, v5, [I

    aput v4, v2, v4

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->namePtr:[I

    .line 84
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    .line 85
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 86
    new-instance v2, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 87
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    .line 88
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    .line 89
    iput v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    .line 106
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isOpenedWithFullPermissions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-instance v2, Lcom/itextpdf/text/exceptions/BadPasswordException;

    const-string/jumbo v3, "pdfreader.not.opened.with.owner.password"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isTampered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "the.original.document.was.reused.read.it.again.from.file"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_1
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfReader;->setTampered(Z)V

    .line 111
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 113
    iput-boolean p4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    .line 114
    if-eqz p4, :cond_7

    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isRebuilt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    new-instance v2, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v3, "append.mode.requires.a.document.without.errors.even.if.recovery.was.possible"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    new-instance v2, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getDecrypt()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>(Lcom/itextpdf/text/pdf/PdfEncryption;)V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setAppendmode(Z)V

    .line 120
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 121
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 123
    .local v0, buf:[B
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([B)I

    move-result v1

    .local v1, n:I
    if-lez v1, :cond_4

    .line 124
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v2, v0, v4, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([BII)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 126
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getLastXref()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:I

    .line 127
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfReader;->setAppendable(Z)V

    .line 135
    .end local v0           #buf:[B
    .end local v1           #n:I
    :goto_1
    invoke-super {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->open()V

    .line 136
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v2, p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 137
    if-eqz p4, :cond_6

    .line 138
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->setRefnum(I)V

    .line 139
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 140
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isNewXrefType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    .line 142
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->isHybridXref()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    .line 145
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    .line 146
    return-void

    .line 130
    :cond_7
    if-nez p3, :cond_8

    .line 131
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfVersion()C

    move-result v2

    invoke-super {p0, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    goto :goto_1

    .line 133
    :cond_8
    invoke-super {p0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    goto :goto_1
.end method

.method private addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V
    .locals 9
    .parameter "parent"
    .parameter "arr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            "Lcom/itextpdf/text/pdf/PdfArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, ocgmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    const/4 v8, 0x1

    .line 1615
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1616
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1617
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1618
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1619
    .local v3, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1620
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1621
    if-eqz p1, :cond_0

    .line 1622
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfLayer;->addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V

    .line 1624
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    add-int/lit8 v7, v1, 0x1

    if-le v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1625
    add-int/lit8 v1, v1, 0x1

    .line 1626
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, v3, v6, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    .line 1615
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1629
    :cond_2
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v4

    .line 1630
    check-cast v5, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1631
    .local v5, sub:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1651
    .end local v4           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #sub:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    return-void

    .line 1632
    .restart local v4       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #sub:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 1633
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1634
    new-instance v3, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 1635
    .restart local v3       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1636
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1637
    if-eqz p1, :cond_5

    .line 1638
    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfLayer;->addChild(Lcom/itextpdf/text/pdf/PdfLayer;)V

    .line 1640
    :cond_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1641
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfObject;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_2

    .line 1644
    :cond_6
    invoke-direct {p0, v3, v0, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    goto :goto_1

    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_7
    move-object v6, v4

    .line 1647
    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {p0, p1, v6, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 9
    .parameter "reader"
    .parameter "obj"
    .parameter "hits"

    .prologue
    .line 534
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 547
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 548
    .local v0, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 549
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 548
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #k:I
    :pswitch_2
    move-object v4, p1

    .line 538
    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 539
    .local v4, iref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v7

    if-ne p0, v7, :cond_0

    .line 541
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 543
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 544
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_0

    .end local v4           #iref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :pswitch_3
    move-object v1, p1

    .line 554
    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 555
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v6, v2

    .line 556
    check-cast v6, Lcom/itextpdf/text/pdf/PdfName;

    .line 557
    .local v6, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_2

    .line 536
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private flatFreeTextFields()V
    .locals 23

    .prologue
    .line 980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 981
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "freetext.flattening.is.not.supported.in.append.mode"

    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 983
    :cond_0
    const/16 v18, 0x1

    .local v18, page:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_d

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 986
    .local v19, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 987
    .local v5, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v5, :cond_2

    .line 983
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 989
    :cond_2
    const/4 v13, 0x0

    .local v13, idx:I
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_a

    .line 991
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 992
    .local v4, annoto:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v20

    if-nez v20, :cond_4

    .line 989
    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 995
    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 996
    .local v2, annDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfName;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FREETEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 998
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v11

    .line 999
    .local v11, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 1001
    .local v12, flags:I
    :goto_4
    and-int/lit8 v20, v12, 0x4

    if-eqz v20, :cond_3

    and-int/lit8 v20, v12, 0x2

    if-nez v20, :cond_3

    .line 1003
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 1004
    .local v16, obj1:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_3

    .line 1006
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v7, v20

    .line 1008
    .end local v16           #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    .local v7, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_5
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 1009
    .local v15, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v6, 0x0

    .line 1010
    .local v6, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-static {v15}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 1012
    .local v17, objReal:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v20

    if-nez v20, :cond_8

    .line 1013
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v6, v15}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1039
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_5
    :goto_6
    if-eqz v6, :cond_3

    .line 1041
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v9

    .line 1042
    .local v9, box:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v10

    .line 1043
    .local v10, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    const-string/jumbo v20, "Q "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v20

    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v6, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 1045
    const-string/jumbo v20, "q "

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 999
    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v7           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #box:Lcom/itextpdf/text/Rectangle;
    .end local v10           #cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    .end local v12           #flags:I
    .end local v17           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 1006
    .restart local v12       #flags:I
    .restart local v16       #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    check-cast v16, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v7, v16

    goto :goto_5

    .line 1014
    .end local v16           #obj1:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v7       #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v17       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfStream;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v20, v17

    .line 1016
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v22}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1017
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-direct {v6, v15}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    goto :goto_6

    .line 1021
    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1023
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v8

    .line 1024
    .local v8, as_p:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v8, :cond_5

    move-object/from16 v20, v17

    .line 1026
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1027
    .local v14, iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v14, :cond_5

    .line 1029
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-direct {v6, v14}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1030
    .restart local v6       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->isIndirect()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1032
    invoke-static {v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    move-object/from16 v20, v17

    .line 1033
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v22, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v22}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_6

    .line 1049
    .end local v2           #annDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v6           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v7           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #as_p:Lcom/itextpdf/text/pdf/PdfName;
    .end local v11           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v12           #flags:I
    .end local v14           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v17           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    .line 1051
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1052
    .local v3, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_b

    .line 1054
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->FREETEXT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1056
    invoke-virtual {v5, v13}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1057
    add-int/lit8 v13, v13, -0x1

    .line 1049
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1061
    .end local v3           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_c
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1063
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1064
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto/16 :goto_1

    .line 1067
    .end local v5           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v13           #idx:I
    .end local v19           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_d
    return-void
.end method

.method private static moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V
    .locals 2
    .parameter "dic2"
    .parameter "r"
    .parameter "pageImported"
    .parameter "key"
    .parameter "name"

    .prologue
    .line 673
    invoke-virtual {p1, p2, p4}, Lcom/itextpdf/text/pdf/PdfReader;->getBoxSize(ILjava/lang/String;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 674
    .local v0, m:Lcom/itextpdf/text/Rectangle;
    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 678
    :goto_0
    return-void

    .line 677
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, p3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    .locals 3
    .parameter "outline"

    .prologue
    .line 1254
    :goto_0
    if-eqz p1, :cond_1

    .line 1255
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1256
    .local v1, outlineR:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1257
    .local v0, first:Lcom/itextpdf/text/pdf/PRIndirectReference;
    if-eqz v0, :cond_0

    .line 1258
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 1260
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1261
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1262
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1263
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1264
    .restart local p1
    goto :goto_0

    .line 1265
    .end local v0           #first:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v1           #outlineR:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 2
    .parameter "annot"

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported.in.this.context.use.pdfstamper.addannotation"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V
    .locals 1
    .parameter "annot"
    .parameter "page"

    .prologue
    .line 1249
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setPage(I)V

    .line 1250
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1251
    return-void
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 19
    .parameter "annot"
    .parameter "pageN"

    .prologue
    .line 1168
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v2, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1170
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    .line 1171
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 1172
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v5, v0

    .line 1173
    .local v5, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 1245
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_0
    return-void

    .line 1175
    .restart local v5       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    .line 1179
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :goto_0
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 1180
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-object/from16 p1, v0

    .line 1181
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getPlaceInPage()I

    move-result v12

    if-lez v12, :cond_2

    .line 1182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getPlaceInPage()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object p2

    .line 1183
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getTemplates()Ljava/util/HashSet;

    move-result-object v11

    .line 1186
    .local v11, templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    if-eqz v11, :cond_3

    .line 1187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1189
    .end local v11           #templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    :cond_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object v5, v0

    .line 1190
    .restart local v5       #field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v12

    if-nez v12, :cond_4

    .line 1191
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1193
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isAnnotation()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1194
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 1195
    .local v8, pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v3, 0x0

    .line 1196
    .local v3, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1197
    :cond_5
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1198
    .restart local v3       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1203
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1204
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1205
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1206
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 1207
    .local v9, rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_6

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_7

    .line 1208
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v10

    .line 1209
    .local v10, rotation:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v7

    .line 1210
    .local v7, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v10, :sswitch_data_0

    .line 1236
    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #pageSize:Lcom/itextpdf/text/Rectangle;
    .end local v8           #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v9           #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .end local v10           #rotation:I
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1237
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setUsed()V

    .line 1238
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1179
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1178
    .end local v6           #k:I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1242
    .end local v2           #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    :catch_0
    move-exception v4

    .line 1243
    .local v4, e:Ljava/io/IOException;
    new-instance v12, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v12, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 1202
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    .restart local v3       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v6       #k:I
    .restart local v8       #pdfobj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    :try_start_1
    move-object v0, v8

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v3, v0

    goto/16 :goto_2

    .line 1212
    .restart local v7       #pageSize:Lcom/itextpdf/text/Rectangle;
    .restart local v9       #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    .restart local v10       #rotation:I
    :sswitch_0
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v17

    sub-float v16, v16, v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v17

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 1219
    :sswitch_1
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v17

    sub-float v16, v16, v17

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 1226
    :sswitch_2
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v13, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v14

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v16

    invoke-virtual {v7}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v17

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v18

    sub-float v17, v17, v18

    invoke-direct/range {v13 .. v17}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1210
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public addComments(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 22
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 627
    :cond_0
    return-void

    .line 570
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/FdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 571
    .local v8, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->FDF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 572
    if-eqz v8, :cond_0

    .line 574
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 575
    .local v5, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    if-eqz v20, :cond_0

    .line 577
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->registerReader(Lcom/itextpdf/text/pdf/PdfReader;Z)V

    .line 578
    new-instance v11, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 579
    .local v11, hits:Lcom/itextpdf/text/pdf/IntHashtable;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 580
    .local v13, irt:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v3, an:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfObject;>;"
    const/4 v14, 0x0

    .local v14, k:I
    :goto_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_4

    .line 582
    invoke-virtual {v5, v14}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 583
    .local v17, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 584
    .local v4, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 585
    .local v18, page:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 581
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 587
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Lcom/itextpdf/text/pdf/PdfStamperImp;->findAllObjects(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    .line 588
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 590
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->NM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    .line 591
    .local v16, nm:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 592
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    .end local v4           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #nm:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v18           #page:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_4
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v7

    .line 596
    .local v7, arhits:[I
    const/4 v14, 0x0

    :goto_2
    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 597
    aget v15, v7, v14

    .line 598
    .local v15, n:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/FdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 599
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v20, v17

    .line 600
    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IRT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    .line 601
    .local v19, str:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 602
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/PdfObject;

    .line 603
    .local v12, i:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v12, :cond_5

    .line 604
    new-instance v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 605
    .local v10, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v17, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 606
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->IRT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 607
    move-object/from16 v17, v10

    .line 611
    .end local v10           #dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #i:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v19           #str:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 596
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 613
    .end local v15           #n:I
    .end local v17           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_6
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 614
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfObject;

    .line 615
    .restart local v17       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 616
    .restart local v4       #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 617
    .restart local v18       #page:Lcom/itextpdf/text/pdf/PdfNumber;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 618
    .local v9, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfArray;

    .line 619
    .local v6, annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_7

    .line 620
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v6           #annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 621
    .restart local v6       #annotsp:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 624
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 625
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 613
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
.end method

.method addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 6
    .parameter "ref"

    .prologue
    .line 1089
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1090
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1091
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 1092
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1093
    .restart local v0       #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1094
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1096
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 1097
    .local v2, fields:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v2, :cond_1

    .line 1098
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v2           #fields:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1099
    .restart local v2       #fields:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1100
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1102
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1103
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v5, "/Helv 0 Tf 0 g "

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1106
    :cond_2
    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1107
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1108
    return-void
.end method

.method addFieldResources()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1114
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1115
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_2

    .line 1116
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1117
    .restart local v0       #acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1118
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1120
    :cond_2
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1121
    .local v3, dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v3, :cond_3

    .line 1122
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v3           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1123
    .restart local v3       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1124
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1126
    :cond_3
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1127
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 1128
    .local v6, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v3, v7, p0}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    goto :goto_1

    .line 1131
    .end local v6           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_4
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1132
    .local v4, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v4, :cond_5

    .line 1133
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v4           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1134
    .restart local v4       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1136
    :cond_5
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1137
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1138
    .local v2, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->HELVETICA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1139
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1140
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1141
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1142
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->HELV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1144
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1145
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1146
    .restart local v2       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ZAPFDINGBATS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1147
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1148
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1149
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->ZADB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1151
    .end local v2           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_7
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1152
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v9, "/Helv 0 Tf 0 g "

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1153
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method addFileAttachments()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentFileAttachment()Ljava/util/HashMap;

    move-result-object v2

    .line 1296
    .local v2, fs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1299
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1300
    .local v6, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v6, :cond_1

    .line 1301
    new-instance v6, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v6           #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1302
    .restart local v6       #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1303
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1305
    :cond_1
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1306
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v11}, Lcom/itextpdf/text/pdf/PdfNameTree;->readTree(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/util/HashMap;

    move-result-object v8

    .line 1307
    .local v8, old:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1308
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1309
    .local v5, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1310
    .local v4, k:I
    move-object v7, v5

    .line 1311
    .local v7, nn:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1312
    add-int/lit8 v4, v4, 0x1

    .line 1313
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1315
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1317
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v4           #k:I
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #nn:Ljava/lang/String;
    :cond_3
    invoke-static {v8, p0}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1319
    .local v10, tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 1320
    .local v9, oldEmbeddedFiles:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v9, :cond_4

    .line 1321
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1325
    :cond_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->EMBEDDEDFILES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 1368
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1369
    return-void
.end method

.method alterContents()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .local v3, element:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    move-object v7, v3

    .line 408
    check-cast v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 409
    .local v7, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v6, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 410
    .local v6, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 413
    .local v2, content:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v2, :cond_3

    .line 414
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 415
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 430
    :goto_1
    new-instance v5, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 431
    .local v5, out:Lcom/itextpdf/text/pdf/ByteBuffer;
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_0

    .line 432
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 433
    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/text/pdf/PdfStamperImp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 434
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 435
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 437
    :cond_0
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_1

    .line 438
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 439
    :cond_1
    new-instance v8, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 440
    .local v8, stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->compressionLevel:I

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 441
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->addFirst(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 442
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 443
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-eqz v9, :cond_2

    .line 444
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 445
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 446
    iget-object v9, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    .line 447
    .local v1, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    const/4 v10, 0x0

    iget v11, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    invoke-virtual {v5, v9, v10, v11}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 448
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->SAVESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 449
    invoke-virtual {p0, v6, v5}, Lcom/itextpdf/text/pdf/PdfStamperImp;->applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 450
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->getBuffer()[B

    move-result-object v9

    iget v10, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v11

    iget v12, v7, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    sub-int/2addr v11, v12

    invoke-virtual {v5, v9, v10, v11}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([BII)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 451
    sget-object v9, Lcom/itextpdf/text/pdf/PdfContents;->RESTORESTATE:[B

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 452
    new-instance v8, Lcom/itextpdf/text/pdf/PdfStream;

    .end local v8           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 453
    .restart local v8       #stream:Lcom/itextpdf/text/pdf/PdfStream;
    iget v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->compressionLevel:I

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfStream;->flateCompress(I)V

    .line 454
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 456
    .end local v1           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfStamperImp;->alterResources(Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    goto/16 :goto_0

    .line 417
    .end local v5           #out:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v8           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v0, v2

    .line 418
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 419
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 421
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 422
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 423
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 424
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 427
    :cond_5
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 428
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 458
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #content:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v3           #element:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    .end local v6           #pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    :cond_6
    return-void
.end method

.method alterResources(Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V
    .locals 3
    .parameter "ps"

    .prologue
    .line 461
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageN:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v2, p1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 462
    return-void
.end method

.method applyRotation(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 5
    .parameter "pageN"
    .parameter "out"

    .prologue
    const/16 v4, 0x30

    const/16 v3, 0x20

    .line 380
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    if-nez v2, :cond_0

    .line 404
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSizeWithRotation(Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    .line 383
    .local v0, page:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v1

    .line 384
    .local v1, rotation:I
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 386
    :sswitch_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE90:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 387
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 388
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 391
    :sswitch_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE180:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 392
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 393
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 394
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 395
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 398
    :sswitch_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATE270:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 399
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 400
    invoke-virtual {v0}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v2

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 401
    sget-object v2, Lcom/itextpdf/text/pdf/PdfContents;->ROTATEFINAL:[B

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 384
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method close(Ljava/util/HashMap;)V
    .locals 48
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, moreInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    if-eqz v3, :cond_0

    .line 377
    :goto_0
    return-void

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    if-eqz v3, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->setViewerPreferences(Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFields()V

    .line 157
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    if-eqz v3, :cond_3

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeTextFields()V

    .line 159
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFieldResources()V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 161
    .local v21, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v40

    check-cast v40, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 162
    .local v40, pages:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ITXT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/text/Document;->getRelease()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 164
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 165
    .local v17, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/XfaForm;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    if-nez v3, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/XfaForm;->setXfa(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 170
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    if-eqz v3, :cond_5

    .line 171
    if-eqz v17, :cond_5

    .line 172
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    invoke-direct {v4, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 177
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->closed:Z

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addSharedObjectsToBody()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setOutlines()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->setJavaScript()V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addFileAttachments()V

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v3, :cond_6

    .line 183
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OPENACTION:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    if-eqz v3, :cond_7

    .line 186
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfPageLabels;->getDictionary(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 188
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 189
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->fillOCProperties(Z)V

    .line 190
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v38

    .line 191
    .local v38, ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v38, :cond_14

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    invoke-virtual {v3, v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 208
    .end local v38           #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    :goto_1
    const/16 v43, -0x1

    .line 209
    .local v43, skipInfo:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getTrailer()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v29

    check-cast v29, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 210
    .local v29, iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v39

    check-cast v39, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 211
    .local v39, oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/16 v41, 0x0

    .line 212
    .local v41, producer:Ljava/lang/String;
    if-eqz v29, :cond_9

    .line 213
    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v43

    .line 214
    :cond_9
    if-eqz v39, :cond_a

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 215
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v41

    .line 216
    :cond_a
    if-nez v41, :cond_16

    .line 217
    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v41

    .line 226
    :cond_b
    :goto_2
    const/16 v18, 0x0

    .line 227
    .local v18, altMetadata:[B
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v46

    .line 228
    .local v46, xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v46, :cond_c

    invoke-virtual/range {v46 .. v46}, Lcom/itextpdf/text/pdf/PdfObject;->isStream()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, v46

    .line 229
    check-cast v3, Lcom/itextpdf/text/pdf/PRStream;

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytesRaw(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v18

    .line 230
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 232
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->xmpMetadata:[B

    if-eqz v3, :cond_d

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->xmpMetadata:[B

    move-object/from16 v18, v0

    .line 236
    :cond_d
    new-instance v22, Lcom/itextpdf/text/pdf/PdfDate;

    invoke-direct/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;-><init>()V

    .line 237
    .local v22, date:Lcom/itextpdf/text/pdf/PdfDate;
    if-eqz v18, :cond_12

    .line 240
    :try_start_0
    new-instance v47, Lcom/itextpdf/text/xml/xmp/XmpReader;

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;-><init>([B)V

    .line 241
    .local v47, xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    const-string/jumbo v3, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v4, "Producer"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v4, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v4, "Producer"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v4, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 243
    const-string/jumbo v3, "rdf:Description"

    const-string/jumbo v4, "http://ns.adobe.com/pdf/1.3/"

    const-string/jumbo v10, "pdf:Producer"

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v3, v4, v10, v1}, Lcom/itextpdf/text/xml/xmp/XmpReader;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :cond_e
    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "ModifyDate"

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "ModifyDate"

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 246
    const-string/jumbo v3, "rdf:Description"

    const-string/jumbo v4, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v10, "xmp:ModifyDate"

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/itextpdf/text/xml/xmp/XmpReader;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    :cond_f
    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "MetadataDate"

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v4, "MetadataDate"

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfDate;->getW3CDate()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4, v10}, Lcom/itextpdf/text/xml/xmp/XmpReader;->replaceDescriptionAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 250
    :cond_10
    new-instance v45, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-virtual/range {v47 .. v47}, Lcom/itextpdf/text/xml/xmp/XmpReader;->serializeDoc()[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    .end local v47           #xmpr:Lcom/itextpdf/text/xml/xmp/XmpReader;
    .local v45, xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :goto_3
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 259
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->XML:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v3

    if-nez v3, :cond_11

    .line 261
    new-instance v19, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 262
    .local v19, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 263
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v45

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 265
    .end local v19           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_17

    if-eqz v46, :cond_17

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual/range {v46 .. v46}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 274
    .end local v45           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_12
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->alterContents()V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v42

    .line 277
    .local v42, rootN:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_1b

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/IntHashtable;->getKeys()[I

    move-result-object v35

    .line 279
    .local v35, keys:[I
    const/16 v32, 0x0

    .local v32, k:I
    :goto_5
    move-object/from16 v0, v35

    array-length v3, v0

    move/from16 v0, v32

    if-ge v0, v3, :cond_19

    .line 280
    aget v31, v35, v32

    .line 281
    .local v31, j:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v37

    .line 282
    .local v37, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v37, :cond_13

    move/from16 v0, v43

    move/from16 v1, v31

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_13

    .line 283
    move/from16 v0, v31

    move/from16 v1, v42

    if-eq v0, v1, :cond_18

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :cond_13
    add-int/lit8 v32, v32, 0x1

    goto :goto_5

    .line 195
    .end local v18           #altMetadata:[B
    .end local v22           #date:Lcom/itextpdf/text/pdf/PdfDate;
    .end local v29           #iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v31           #j:I
    .end local v32           #k:I
    .end local v35           #keys:[I
    .end local v37           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v39           #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v41           #producer:Ljava/lang/String;
    .end local v42           #rootN:I
    .end local v43           #skipInfo:I
    .end local v46           #xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v38       #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 196
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v23

    .line 197
    .local v23, ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v23, :cond_15

    .line 198
    new-instance v23, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v23           #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 199
    .restart local v23       #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 201
    :cond_15
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 202
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 203
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 204
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 219
    .end local v23           #ddict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v38           #ocdict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v29       #iInfo:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v39       #oldInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v41       #producer:Ljava/lang/String;
    .restart local v43       #skipInfo:I
    :cond_16
    invoke-static {}, Lcom/itextpdf/text/Document;->getProduct()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 220
    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v20, buf:Ljava/lang/StringBuffer;
    const-string/jumbo v3, "; modified using "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-static {}, Lcom/itextpdf/text/Document;->getVersion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_2

    .line 252
    .end local v20           #buf:Ljava/lang/StringBuffer;
    .restart local v18       #altMetadata:[B
    .restart local v22       #date:Lcom/itextpdf/text/pdf/PdfDate;
    .restart local v46       #xmpo:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v24

    .line 253
    .local v24, e:Lorg/xml/sax/SAXException;
    new-instance v45, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 257
    .restart local v45       #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    goto/16 :goto_3

    .line 255
    .end local v24           #e:Lorg/xml/sax/SAXException;
    .end local v45           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :catch_1
    move-exception v24

    .line 256
    .local v24, e:Ljava/io/IOException;
    new-instance v45, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .restart local v45       #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    goto/16 :goto_3

    .line 269
    .end local v24           #e:Ljava/io/IOException;
    :cond_17
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 283
    .end local v45           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    .restart local v31       #j:I
    .restart local v32       #k:I
    .restart local v35       #keys:[I
    .restart local v37       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v42       #rootN:I
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 286
    .end local v31           #j:I
    .end local v37           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_19
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    move/from16 v32, v0

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_1e

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v37

    .line 288
    .restart local v37       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v37, :cond_1a

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 286
    :cond_1a
    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    .line 294
    .end local v32           #k:I
    .end local v35           #keys:[I
    .end local v37           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1b
    const/16 v32, 0x1

    .restart local v32       #k:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getXrefSize()I

    move-result v3

    move/from16 v0, v32

    if-ge v0, v3, :cond_1e

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v37

    .line 296
    .restart local v37       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v37, :cond_1c

    move/from16 v0, v43

    move/from16 v1, v32

    if-eq v0, v1, :cond_1c

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v4

    move/from16 v0, v32

    move/from16 v1, v42

    if-eq v0, v1, :cond_1d

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :cond_1c
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    .line 297
    :cond_1d
    const/4 v3, 0x0

    goto :goto_9

    .line 304
    .end local v37           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 310
    :goto_a
    const/4 v7, 0x0

    .line 311
    .local v7, encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v8, 0x0

    .line 312
    .local v8, fileID:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v3, :cond_20

    .line 313
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_1f

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCryptoRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 320
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->getFileID()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 324
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    iget-object v3, v3, Lcom/itextpdf/text/pdf/PdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    check-cast v30, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 325
    .local v30, iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v4

    invoke-direct {v5, v3, v4}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(II)V

    .line 326
    .local v5, root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v6, 0x0

    .line 327
    .local v6, info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v36, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v36 .. v36}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 328
    .local v36, newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v39, :cond_21

    .line 329
    invoke-virtual/range {v39 .. v39}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/itextpdf/text/pdf/PdfName;

    .local v25, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v33, v25

    .line 330
    check-cast v33, Lcom/itextpdf/text/pdf/PdfName;

    .line 331
    .local v33, key:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v44

    .line 332
    .local v44, value:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_d

    .line 303
    .end local v5           #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v6           #info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v8           #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v25           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v30           #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v32           #k:I
    .end local v33           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v36           #newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v42           #rootN:I
    .end local v44           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :catchall_0
    move-exception v3

    .line 304
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 308
    :goto_e
    throw v3

    .line 317
    .restart local v7       #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v8       #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v32       #k:I
    .restart local v42       #rootN:I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v26

    .line 318
    .local v26, encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    goto :goto_b

    .line 323
    .end local v26           #encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :cond_20
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    goto :goto_c

    .line 335
    .restart local v5       #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v6       #info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v30       #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v36       #newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_21
    if-eqz p1, :cond_23

    .line 336
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 337
    .local v27, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 338
    .local v33, key:Ljava/lang/String;
    new-instance v34, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 339
    .local v34, keyName:Lcom/itextpdf/text/pdf/PdfName;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 340
    .local v44, value:Ljava/lang/String;
    if-nez v44, :cond_22

    .line 341
    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_f

    .line 343
    :cond_22
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v4, "UnicodeBig"

    move-object/from16 v0, v44

    invoke-direct {v3, v0, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_f

    .line 346
    .end local v27           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v33           #key:Ljava/lang/String;
    .end local v34           #keyName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v44           #value:Ljava/lang/String;
    :cond_23
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MODDATE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 347
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PRODUCER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v0, v41

    invoke-direct {v4, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 348
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v3, :cond_26

    .line 349
    if-nez v29, :cond_25

    .line 350
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 358
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:I

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writeCrossReferenceTable(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fullCompression:Z

    if-eqz v3, :cond_27

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string/jumbo v4, "startxref\n"

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string/jumbo v4, "\n%%EOF\n"

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 373
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->flush()V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isCloseStream()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->close()V

    .line 376
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->close()V

    goto/16 :goto_0

    .line 352
    :cond_25
    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    goto :goto_10

    .line 355
    :cond_26
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    goto/16 :goto_10

    .line 365
    :cond_27
    new-instance v9, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->prevxref:I

    move/from16 v16, v0

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v16}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;-><init>(IILcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 371
    .local v9, trailer:Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    goto :goto_11

    .line 306
    .end local v5           #root:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v6           #info:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v8           #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v9           #trailer:Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
    .end local v30           #iRoot:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v32           #k:I
    .end local v36           #newInfo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v42           #rootN:I
    :catch_2
    move-exception v4

    goto/16 :goto_e

    .restart local v32       #k:I
    .restart local v42       #rootN:I
    :catch_3
    move-exception v3

    goto/16 :goto_a
.end method

.method correctAcroFieldPages(I)V
    .locals 6
    .parameter "page"

    .prologue
    .line 658
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-nez v5, :cond_1

    .line 670
    :cond_0
    return-void

    .line 660
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v5

    if-gt p1, v5, :cond_0

    .line 662
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v0

    .line 663
    .local v0, fields:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 664
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 665
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 666
    .local v4, p:I
    if-lt v4, p1, :cond_3

    .line 667
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->forcePage(II)V

    .line 664
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method deleteOutlines()V
    .locals 3

    .prologue
    .line 1268
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1269
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1270
    .local v1, outlines:Lcom/itextpdf/text/pdf/PRIndirectReference;
    if-nez v1, :cond_0

    .line 1276
    :goto_0
    return-void

    .line 1272
    :cond_0
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->outlineTravel(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 1273
    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1274
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1275
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method eliminateAcroformObjects()V
    .locals 6

    .prologue
    .line 946
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 947
    .local v0, acro:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 950
    .local v1, acrodic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfReader;->killXref(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 951
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 952
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 953
    .local v2, iFields:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_1

    .line 954
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 955
    .local v3, kids:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 956
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 957
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 958
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 960
    .end local v3           #kids:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0
.end method

.method expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p2, allAnnots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfAnnotation;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->getKids()Ljava/util/ArrayList;

    move-result-object v1

    .line 1160
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfFormField;>;"
    if-eqz v1, :cond_0

    .line 1161
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {p0, v2, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->expandFields(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/util/ArrayList;)V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    .end local v0           #k:I
    :cond_0
    return-void
.end method

.method flatFields()V
    .locals 40

    .prologue
    .line 808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    .line 809
    new-instance v38, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v39, "field.flattening.is.not.supported.in.append.mode"

    invoke-static/range {v39 .. v39}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 810
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v14

    .line 812
    .local v14, fields:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 813
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 814
    .local v35, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v35           #s:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v38

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v38 .. v39}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 818
    .local v4, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .line 819
    .local v3, acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_2

    .line 820
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v0, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 822
    .restart local v3       #acroFds:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 823
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 824
    .local v26, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 826
    :cond_4
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 827
    .local v22, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/16 v23, 0x0

    .local v23, k:I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v38

    move/from16 v0, v23

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 828
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v25

    .line 829
    .local v25, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v13

    .line 830
    .local v13, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v15, 0x0

    .line 831
    .local v15, flags:I
    if-eqz v13, :cond_5

    .line 832
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v15

    .line 833
    :cond_5
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 834
    .local v29, page:I
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 835
    .local v8, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v8, :cond_7

    and-int/lit8 v38, v15, 0x4

    if-eqz v38, :cond_7

    and-int/lit8 v38, v15, 0x2

    if-nez v38, :cond_7

    .line 836
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v27

    .line 837
    .local v27, obj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v7, 0x0

    .line 838
    .local v7, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    if-eqz v27, :cond_6

    .line 839
    invoke-static/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    .line 840
    .local v28, objReal:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v38, v0

    if-eqz v38, :cond_9

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_9

    .line 841
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v27, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 862
    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 863
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v10

    .line 864
    .local v10, box:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v11

    .line 865
    .local v11, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    const-string/jumbo v38, "Q "

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 866
    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v38

    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v11, v7, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 867
    const-string/jumbo v38, "q "

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLiteral(Ljava/lang/String;)V

    .line 870
    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v10           #box:Lcom/itextpdf/text/Rectangle;
    .end local v11           #cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_b

    .line 827
    :cond_8
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 842
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v27       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PdfStream;

    move/from16 v38, v0

    if-eqz v38, :cond_a

    .line 843
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 844
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    check-cast v27, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    goto :goto_2

    .line 847
    .restart local v27       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    if-eqz v28, :cond_6

    invoke-virtual/range {v28 .. v28}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v38

    if-eqz v38, :cond_6

    .line 848
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v9

    .line 849
    .local v9, as:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v9, :cond_6

    .line 850
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 851
    .local v21, iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v21, :cond_6

    .line 852
    new-instance v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 853
    .restart local v7       #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_6

    .line 854
    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v28

    .line 855
    .restart local v28       #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    check-cast v28, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v28           #objReal:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->FORM:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_2

    .line 872
    .end local v7           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v9           #as:Lcom/itextpdf/text/pdf/PdfName;
    .end local v21           #iref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v27           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v30

    .line 873
    .local v30, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 874
    .local v6, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_8

    .line 876
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_4
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_14

    .line 877
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v33

    .line 878
    .local v33, ran:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_d

    .line 876
    .end local v33           #ran:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 880
    .restart local v33       #ran:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidgetRef(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v34

    .line 881
    .local v34, ran2:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v34 .. v34}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_c

    .line 883
    check-cast v33, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v33           #ran:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move-object/from16 v38, v34

    check-cast v38, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    .line 884
    add-int/lit8 v20, v19, -0x1

    .end local v19           #idx:I
    .local v20, idx:I
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-object/from16 v37, v34

    .line 885
    check-cast v37, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 887
    .local v37, wdref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :goto_6
    invoke-static/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v36

    check-cast v36, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 888
    .local v36, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v32

    check-cast v32, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 889
    .local v32, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 890
    if-nez v32, :cond_10

    .line 891
    const/16 v16, 0x0

    .local v16, fr:I
    :goto_7
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_f

    .line 892
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 893
    .local v17, h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_e

    check-cast v17, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v17           #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    .line 894
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 895
    add-int/lit8 v16, v16, -0x1

    .line 891
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_f
    move/from16 v19, v20

    .line 898
    .end local v20           #idx:I
    .restart local v19       #idx:I
    goto :goto_5

    .line 900
    .end local v16           #fr:I
    .end local v19           #idx:I
    .restart local v20       #idx:I
    :cond_10
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v31

    check-cast v31, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 901
    .local v31, parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v24

    .line 902
    .local v24, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v16, 0x0

    .restart local v16       #fr:I
    :goto_8
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 903
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    .line 904
    .restart local v17       #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-eqz v38, :cond_11

    check-cast v17, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v17           #h:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v38

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 905
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 906
    add-int/lit8 v16, v16, -0x1

    .line 902
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 909
    :cond_12
    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_13

    move/from16 v19, v20

    .line 910
    .end local v20           #idx:I
    .restart local v19       #idx:I
    goto/16 :goto_5

    .line 911
    .end local v19           #idx:I
    .restart local v20       #idx:I
    :cond_13
    move-object/from16 v37, v32

    .line 912
    goto/16 :goto_6

    .line 915
    .end local v16           #fr:I
    .end local v20           #idx:I
    .end local v24           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v31           #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v32           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v34           #ran2:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v36           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v37           #wdref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v19       #idx:I
    :cond_14
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_8

    .line 916
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 917
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto/16 :goto_3

    .line 921
    .end local v6           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v8           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v13           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v15           #flags:I
    .end local v19           #idx:I
    .end local v22           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v23           #k:I
    .end local v25           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #name:Ljava/lang/String;
    .end local v29           #page:I
    .end local v30           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->fieldsAdded:Z

    move/from16 v38, v0

    if-nez v38, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashSet;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 922
    const/16 v29, 0x1

    .restart local v29       #page:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v38

    move/from16 v0, v29

    move/from16 v1, v38

    if-gt v0, v1, :cond_1c

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v30

    .line 924
    .restart local v30       #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 925
    .restart local v6       #annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v6, :cond_17

    .line 922
    :cond_16
    :goto_a
    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .line 927
    :cond_17
    const/16 v19, 0x0

    .restart local v19       #idx:I
    :goto_b
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v38

    move/from16 v0, v19

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    .line 928
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 929
    .local v5, annoto:Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v5, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move/from16 v38, v0

    if-eqz v38, :cond_19

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v38

    if-nez v38, :cond_19

    .line 927
    .end local v5           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_18
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 931
    .restart local v5       #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_19
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v38

    if-eqz v38, :cond_1a

    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v5           #annoto:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v39, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 932
    :cond_1a
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    .line 933
    add-int/lit8 v19, v19, -0x1

    goto :goto_c

    .line 936
    :cond_1b
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_16

    .line 937
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 938
    sget-object v38, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_a

    .line 941
    .end local v6           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v19           #idx:I
    .end local v30           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->eliminateAcroformObjects()V

    .line 943
    .end local v29           #page:I
    :cond_1d
    return-void
.end method

.method getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v0, v1, p0}, Lcom/itextpdf/text/pdf/AcroFields;-><init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    return-object v0
.end method

.method public getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 1556
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.pdfstamper.getundercontent.or.pdfstamper.getovercontent"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.pdfstamper.getundercontent.or.pdfstamper.getovercontent"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I
    .locals 3
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 466
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/IntHashtable;

    .line 467
    .local v1, ref:Lcom/itextpdf/text/pdf/IntHashtable;
    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    .line 469
    .local v0, n:I
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getIndirectReferenceNumber()I

    move-result v0

    .line 471
    invoke-virtual {v1, p2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 486
    .end local v0           #n:I
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v2, :cond_3

    .line 476
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->initialXrefSize:I

    if-ge p2, v2, :cond_2

    move v0, p2

    .line 477
    goto :goto_0

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v0

    .line 479
    .restart local v0       #n:I
    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getIndirectReferenceNumber()I

    move-result v0

    .line 481
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->myXref:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, p2, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    goto :goto_0

    .line 486
    .end local v0           #n:I
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v2, p2, p3}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getNewObjectNumber(II)I

    move-result v0

    goto :goto_0
.end method

.method getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 649
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 650
    :cond_0
    const/4 v1, 0x0

    .line 654
    :goto_0
    return-object v1

    .line 651
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    move-result-object v0

    .line 652
    .local v0, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    if-nez v1, :cond_2

    .line 653
    new-instance v1, Lcom/itextpdf/text/pdf/StampContent;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/text/pdf/StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    .line 654
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    goto :goto_0
.end method

.method public getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "page"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    .line 1075
    .local v0, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez v0, :cond_0

    .line 1076
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid.page.number.1"

    invoke-static {v2, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1077
    :cond_0
    return-object v0
.end method

.method getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    .locals 3
    .parameter "pageNum"

    .prologue
    .line 630
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 631
    .local v0, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 632
    .local v1, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    if-nez v1, :cond_0

    .line 633
    new-instance v1, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .end local v1           #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v1, p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 634
    .restart local v1       #ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    :cond_0
    return-object v1
.end method

.method public getPdfLayers()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1660
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1661
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->readOCProperties()V

    .line 1663
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1666
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOCG;

    .local v4, pdfOCG:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v2, v4

    .line 1667
    check-cast v2, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1668
    .local v2, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1669
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v7}, Lcom/itextpdf/text/pdf/PdfLayer;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, key:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1675
    const/4 v5, 0x2

    .line 1676
    .local v5, seq:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1677
    .local v6, tmp:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1678
    add-int/lit8 v5, v5, 0x1

    .line 1679
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1672
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #seq:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #key:Ljava/lang/String;
    goto :goto_1

    .line 1681
    .restart local v5       #seq:I
    .restart local v6       #tmp:Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 1683
    .end local v5           #seq:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1685
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v4           #pdfOCG:Lcom/itextpdf/text/pdf/PdfOCG;
    :cond_4
    return-object v3
.end method

.method getReaderFile(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 2
    .parameter "reader"

    .prologue
    .line 491
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 493
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    if-eqz v0, :cond_0

    .line 500
    .end local v0           #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_0
    return-object v0

    .line 495
    .restart local v0       #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    goto :goto_0

    .line 497
    .end local v0           #raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->file:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    goto :goto_0

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    goto :goto_0
.end method

.method getUnderContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 640
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 641
    :cond_0
    const/4 v1, 0x0

    .line 645
    :goto_0
    return-object v1

    .line 642
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getPageStamp(I)Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    move-result-object v0

    .line 643
    .local v0, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    if-nez v1, :cond_2

    .line 644
    new-instance v1, Lcom/itextpdf/text/pdf/StampContent;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/text/pdf/StampContent;-><init>(Lcom/itextpdf/text/pdf/PdfStamperImp;Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;)V

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    .line 645
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->under:Lcom/itextpdf/text/pdf/StampContent;

    goto :goto_0
.end method

.method insertPage(ILcom/itextpdf/text/Rectangle;)V
    .locals 24
    .parameter "pageNumber"
    .parameter "mediabox"

    .prologue
    .line 701
    new-instance v11, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    .line 702
    .local v11, media:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v11}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v21

    move/from16 v0, v21

    rem-int/lit16 v0, v0, 0x168

    move/from16 v20, v0

    .line 703
    .local v20, rotation:I
    new-instance v13, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PAGE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 704
    .local v13, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 705
    .local v19, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v18, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 706
    .local v18, procset:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PDF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 707
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TEXT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 708
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 709
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 710
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->IMAGEI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 711
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PROCSET:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 712
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 713
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 714
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfRectangle;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v11, v1}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfReader;->addPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v17

    .line 718
    .local v17, pref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 720
    .local v9, lastPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 721
    .local v15, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v16, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 722
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .local v16, parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 723
    .local v14, parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    .line 724
    .local v8, kids:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V

    move-object/from16 v15, v16

    .line 753
    .end local v9           #lastPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :goto_0
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 754
    :goto_1
    if-eqz v14, :cond_5

    .line 755
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 756
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 757
    .local v3, count:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 758
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v14

    .line 759
    goto :goto_1

    .line 729
    .end local v3           #count:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v8           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 730
    const/16 p1, 0x1

    .line 731
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 732
    .local v5, firstPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v6

    .line 733
    .local v6, firstPageRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 734
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 735
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v16, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PRIndirectReference;-><init>(Lcom/itextpdf/text/pdf/PdfReader;I)V

    .line 736
    .end local v15           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v16       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 737
    .restart local v14       #parent:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfArray;

    .line 738
    .restart local v8       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    .line 739
    .local v10, len:I
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v12

    .line 740
    .local v12, num:I
    const/4 v7, 0x0

    .local v7, k:I
    :goto_2
    if-ge v7, v10, :cond_2

    .line 741
    invoke-virtual {v8, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 742
    .local v4, cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v21

    move/from16 v0, v21

    if-ne v12, v0, :cond_3

    .line 743
    move-object/from16 v0, v17

    invoke-virtual {v8, v7, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(ILcom/itextpdf/text/pdf/PdfObject;)V

    .line 747
    .end local v4           #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_2
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    .line 748
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "internal.inconsistence"

    invoke-static/range {v22 .. v22}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 740
    .restart local v4       #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 749
    .end local v4           #cur:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfReader;->pageRefs:Lcom/itextpdf/text/pdf/PdfReader$PageRefs;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfReader$PageRefs;->insertPage(ILcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 751
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->correctAcroFieldPages(I)V

    move-object/from16 v15, v16

    .end local v16           #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v15       #parentRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    goto/16 :goto_0

    .line 760
    .end local v5           #firstPage:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #firstPageRef:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v7           #k:I
    .end local v10           #len:I
    .end local v12           #num:I
    :cond_5
    return-void
.end method

.method isAppend()Z
    .locals 1

    .prologue
    .line 1481
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    return v0
.end method

.method isContentWritten()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 779
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRotateContents()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    return v0
.end method

.method makePackage(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 2
    .parameter "collection"

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1334
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLLECTION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1335
    return-void
.end method

.method protected markUsed(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1474
    :cond_0
    return-void
.end method

.method protected markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 1460
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->append:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1461
    const/4 v0, 0x0

    .line 1462
    .local v0, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move-object v0, p1

    .line 1463
    check-cast v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 1466
    :goto_0
    if-eqz v0, :cond_0

    .line 1467
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->marked:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 1469
    .end local v0           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_0
    return-void

    .line 1465
    .restart local v0       #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->getIndRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v0

    goto :goto_0
.end method

.method partialFormFlattening(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getAcroFields()Lcom/itextpdf/text/pdf/AcroFields;

    .line 799
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/AcroFields;->getXfa()Lcom/itextpdf/text/pdf/XfaForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "partial.form.flattening.is.not.supported.with.xfa.forms"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->acroFields:Lcom/itextpdf/text/pdf/AcroFields;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/AcroFields;->getFields()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 802
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->partialFlattening:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected readOCProperties()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1566
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v9, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1570
    .local v1, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 1573
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v5

    .line 1576
    .local v5, ocgs:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1577
    .local v4, ocgmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfLayer;>;"
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1578
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1579
    .local v8, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-direct {v3, v12}, Lcom/itextpdf/text/pdf/PdfLayer;-><init>(Ljava/lang/String;)V

    .line 1580
    .local v3, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->setRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1581
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfLayer;->setOnPanel(Z)V

    .line 1582
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v3, v9}, Lcom/itextpdf/text/pdf/PdfLayer;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1583
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1585
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v8           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1586
    .local v0, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 1587
    .local v6, off:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_3

    .line 1588
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1589
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1590
    .restart local v8       #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 1591
    .restart local v3       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfLayer;->setOn(Z)V

    goto :goto_2

    .line 1594
    .end local v3           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v8           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v7

    .line 1595
    .local v7, order:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v7, :cond_4

    .line 1596
    invoke-direct {p0, v12, v7, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addOrder(Lcom/itextpdf/text/pdf/PdfLayer;Lcom/itextpdf/text/pdf/PdfArray;Ljava/util/Map;)V

    .line 1598
    :cond_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1599
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    .line 1600
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LOCKED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    .line 1601
    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    if-nez v9, :cond_0

    .line 1602
    new-instance v9, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    goto/16 :goto_0
.end method

.method public registerReader(Lcom/itextpdf/text/pdf/PdfReader;Z)V
    .locals 3
    .parameter "reader"
    .parameter "openFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    if-eqz p2, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    .line 514
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    goto :goto_0
.end method

.method replacePage(Lcom/itextpdf/text/pdf/PdfReader;II)V
    .locals 9
    .parameter "r"
    .parameter "pageImported"
    .parameter "pageReplaced"

    .prologue
    const/4 v8, 0x0

    .line 681
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 682
    .local v3, pageN:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "this.page.cannot.be.replaced.new.content.was.already.added"

    invoke-static {v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 684
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v2

    .line 685
    .local v2, p:Lcom/itextpdf/text/pdf/PdfImportedPage;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v5, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 686
    .local v1, dic2:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 687
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 688
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->MEDIABOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "media"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 689
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->CROPBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "crop"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 690
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TRIMBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "trim"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 691
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ARTBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "art"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 692
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->BLEEDBOX:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v6, "bleed"

    invoke-static {v1, p1, p2, v5, v6}, Lcom/itextpdf/text/pdf/PdfStamperImp;->moveRectangle(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)V

    .line 693
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 694
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getOverContent(I)Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    .line 695
    .local v0, cb:Lcom/itextpdf/text/pdf/PdfContentByte;
    invoke-virtual {v0, v2, v8, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V

    .line 696
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pagesToContent:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;

    .line 697
    .local v4, ps:Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;
    iget-object v5, v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->over:Lcom/itextpdf/text/pdf/StampContent;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/StampContent;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v5

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfStamperImp$PageStamp;->replacePoint:I

    .line 698
    return-void
.end method

.method public setAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 4
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1496
    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DOCUMENT_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->WILL_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DID_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->WILL_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfStamperImp;->DID_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1501
    new-instance v1, Lcom/itextpdf/text/pdf/PdfException;

    const-string/jumbo v2, "invalid.additional.action.type.1"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1503
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1504
    .local v0, aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_2

    .line 1505
    if-nez p2, :cond_1

    .line 1515
    :goto_0
    return-void

    .line 1507
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1508
    .restart local v0       #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1510
    :cond_2
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1511
    if-nez p2, :cond_3

    .line 1512
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_0

    .line 1514
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 1419
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setDuration(II)V
    .locals 3
    .parameter "seconds"
    .parameter "page"

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1438
    .local v0, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-gez p1, :cond_0

    .line 1439
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1442
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1443
    return-void

    .line 1441
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method setFormFlattening(Z)V
    .locals 0
    .parameter "flat"

    .prologue
    .line 790
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flat:Z

    .line 791
    return-void
.end method

.method setFreeTextFlattening(Z)V
    .locals 0
    .parameter "flat"

    .prologue
    .line 794
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->flatFreeText:Z

    .line 795
    return-void
.end method

.method setJavaScript()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1279
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentLevelJS()Ljava/util/HashMap;

    move-result-object v1

    .line 1280
    .local v1, djs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1282
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1283
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1284
    .local v2, names:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_1

    .line 1285
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v2           #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1286
    .restart local v2       #names:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->NAMES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1287
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1289
    :cond_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1290
    invoke-static {v1, p0}, Lcom/itextpdf/text/pdf/PdfNameTree;->writeTree(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 1291
    .local v3, tree:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->openAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 1523
    return-void
.end method

.method public setOpenAction(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1530
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "open.actions.by.name.are.not.supported"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOutlines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->newBookmarks:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->deleteOutlines()V

    .line 1341
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->newBookmarks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1343
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1344
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 1345
    .local v1, namedAsNames:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->writeOutlines(Lcom/itextpdf/text/pdf/PdfDictionary;Z)V

    .line 1346
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 1344
    .end local v1           #namedAsNames:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 2
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;I)V
    .locals 5
    .parameter "actionType"
    .parameter "action"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 1400
    sget-object v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->PAGE_OPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfStamperImp;->PAGE_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1401
    new-instance v2, Lcom/itextpdf/text/pdf/PdfException;

    const-string/jumbo v3, "invalid.page.additional.action.type.1"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1402
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1403
    .local v1, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1404
    .local v0, aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1405
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1406
    .restart local v0       #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1407
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1409
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1410
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1411
    return-void
.end method

.method setRotateContents(Z)V
    .locals 0
    .parameter "rotateContents"

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->rotateContents:Z

    .line 776
    return-void
.end method

.method public setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1377
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->sigFlags:I

    .line 1378
    return-void
.end method

.method public setThumbnail(Lcom/itextpdf/text/Image;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.pdfstamper.setthumbnail"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setThumbnail(Lcom/itextpdf/text/Image;I)V
    .locals 3
    .parameter "image"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1542
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 1543
    .local v1, thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->resetReleasePage()V

    .line 1544
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1545
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->THUMB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1546
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->resetReleasePage()V

    .line 1547
    return-void
.end method

.method public setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
    .locals 2
    .parameter "transition"

    .prologue
    .line 1428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "use.setpageaction.pdfname.actiontype.pdfaction.action.int.page"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransition(Lcom/itextpdf/text/pdf/PdfTransition;I)V
    .locals 3
    .parameter "transition"
    .parameter "page"

    .prologue
    .line 1451
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1452
    .local v0, pg:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez p1, :cond_0

    .line 1453
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1456
    :goto_0
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1457
    return-void

    .line 1455
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTransition;->getTransitionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->useVp:Z

    .line 1357
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 1358
    return-void
.end method

.method sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 966
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 967
    .local v3, oo:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-nez v4, :cond_1

    .line 976
    :cond_0
    return-void

    :cond_1
    move-object v0, v3

    .line 969
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 970
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 971
    .local v2, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v2, :cond_0

    .line 973
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 974
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfStamperImp;->sweepKids(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unRegisterReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 2
    .parameter "reader"

    .prologue
    .line 523
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2intrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 527
    .local v0, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfStamperImp;->readers2file:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :try_start_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
