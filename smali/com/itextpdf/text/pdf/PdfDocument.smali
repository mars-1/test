.class public Lcom/itextpdf/text/pdf/PdfDocument;
.super Lcom/itextpdf/text/Document;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfDocument$Destination;,
        Lcom/itextpdf/text/pdf/PdfDocument$Indentation;,
        Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;,
        Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;
    }
.end annotation


# static fields
.field protected static final SIXTEEN_DIGITS:Ljava/text/DecimalFormat; = null

.field static final hangingPunctuation:Ljava/lang/String; = ".,;:\'"


# instance fields
.field protected additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected alignment:I

.field protected anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

.field annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

.field protected boxSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

.field protected currentHeight:F

.field protected currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

.field protected documentFileAttachment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected documentLevelJS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected duration:I

.field protected firstPageEvent:Z

.field protected graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected imageEnd:F

.field protected imageWait:Lcom/itextpdf/text/Image;

.field protected indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

.field protected info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

.field protected isSectionTitle:Z

.field jsCounter:I

.field protected lastElementType:I

.field protected leading:F

.field protected leadingCount:I

.field protected line:Lcom/itextpdf/text/pdf/PdfLine;

.field protected lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLine;",
            ">;"
        }
    .end annotation
.end field

.field protected localDestinations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDocument$Destination;",
            ">;"
        }
    .end annotation
.end field

.field protected markPoint:I

.field protected nextMarginBottom:F

.field protected nextMarginLeft:F

.field protected nextMarginRight:F

.field protected nextMarginTop:F

.field protected nextPageSize:Lcom/itextpdf/text/Rectangle;

.field protected openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

.field protected openActionName:Ljava/lang/String;

.field protected pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private pageEmpty:Z

.field protected pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

.field protected pageResources:Lcom/itextpdf/text/pdf/PageResources;

.field protected rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

.field protected strictImageSequence:Z

.field protected text:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected textEmptySize:I

.field protected thisBoxSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfRectangle;",
            ">;"
        }
    .end annotation
.end field

.field protected thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected transition:Lcom/itextpdf/text/pdf/PdfTransition;

.field protected viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;

.field protected xmpMetadata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1999
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0000000000000000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfDocument;->SIXTEEN_DIGITS:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/itextpdf/text/Document;-><init>()V

    .line 347
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 368
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 371
    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 377
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 383
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 386
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 788
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->xmpMetadata:[B

    .line 1036
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    .line 1106
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    .line 1174
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 1598
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    .line 1699
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    .line 1873
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    .line 1951
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    .line 1998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    .line 2025
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    .line 2133
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    .line 2136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    .line 2140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    .line 2186
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2199
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    .line 2202
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->transition:Lcom/itextpdf/text/pdf/PdfTransition;

    .line 2223
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2250
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    .line 2269
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 2286
    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    .line 313
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addProducer()Z

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->addCreationDate()Z

    .line 315
    return-void
.end method


# virtual methods
.method protected add(Lcom/itextpdf/text/Image;)V
    .locals 14
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2297
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2298
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;)V

    .line 2299
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2357
    :cond_0
    :goto_0
    return-void

    .line 2304
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 2305
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-nez v0, :cond_2

    .line 2306
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    goto :goto_0

    .line 2309
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 2310
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v0, v0, v13

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 2311
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    goto :goto_0

    .line 2315
    :cond_3
    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2317
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-ne p1, v0, :cond_4

    .line 2318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    .line 2319
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_b

    move v11, v1

    .line 2321
    .local v11, textwrap:Z
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_c

    move v12, v1

    .line 2322
    .local v12, underlying:Z
    :goto_2
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    const/high16 v3, 0x4000

    div-float v8, v0, v3

    .line 2323
    .local v8, diff:F
    if-eqz v11, :cond_5

    .line 2324
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v8, v0

    .line 2326
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v0

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    sub-float/2addr v0, v3

    sub-float v9, v0, v8

    .line 2327
    .local v9, lowerleft:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v10

    .line 2328
    .local v10, mt:[F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v0

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2329
    .local v6, startPosition:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v3

    sub-float/2addr v0, v3

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2330
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    aget v3, v10, v5

    sub-float v6, v0, v3

    .line 2331
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteX()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteX()F

    move-result v6

    .line 2332
    :cond_8
    if-eqz v11, :cond_e

    .line 2333
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpg-float v0, v0, v13

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v8

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 2334
    :cond_9
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v3

    add-float/2addr v0, v3

    add-float/2addr v0, v8

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 2336
    :cond_a
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_d

    .line 2338
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 2350
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    aget v2, v10, v2

    aget v3, v10, v1

    aget v4, v10, v7

    const/4 v1, 0x3

    aget v5, v10, v1

    const/4 v1, 0x5

    aget v1, v10, v1

    sub-float v7, v9, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 2351
    if-nez v11, :cond_0

    if-nez v12, :cond_0

    .line 2352
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v1

    add-float/2addr v1, v8

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2353
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 2354
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v1

    add-float/2addr v1, v8

    neg-float v1, v1

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2355
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    goto/16 :goto_0

    .end local v6           #startPosition:F
    .end local v8           #diff:F
    .end local v9           #lowerleft:F
    .end local v10           #mt:[F
    .end local v11           #textwrap:Z
    .end local v12           #underlying:Z
    :cond_b
    move v11, v2

    .line 2319
    goto/16 :goto_1

    .restart local v11       #textwrap:Z
    :cond_c
    move v12, v2

    .line 2321
    goto/16 :goto_2

    .line 2342
    .restart local v6       #startPosition:F
    .restart local v8       #diff:F
    .restart local v9       #lowerleft:F
    .restart local v10       #mt:[F
    .restart local v12       #underlying:Z
    :cond_d
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    goto :goto_3

    .line 2346
    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v7, :cond_f

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v0

    sub-float/2addr v6, v0

    goto :goto_3

    .line 2347
    :cond_f
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAlignment()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationRight()F

    move-result v3

    sub-float/2addr v0, v3

    add-float/2addr v6, v0

    goto :goto_3

    .line 2348
    :cond_10
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getIndentationLeft()F

    move-result v0

    add-float/2addr v6, v0

    goto :goto_3
.end method

.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 35
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    const/4 v4, 0x0

    .line 717
    :goto_0
    return v4

    .line 401
    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 714
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 404
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addkey(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 717
    const/4 v4, 0x1

    goto :goto_0

    .line 407
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 719
    :catch_0
    move-exception v16

    .line 720
    .local v16, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 410
    .end local v16           #e:Ljava/lang/Exception;
    :pswitch_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addSubject(Ljava/lang/String;)V

    goto :goto_1

    .line 413
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addKeywords(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addAuthor(Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Meta;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Meta;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addCreator(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addProducer()V

    goto :goto_1

    .line 427
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;->addCreationDate()V

    goto :goto_1

    .line 433
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-nez v4, :cond_2

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 438
    :cond_2
    new-instance v14, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Chunk;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v14, v4, v5}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 442
    .local v14, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4, v14}, Lcom/itextpdf/text/pdf/PdfLine;->add(Lcom/itextpdf/text/pdf/PdfChunk;)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v25

    .local v25, overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    if-eqz v25, :cond_3

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 444
    move-object/from16 v14, v25

    .line 445
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfChunk;->trimFirstSpace()F

    goto :goto_2

    .line 448
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 449
    const-string/jumbo v4, "NEWPAGE"

    invoke-virtual {v14, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    goto/16 :goto_1

    .line 455
    .end local v14           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v25           #overflow:Lcom/itextpdf/text/pdf/PdfChunk;
    :pswitch_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 456
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Anchor;

    move-object v11, v0

    .line 457
    .local v11, anchor:Lcom/itextpdf/text/Anchor;
    invoke-virtual {v11}, Lcom/itextpdf/text/Anchor;->getReference()Ljava/lang/String;

    move-result-object v33

    .line 458
    .local v33, url:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/itextpdf/text/Anchor;->getLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 459
    if-eqz v33, :cond_4

    .line 460
    new-instance v4, Lcom/itextpdf/text/pdf/PdfAction;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 463
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 464
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->anchorAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 465
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 469
    .end local v11           #anchor:Lcom/itextpdf/text/Anchor;
    .end local v33           #url:Ljava/lang/String;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-nez v4, :cond_5

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 472
    :cond_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Annotation;

    move-object v12, v0

    .line 473
    .local v12, annot:Lcom/itextpdf/text/Annotation;
    new-instance v28, Lcom/itextpdf/text/Rectangle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Lcom/itextpdf/text/Rectangle;-><init>(FF)V

    .line 474
    .local v28, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v4, :cond_6

    .line 475
    new-instance v28, Lcom/itextpdf/text/Rectangle;

    .end local v28           #rect:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/Annotation;->llx(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x41a0

    sub-float/2addr v5, v6

    invoke-virtual {v12, v5}, Lcom/itextpdf/text/Annotation;->ury(F)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41a0

    add-float/2addr v6, v7

    invoke-virtual {v12, v6}, Lcom/itextpdf/text/Annotation;->urx(F)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v7, v8

    invoke-virtual {v12, v7}, Lcom/itextpdf/text/Annotation;->lly(F)F

    move-result v7

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 476
    .restart local v28       #rect:Lcom/itextpdf/text/Rectangle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v28

    invoke-static {v4, v12, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->convertAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Annotation;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v10

    .line 477
    .local v10, an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v4, v10}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 478
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 482
    .end local v10           #an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    .end local v12           #annot:Lcom/itextpdf/text/Annotation;
    .end local v28           #rect:Lcom/itextpdf/text/Rectangle;
    :pswitch_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 484
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Phrase;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/Phrase;->getLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 486
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 487
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 491
    :pswitch_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 493
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Paragraph;

    move-object/from16 v26, v0

    .line 494
    .local v26, paragraph:Lcom/itextpdf/text/Paragraph;
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 497
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getAlignment()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 498
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getTotalLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 502
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v6

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 505
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v2

    .line 510
    .local v2, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    if-nez v4, :cond_8

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraph(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    .line 514
    :cond_8
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getKeepTogether()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 516
    new-instance v32, Lcom/itextpdf/text/pdf/PdfPTable;

    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;-><init>(I)V

    .line 517
    .local v32, table:Lcom/itextpdf/text/pdf/PdfPTable;
    const/high16 v4, 0x42c8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfPTable;->setWidthPercentage(F)V

    .line 518
    new-instance v13, Lcom/itextpdf/text/pdf/PdfPCell;

    invoke-direct {v13}, Lcom/itextpdf/text/pdf/PdfPCell;-><init>()V

    .line 519
    .local v13, cell:Lcom/itextpdf/text/pdf/PdfPCell;
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPCell;->addElement(Lcom/itextpdf/text/Element;)V

    .line 520
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setBorder(I)V

    .line 521
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/itextpdf/text/pdf/PdfPCell;->setPadding(F)V

    .line 522
    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfPTable;->addCell(Lcom/itextpdf/text/pdf/PdfPCell;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 536
    .end local v13           #cell:Lcom/itextpdf/text/pdf/PdfPCell;
    .end local v32           #table:Lcom/itextpdf/text/pdf/PdfPTable;
    :goto_3
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    if-nez v4, :cond_9

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onParagraphEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    .line 539
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 543
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 530
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfLine;->setExtraIndent(F)V

    .line 531
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 533
    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v4

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getTotalLeading()F

    move-result v5

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    goto :goto_3

    .line 550
    .end local v2           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v26           #paragraph:Lcom/itextpdf/text/Paragraph;
    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Section;

    move-object/from16 v31, v0

    .line 551
    .local v31, section:Lcom/itextpdf/text/Section;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v2

    .line 553
    .restart local v2       #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isNotAddedYet()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v4

    if-eqz v4, :cond_e

    const/16 v18, 0x1

    .line 557
    .local v18, hasTitle:Z
    :goto_4
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isTriggerNewPage()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 561
    :cond_b
    if-eqz v18, :cond_10

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v17, v4, v5

    .line 563
    .local v17, fith:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v30

    .line 564
    .local v30, rotation:I
    const/16 v4, 0x5a

    move/from16 v0, v30

    if-eq v0, v4, :cond_c

    const/16 v4, 0xb4

    move/from16 v0, v30

    if-ne v0, v4, :cond_d

    .line 565
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v4

    sub-float v17, v4, v17

    .line 566
    :cond_d
    new-instance v15, Lcom/itextpdf/text/pdf/PdfDestination;

    const/4 v4, 0x2

    move/from16 v0, v17

    invoke-direct {v15, v4, v0}, Lcom/itextpdf/text/pdf/PdfDestination;-><init>(IF)V

    .line 567
    .local v15, destination:Lcom/itextpdf/text/pdf/PdfDestination;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->level()I

    move-result v4

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getDepth()I

    move-result v5

    if-lt v4, v5, :cond_f

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    goto :goto_5

    .line 553
    .end local v15           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v17           #fith:F
    .end local v18           #hasTitle:Z
    .end local v30           #rotation:I
    :cond_e
    const/16 v18, 0x0

    goto :goto_4

    .line 570
    .restart local v15       #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .restart local v17       #fith:F
    .restart local v18       #hasTitle:Z
    .restart local v30       #rotation:I
    :cond_f
    new-instance v24, Lcom/itextpdf/text/pdf/PdfOutline;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getBookmarkTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isBookmarkOpen()Z

    move-result v6

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v15, v5, v6}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfOutline;Lcom/itextpdf/text/pdf/PdfDestination;Lcom/itextpdf/text/Paragraph;Z)V

    .line 571
    .local v24, outline:Lcom/itextpdf/text/pdf/PdfOutline;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 575
    .end local v15           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v17           #fith:F
    .end local v24           #outline:Lcom/itextpdf/text/pdf/PdfOutline;
    .end local v30           #rotation:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 577
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    .line 579
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isNotAddedYet()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    .line 580
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_13

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5, v6}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapter(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FLcom/itextpdf/text/Paragraph;)V

    .line 586
    :cond_11
    :goto_6
    if-eqz v18, :cond_12

    .line 587
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 588
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 589
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->isSectionTitle:Z

    .line 591
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentation()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 593
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationLeft()F

    move-result v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentation()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    .line 599
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->isComplete()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 600
    invoke-interface/range {p1 .. p1}, Lcom/itextpdf/text/Element;->type()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_14

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onChapterEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto/16 :goto_1

    .line 583
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v5, v4, v5

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getDepth()I

    move-result v6

    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/Section;->getTitle()Lcom/itextpdf/text/Paragraph;

    move-result-object v7

    move-object/from16 v4, p0

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSection(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;FILcom/itextpdf/text/Paragraph;)V

    goto/16 :goto_6

    .line 603
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-interface {v2, v4, v0, v5}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onSectionEnd(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;F)V

    goto/16 :goto_1

    .line 609
    .end local v2           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v18           #hasTitle:Z
    .end local v31           #section:Lcom/itextpdf/text/Section;
    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/List;

    move-object/from16 v20, v0

    .line 610
    .local v20, list:Lcom/itextpdf/text/List;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->isAlignindent()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 611
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->normalizeIndentation()V

    .line 614
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 617
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/List;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    goto/16 :goto_1

    .line 625
    .end local v20           #list:Lcom/itextpdf/text/List;
    :pswitch_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    .line 627
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/ListItem;

    move-object/from16 v21, v0

    .line 629
    .local v21, listItem:Lcom/itextpdf/text/ListItem;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getSpacingBefore()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 632
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getAlignment()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 635
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getTotalLeading()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfLine;->setListItem(Lcom/itextpdf/text/ListItem;)V

    .line 641
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/itextpdf/text/Element;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 643
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getSpacingAfter()F

    move-result v4

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getTotalLeading()F

    move-result v5

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->addSpacing(FFLcom/itextpdf/text/Font;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->hasToBeJustified()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->resetAlignment()V

    .line 650
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationLeft()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/ListItem;->getIndentationRight()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    .line 653
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    goto/16 :goto_1

    .line 657
    .end local v21           #listItem:Lcom/itextpdf/text/ListItem;
    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Rectangle;

    move-object/from16 v29, v0

    .line 658
    .local v29, rectangle:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 659
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 663
    .end local v29           #rectangle:Lcom/itextpdf/text/Rectangle;
    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfPTable;

    move-object/from16 v27, v0

    .line 664
    .local v27, ptable:Lcom/itextpdf/text/pdf/PdfPTable;
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfPTable;->size()I

    move-result v4

    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PdfPTable;->getHeaderRows()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 671
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->addPTable(Lcom/itextpdf/text/pdf/PdfPTable;)V

    .line 672
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    goto/16 :goto_1

    .line 677
    .end local v27           #ptable:Lcom/itextpdf/text/pdf/PdfPTable;
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 679
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/MultiColumnText;

    move-object/from16 v23, v0

    .line 680
    .local v23, multiText:Lcom/itextpdf/text/pdf/MultiColumnText;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v4, v1, v5}, Lcom/itextpdf/text/pdf/MultiColumnText;->write(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfDocument;F)F

    move-result v19

    .line 681
    .local v19, height:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float v4, v4, v19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    mul-float v6, v6, v19

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 683
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 692
    .end local v19           #height:F
    .end local v23           #multiText:Lcom/itextpdf/text/pdf/MultiColumnText;
    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/Image;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Image;)V

    goto/16 :goto_1

    .line 696
    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    move-object v3, v0

    .line 697
    .local v3, zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    move/from16 v34, v0

    sub-float v34, v9, v34

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leadingCount:I

    if-lez v9, :cond_17

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    :goto_7
    sub-float v9, v34, v9

    invoke-interface/range {v3 .. v9}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 698
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    goto/16 :goto_1

    .line 697
    :cond_17
    const/4 v9, 0x0

    goto :goto_7

    .line 703
    .end local v3           #zh:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    :pswitch_16
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/itextpdf/text/MarkedSection;

    if-eqz v4, :cond_18

    .line 704
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedSection;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/MarkedSection;->getTitle()Lcom/itextpdf/text/MarkedObject;

    move-result-object v22

    .line 705
    .local v22, mo:Lcom/itextpdf/text/MarkedObject;
    if-eqz v22, :cond_18

    .line 706
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/MarkedObject;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 709
    .end local v22           #mo:Lcom/itextpdf/text/MarkedObject;
    :cond_18
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/MarkedObject;

    move-object/from16 v22, v0

    .line 710
    .restart local v22       #mo:Lcom/itextpdf/text/MarkedObject;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/MarkedObject;->process(Lcom/itextpdf/text/ElementListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_11
        :pswitch_0
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method addAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "actionType"
    .parameter "action"

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 2071
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2073
    :cond_0
    if-nez p2, :cond_2

    .line 2074
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2077
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2079
    :cond_1
    return-void

    .line 2076
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 2114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2115
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 2116
    return-void
.end method

.method addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "formField"

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 2111
    return-void
.end method

.method addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 7
    .parameter "description"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2028
    if-nez p1, :cond_0

    .line 2029
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    .line 2030
    .local v0, desc:Lcom/itextpdf/text/pdf/PdfString;
    if-nez v0, :cond_2

    .line 2031
    const-string/jumbo p1, ""

    .line 2037
    .end local v0           #desc:Lcom/itextpdf/text/pdf/PdfString;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2, p1, v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->addDescription(Ljava/lang/String;Z)V

    .line 2038
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2039
    const-string/jumbo p1, "Unnamed"

    .line 2040
    :cond_1
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string/jumbo v4, "UnicodeBig"

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2041
    .local v1, fn:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2042
    .local v2, k:I
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2043
    add-int/lit8 v2, v2, 0x1

    .line 2044
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UnicodeBig"

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2034
    .end local v1           #fn:Ljava/lang/String;
    .end local v2           #k:I
    .restart local v0       #desc:Lcom/itextpdf/text/pdf/PdfString;
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2046
    .end local v0           #desc:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v1       #fn:Ljava/lang/String;
    .restart local v2       #k:I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    return-void
.end method

.method addJavaScript(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 5
    .parameter "js"

    .prologue
    .line 2001
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfAction;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2002
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "only.javascript.actions.are.allowed"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2004
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfDocument;->SIXTEEN_DIGITS:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->jsCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->jsCounter:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    return-void

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method addJavaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 3
    .parameter "name"
    .parameter "js"

    .prologue
    .line 2011
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfAction;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2012
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "only.javascript.actions.are.allowed"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2014
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    return-void

    .line 2016
    :catch_0
    move-exception v0

    .line 2017
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V
    .locals 1
    .parameter "outline"
    .parameter "name"

    .prologue
    .line 1784
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getPdfDestination()Lcom/itextpdf/text/pdf/PdfDestination;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    .line 1785
    return-void
.end method

.method addPTable(Lcom/itextpdf/text/pdf/PdfPTable;)V
    .locals 11
    .parameter "ptable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2366
    new-instance v0, Lcom/itextpdf/text/pdf/ColumnText;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 2369
    .local v0, ct:Lcom/itextpdf/text/pdf/ColumnText;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getKeepTogether()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v10}, Lcom/itextpdf/text/pdf/PdfDocument;->fitsPage(Lcom/itextpdf/text/pdf/PdfPTable;F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 2370
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 2374
    :cond_0
    iget v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1

    .line 2375
    new-instance v3, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v3}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 2376
    .local v3, p:Lcom/itextpdf/text/Paragraph;
    invoke-virtual {v3, v10}, Lcom/itextpdf/text/Paragraph;->setLeading(F)V

    .line 2377
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 2379
    .end local v3           #p:Lcom/itextpdf/text/Paragraph;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ColumnText;->addElement(Lcom/itextpdf/text/Element;)V

    .line 2380
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->isHeadersInEvent()Z

    move-result v1

    .line 2381
    .local v1, he:Z
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeadersInEvent(Z)V

    .line 2382
    const/4 v2, 0x0

    .line 2384
    .local v2, loop:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v7

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v8

    iget v9, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 2385
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    move-result v4

    .line 2386
    .local v4, status:I
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2

    .line 2387
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v6

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v10, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 2388
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2401
    :goto_1
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfPTable;->setHeadersInEvent(Z)V

    .line 2402
    return-void

    .line 2391
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v5

    iget v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColumnText;->getYLine()F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 2392
    add-int/lit8 v2, v2, 0x1

    .line 2395
    :goto_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 2396
    new-instance v5, Lcom/itextpdf/text/Paragraph;

    const-string/jumbo v6, "ERROR: Infinite table loop"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/Paragraph;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_1

    .line 2394
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 2399
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    goto :goto_0
.end method

.method protected addSpacing(FFLcom/itextpdf/text/Font;)V
    .locals 6
    .parameter "extraspace"
    .parameter "oldleading"
    .parameter "f"

    .prologue
    .line 1678
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    if-nez v3, :cond_0

    .line 1680
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v5

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1681
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1682
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1683
    invoke-virtual {p3}, Lcom/itextpdf/text/Font;->isUnderlined()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3}, Lcom/itextpdf/text/Font;->isStrikethru()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1684
    :cond_2
    new-instance v0, Lcom/itextpdf/text/Font;

    invoke-direct {v0, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/Font;)V

    .line 1685
    .end local p3
    .local v0, f:Lcom/itextpdf/text/Font;
    invoke-virtual {v0}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v2

    .line 1686
    .local v2, style:I
    and-int/lit8 v2, v2, -0x5

    .line 1687
    and-int/lit8 v2, v2, -0x9

    .line 1688
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/Font;->setStyle(I)V

    move-object p3, v0

    .line 1690
    .end local v0           #f:Lcom/itextpdf/text/Font;
    .end local v2           #style:I
    .restart local p3
    :cond_3
    new-instance v1, Lcom/itextpdf/text/Chunk;

    const-string/jumbo v3, " "

    invoke-direct {v1, v3, p3}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 1691
    .local v1, space:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v1, p0}, Lcom/itextpdf/text/Chunk;->process(Lcom/itextpdf/text/ElementListener;)Z

    .line 1692
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1693
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    goto :goto_0
.end method

.method addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1882
    return-void
.end method

.method public addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v0, :cond_0

    .line 329
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 330
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    .line 331
    return-void

    .line 333
    :cond_0
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "you.can.only.add.a.writer.to.a.pdfdocument.once"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method calculateOutlineCount()V
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1804
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V

    goto :goto_0
.end method

.method protected carriageReturn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 1130
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v0, :cond_1

    .line 1136
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1138
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1139
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1140
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 1149
    :cond_1
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1150
    iput v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 1151
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 1152
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v4, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 1155
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1156
    return-void

    .line 1146
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    goto :goto_0
.end method

.method public clearTextWrap()V
    .locals 3

    .prologue
    .line 2275
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float v0, v1, v2

    .line 2276
    .local v0, tmpHeight:F
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v1, :cond_0

    .line 2277
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    .line 2279
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 2280
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 2281
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 2283
    :cond_1
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 758
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->close:Z

    if-eqz v3, :cond_0

    .line 781
    :goto_0
    return-void

    .line 762
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 763
    .local v2, wasImage:Z
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 764
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newPage()Z

    .line 765
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasUnusedAnnotations()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 766
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "not.all.annotations.could.be.added.to.the.document.the.document.doesn.t.have.enough.pages"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v2           #wasImage:Z
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/itextpdf/text/ExceptionConverter;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 762
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 767
    .restart local v2       #wasImage:Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v1

    .line 768
    .local v1, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v1, :cond_5

    .line 769
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v1, v3, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onCloseDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 770
    :cond_5
    invoke-super {p0}, Lcom/itextpdf/text/Document;->close()V

    .line 772
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addLocalDestinations(Ljava/util/TreeMap;)V

    .line 773
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->calculateOutlineCount()V

    .line 774
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->writeOutlines()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 780
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->close()V

    goto :goto_0
.end method

.method protected ensureNewLine()V
    .locals 3

    .prologue
    .line 1181
    :try_start_0
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->newLine()V

    .line 1184
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :cond_1
    return-void

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, ex:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method fitsPage(Lcom/itextpdf/text/pdf/PdfPTable;F)Z
    .locals 4
    .parameter "table"
    .parameter "margin"

    .prologue
    const/4 v1, 0x0

    .line 2413
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->isLockedWidth()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2414
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getWidthPercentage()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    div-float v0, v2, v3

    .line 2415
    .local v0, totalWidth:F
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfPTable;->setTotalWidth(F)V

    .line 2418
    .end local v0           #totalWidth:F
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 2419
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->getTotalHeight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPTable;->spacingBefore()F

    move-result v1

    :cond_1
    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentTop()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, p2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected flushLines()F
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1200
    const/4 v8, 0x0

    .line 1238
    :goto_0
    return v8

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1210
    const/4 v8, 0x0

    goto :goto_0

    .line 1214
    :cond_2
    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    .line 1215
    .local v7, currentValues:[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1216
    .local v6, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    const/4 v8, 0x0

    .line 1217
    .local v8, displacement:F
    new-instance v11, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Ljava/lang/Float;-><init>(F)V

    .line 1218
    .local v11, lastBaseFactor:Ljava/lang/Float;
    const/4 v0, 0x1

    aput-object v11, v7, v0

    .line 1220
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfLine;

    .line 1221
    .local v10, l:Lcom/itextpdf/text/pdf/PdfLine;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->indentLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    add-float v12, v0, v1

    .line 1222
    .local v12, moveTextX:F
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1224
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v1, 0x0

    new-instance v2, Lcom/itextpdf/text/Phrase;

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listSymbol()Lcom/itextpdf/text/Chunk;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v3

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->listIndent()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->getYTLM()F

    move-result v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFF)V

    .line 1228
    :cond_3
    const/4 v0, 0x0

    aput-object v6, v7, v0

    .line 1230
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getSpaceCharRatio()F

    move-result v5

    move-object v0, p0

    move-object v1, v10

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)V

    .line 1232
    const/4 v0, 0x0

    aget-object v6, v7, v0

    .end local v6           #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    check-cast v6, Lcom/itextpdf/text/pdf/PdfFont;

    .line 1233
    .restart local v6       #currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v0

    add-float/2addr v8, v0

    .line 1234
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    neg-float v1, v12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    goto :goto_1

    .line 1237
    .end local v10           #l:Lcom/itextpdf/text/pdf/PdfLine;
    .end local v12           #moveTextX:F
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method getBoxSize(Ljava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 2
    .parameter "boxName"

    .prologue
    .line 2178
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 2179
    .local v0, r:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfRectangle;->getRectangle()Lcom/itextpdf/text/Rectangle;

    move-result-object v1

    .line 2180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;
    .locals 7
    .parameter "pages"

    .prologue
    .line 1719
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, p1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1722
    .local v1, catalog:Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1723
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGEMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->USEOUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1724
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1728
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfVersion()Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1731
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v3, v1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->addToCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1734
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    if-eqz v3, :cond_1

    .line 1735
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGELABELS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfPageLabels;->getDictionary(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1739
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getDocumentLevelJS()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->addNames(Ljava/util/TreeMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1742
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1743
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfDocument;->getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    .line 1744
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1748
    .end local v0           #action:Lcom/itextpdf/text/pdf/PdfAction;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v3, :cond_3

    .line 1749
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->additionalActions:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setAdditionalActions(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1753
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    if-eqz v3, :cond_4

    .line 1754
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->COLLECTION:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1758
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasValidAcroForm()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1760
    :try_start_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    :cond_5
    return-object v1

    .line 1746
    :cond_6
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    if-eqz v3, :cond_2

    .line 1747
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;->setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V

    goto :goto_0

    .line 1762
    :catch_0
    move-exception v2

    .line 1763
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method getDocumentFileAttachment()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentFileAttachment:Ljava/util/HashMap;

    return-object v0
.end method

.method getDocumentLevelJS()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->documentLevelJS:Ljava/util/HashMap;

    return-object v0
.end method

.method getInfo()Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->info:Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    return v0
.end method

.method getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;
    .locals 3
    .parameter "name"

    .prologue
    .line 1955
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 1956
    .local v1, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    if-nez v1, :cond_0

    .line 1957
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .end local v1           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/PdfDocument$Destination;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;)V

    .line 1958
    .restart local v1       #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    :cond_0
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    if-nez v2, :cond_2

    .line 1959
    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v2, :cond_1

    .line 1960
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    iput-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1962
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAction;

    iget-object v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1963
    .local v0, action:Lcom/itextpdf/text/pdf/PdfAction;
    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .line 1964
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    :goto_0
    return-object v0

    .line 1967
    .end local v0           #action:Lcom/itextpdf/text/pdf/PdfAction;
    :cond_2
    iget-object v0, v1, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->action:Lcom/itextpdf/text/pdf/PdfAction;

    .restart local v0       #action:Lcom/itextpdf/text/pdf/PdfAction;
    goto :goto_0
.end method

.method getMarkPoint()I
    .locals 1

    .prologue
    .line 2123
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    return v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    return-object v0
.end method

.method public getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    return-object v0
.end method

.method public getVerticalPosition(Z)F
    .locals 2
    .parameter "ensureNewLine"

    .prologue
    .line 1167
    if-eqz p1, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->ensureNewLine()V

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->top()F

    move-result v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method incMarkPoint()V
    .locals 1

    .prologue
    .line 2127
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    .line 2128
    return-void
.end method

.method indentBottom()F
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentBottom:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->bottom(F)F

    move-result v0

    return v0
.end method

.method protected indentLeft()F
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentLeft:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->listIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentLeft:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->left(F)F

    move-result v0

    return v0
.end method

.method protected indentRight()F
    .locals 2

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentRight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->sectionIndentRight:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v1, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->right(F)F

    move-result v0

    return v0
.end method

.method protected indentTop()F
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->top(F)F

    move-result v0

    return v0
.end method

.method protected initPage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1046
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageN:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageN:I

    .line 1049
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->resetAnnotations()V

    .line 1050
    new-instance v4, Lcom/itextpdf/text/pdf/PageResources;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PageResources;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    .line 1052
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->resetContent()V

    .line 1053
    new-instance v4, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1054
    new-instance v4, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 1055
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset()V

    .line 1056
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 1057
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->textEmptySize:I

    .line 1059
    iput v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->markPoint:I

    .line 1060
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->setNewPageSizeAndMargins()V

    .line 1061
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageEnd:F

    .line 1062
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 1063
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 1064
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentBottom:F

    .line 1065
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    iput v6, v4, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->indentTop:F

    .line 1066
    iput v6, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1069
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    .line 1070
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->hasBorders()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v4}, Lcom/itextpdf/text/Rectangle;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1073
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Element;)Z

    .line 1076
    :cond_1
    iget v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1077
    .local v2, oldleading:F
    iget v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 1079
    .local v1, oldAlignment:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->left()F

    move-result v5

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->top()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1080
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 1083
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    if-eqz v4, :cond_2

    .line 1084
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->add(Lcom/itextpdf/text/Image;)V

    .line 1085
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->imageWait:Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    :cond_2
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 1092
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    .line 1093
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1095
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v3

    .line 1096
    .local v3, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v3, :cond_4

    .line 1097
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    if-eqz v4, :cond_3

    .line 1098
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onOpenDocument(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 1100
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onStartPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 1102
    :cond_4
    iput-boolean v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->firstPageEvent:Z

    .line 1103
    return-void

    .line 1088
    .end local v3           #pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method isPageEmpty()Z
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStrictImageSequence()Z
    .locals 1

    .prologue
    .line 2257
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    return v0
.end method

.method localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z
    .locals 2
    .parameter "name"
    .parameter "destination"

    .prologue
    .line 1982
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 1983
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    if-nez v0, :cond_0

    .line 1984
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfDocument$Destination;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;)V

    .line 1985
    .restart local v0       #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    if-eqz v1, :cond_1

    .line 1986
    const/4 v1, 0x0

    .line 1991
    :goto_0
    return v1

    .line 1987
    :cond_1
    iput-object p2, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    .line 1988
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->localDestinations:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfDestination;->hasPage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1990
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 1991
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method localGoto(Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1907
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getLocalGotoAction(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v6

    .line 1908
    .local v6, action:Lcom/itextpdf/text/pdf/PdfAction;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1909
    return-void
.end method

.method protected newLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1115
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 1116
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->carriageReturn()V

    .line 1117
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->lines:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfLine;->height()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentHeight:F

    .line 1121
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfLine;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->indentRight()F

    move-result v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->alignment:I

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfLine;-><init>(FFIF)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->line:Lcom/itextpdf/text/pdf/PdfLine;

    .line 1122
    return-void
.end method

.method public newPage()Z
    .locals 19

    .prologue
    .line 804
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->lastElementType:I

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->isPageEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->setNewPageSizeAndMargins()V

    .line 807
    const/4 v1, 0x0

    .line 925
    :goto_0
    return v1

    .line 809
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->open:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->close:Z

    if-eqz v1, :cond_2

    .line 810
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the.document.is.not.open"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v14

    .line 813
    .local v14, pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v14, :cond_3

    .line 814
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    invoke-interface {v14, v1, v0}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onEndPage(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;)V

    .line 817
    :cond_3
    invoke-super/range {p0 .. p0}, Lcom/itextpdf/text/Document;->newPage()Z

    .line 820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    const/4 v2, 0x0

    iput v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentLeft:F

    .line 821
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->indentation:Lcom/itextpdf/text/pdf/PdfDocument$Indentation;

    const/4 v2, 0x0

    iput v2, v1, Lcom/itextpdf/text/pdf/PdfDocument$Indentation;->imageIndentRight:F

    .line 825
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->flushLines()F

    .line 830
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v16

    .line 833
    .local v16, rotation:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->isPdfX()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "art"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "trim"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 835
    new-instance v1, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string/jumbo v2, "only.one.of.artbox.or.trimbox.can.exist.in.the.page"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 918
    .end local v16           #rotation:I
    :catch_0
    move-exception v11

    .line 920
    .local v11, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v11}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 836
    .end local v11           #de:Lcom/itextpdf/text/DocumentException;
    .restart local v16       #rotation:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "art"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "trim"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 837
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "crop"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "trim"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v4, "crop"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getDefaultColorspace()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColorDiff(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 846
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->isRgbTransparencyBlending()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 847
    new-instance v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 848
    .local v10, dcs:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v1, v10}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColorDiff(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 851
    .end local v10           #dcs:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageResources:Lcom/itextpdf/text/pdf/PageResources;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PageResources;->getResources()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 855
    .local v15, resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v13, Lcom/itextpdf/text/pdf/PdfPage;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    move/from16 v0, v16

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-direct {v13, v1, v2, v15, v0}, Lcom/itextpdf/text/pdf/PdfPage;-><init>(Lcom/itextpdf/text/pdf/PdfRectangle;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 856
    .local v13, page:Lcom/itextpdf/text/pdf/PdfPage;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TABS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getTabs()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->xmpMetadata:[B

    if-eqz v1, :cond_8

    .line 862
    new-instance v17, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->xmpMetadata:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 863
    .local v17, xmp:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 864
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->XML:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;

    move-result-object v9

    .line 866
    .local v9, crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 867
    new-instance v7, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 868
    .local v7, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 869
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v7}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 871
    .end local v7           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_7
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 875
    .end local v9           #crypto:Lcom/itextpdf/text/pdf/PdfEncryption;
    .end local v17           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->transition:Lcom/itextpdf/text/pdf/PdfTransition;

    if-eqz v1, :cond_9

    .line 876
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TRANS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->transition:Lcom/itextpdf/text/pdf/PdfTransition;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfTransition;->getTransitionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 877
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->transition:Lcom/itextpdf/text/pdf/PdfTransition;

    .line 879
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    if-lez v1, :cond_a

    .line 880
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DUR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 881
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    .line 883
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v1, :cond_b

    .line 884
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 885
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 889
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-eqz v1, :cond_c

    .line 890
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->THUMB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 891
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 895
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getUserunit()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    .line 896
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->USERUNIT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getUserunit()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 900
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->hasUnusedAnnotations()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->rotateAnnotations(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 902
    .local v8, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    .line 903
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v13, v1, v8}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 907
    .end local v8           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 908
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->STRUCTPARENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPageNumber()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 910
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->textEmptySize:I

    if-le v1, v2, :cond_11

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 914
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v18, v0

    new-instance v1, Lcom/itextpdf/text/pdf/PdfContents;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfDocument;->graphics:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/text/pdf/PdfContents;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/Rectangle;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->add(Lcom/itextpdf/text/pdf/PdfPage;Lcom/itextpdf/text/pdf/PdfContents;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfDocument;->initPage()V

    .line 925
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 840
    .end local v13           #page:Lcom/itextpdf/text/pdf/PdfPage;
    .end local v15           #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->thisBoxSize:Ljava/util/HashMap;

    const-string/jumbo v2, "trim"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfRectangle;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 922
    .end local v16           #rotation:I
    :catch_1
    move-exception v12

    .line 923
    .local v12, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v12}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 913
    .end local v12           #ioe:Ljava/io/IOException;
    .restart local v13       #page:Lcom/itextpdf/text/pdf/PdfPage;
    .restart local v15       #resources:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v16       #rotation:I
    :cond_11
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument;->text:Lcom/itextpdf/text/pdf/PdfContentByte;
    :try_end_2
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public open()V
    .locals 3

    .prologue
    .line 734
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->open:Z

    if-nez v1, :cond_0

    .line 735
    invoke-super {p0}, Lcom/itextpdf/text/Document;->open()V

    .line 736
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->open()V

    .line 737
    new-instance v1, Lcom/itextpdf/text/pdf/PdfOutline;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfOutline;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 738
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->currentOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    .line 741
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->initPage()V
    :try_end_0
    .catch Lcom/itextpdf/text/DocumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, de:Lcom/itextpdf/text/DocumentException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V
    .locals 7
    .parameter "outline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1847
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->setIndirectReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1848
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1849
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1850
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v2

    .line 1851
    .local v2, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOutline;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1852
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1853
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDocument;->outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1852
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 1855
    if-lez v0, :cond_2

    .line 1856
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1857
    :cond_2
    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_3

    .line 1858
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1854
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1860
    :cond_4
    if-lez v3, :cond_5

    .line 1861
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1862
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->LAST:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Lcom/itextpdf/text/pdf/PdfOutline;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1864
    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_6

    .line 1865
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfOutline;

    .line 1866
    .local v1, kid:Lcom/itextpdf/text/pdf/PdfOutline;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1864
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1868
    .end local v1           #kid:Lcom/itextpdf/text/pdf/PdfOutline;
    :cond_6
    return-void
.end method

.method remoteGoto(Ljava/lang/String;IFFFF)V
    .locals 7
    .parameter "filename"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1934
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v6, p1, p2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;I)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1935
    return-void
.end method

.method remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "filename"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1921
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-direct {v6, p1, p2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1922
    return-void
.end method

.method public resetPageCount()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-super {p0}, Lcom/itextpdf/text/Document;->resetPageCount()V

    goto :goto_0
.end method

.method setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    .locals 7
    .parameter "action"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 1945
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1946
    return-void
.end method

.method setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V
    .locals 2
    .parameter "boxName"
    .parameter "size"

    .prologue
    .line 2147
    if-nez p2, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    :goto_0
    return-void

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->boxSize:Ljava/util/HashMap;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCollection(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 0
    .parameter "collection"

    .prologue
    .line 2090
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->collection:Lcom/itextpdf/text/pdf/collection/PdfCollection;

    .line 2091
    return-void
.end method

.method setCropBoxSize(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "crop"

    .prologue
    .line 2143
    const-string/jumbo v0, "crop"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V

    .line 2144
    return-void
.end method

.method setDuration(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 2209
    if-lez p1, :cond_0

    .line 2210
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    .line 2213
    :goto_0
    return-void

    .line 2212
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->duration:I

    goto :goto_0
.end method

.method setLeading(F)V
    .locals 0
    .parameter "leading"

    .prologue
    .line 364
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->leading:F

    .line 365
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 1
    .parameter "MarginMirroring"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    const/4 v0, 0x0

    .line 990
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setMarginMirroring(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 1
    .parameter "MarginMirroringTopBottom"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1002
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setMarginMirroringTopBottom(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMargins(FFFF)Z
    .locals 1
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 977
    :goto_0
    return v0

    .line 973
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    .line 974
    iput p2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    .line 975
    iput p3, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    .line 976
    iput p4, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    .line 977
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setNewPageSizeAndMargins()V
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageSize:Lcom/itextpdf/text/Rectangle;

    .line 2155
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginMirroring:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2156
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginRight:F

    .line 2157
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginLeft:F

    .line 2163
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginMirroringTopBottom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 2164
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginTop:F

    .line 2165
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginBottom:F

    .line 2171
    :goto_1
    return-void

    .line 2160
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginLeft:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginLeft:F

    .line 2161
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginRight:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginRight:F

    goto :goto_0

    .line 2168
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginTop:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginTop:F

    .line 2169
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextMarginBottom:F

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->marginBottom:F

    goto :goto_1
.end method

.method setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 2065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    .line 2066
    return-void
.end method

.method setOpenAction(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionName:Ljava/lang/String;

    .line 2059
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->openActionAction:Lcom/itextpdf/text/pdf/PdfAction;

    .line 2060
    return-void
.end method

.method setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "actionType"
    .parameter "action"

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2228
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageAA:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2229
    return-void
.end method

.method public setPageCount(I)V
    .locals 1
    .parameter "pageN"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-super {p0, p1}, Lcom/itextpdf/text/Document;->setPageCount(I)V

    goto :goto_0
.end method

.method setPageEmpty(Z)V
    .locals 0
    .parameter "pageEmpty"

    .prologue
    .line 2189
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageEmpty:Z

    .line 2190
    return-void
.end method

.method setPageLabels(Lcom/itextpdf/text/pdf/PdfPageLabels;)V
    .locals 0
    .parameter "pageLabels"

    .prologue
    .line 1892
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->pageLabels:Lcom/itextpdf/text/pdf/PdfPageLabels;

    .line 1893
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    .line 941
    :cond_0
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/Rectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->nextPageSize:Lcom/itextpdf/text/Rectangle;

    .line 942
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->annotationsImp:Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->setSigFlags(I)V

    .line 2107
    return-void
.end method

.method setStrictImageSequence(Z)V
    .locals 0
    .parameter "strictImageSequence"

    .prologue
    .line 2265
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->strictImageSequence:Z

    .line 2266
    return-void
.end method

.method setThumbnail(Lcom/itextpdf/text/Image;)V
    .locals 2
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->thumb:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 2236
    return-void
.end method

.method setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
    .locals 0
    .parameter "transition"

    .prologue
    .line 2220
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->transition:Lcom/itextpdf/text/pdf/PdfTransition;

    .line 2221
    return-void
.end method

.method setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->viewerPreferences:Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfViewerPreferencesImp;->setViewerPreferences(I)V

    .line 1877
    return-void
.end method

.method public setXmpMetadata([B)V
    .locals 0
    .parameter "xmpMetadata"

    .prologue
    .line 794
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->xmpMetadata:[B

    .line 795
    return-void
.end method

.method traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V
    .locals 5
    .parameter "outline"

    .prologue
    .line 1810
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v1

    .line 1811
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOutline;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->parent()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v2

    .line 1812
    .local v2, parent:Lcom/itextpdf/text/pdf/PdfOutline;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1813
    if-eqz v2, :cond_0

    .line 1814
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    .line 1831
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1819
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfDocument;->traverseOutlineCount(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1821
    :cond_2
    if-eqz v2, :cond_0

    .line 1822
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1823
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    goto :goto_0

    .line 1826
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    .line 1827
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfOutline;->getCount()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfOutline;->setCount(I)V

    goto :goto_0
.end method

.method writeLineToContent(Lcom/itextpdf/text/pdf/PdfLine;Lcom/itextpdf/text/pdf/PdfContentByte;Lcom/itextpdf/text/pdf/PdfContentByte;[Ljava/lang/Object;F)V
    .locals 89
    .parameter "line"
    .parameter "text"
    .parameter "graphics"
    .parameter "currentValues"
    .parameter "ratio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v4, 0x0

    aget-object v42, p4, v4

    check-cast v42, Lcom/itextpdf/text/pdf/PdfFont;

    .line 1258
    .local v42, currentFont:Lcom/itextpdf/text/pdf/PdfFont;
    const/4 v4, 0x1

    aget-object v4, p4, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v56

    .line 1263
    .local v56, lastBaseFactor:F
    const/16 v49, 0x0

    .line 1264
    .local v49, hangingCorrection:F
    const/high16 v18, 0x3f80

    .line 1265
    .local v18, hScale:F
    const/high16 v58, 0x7fc0

    .line 1266
    .local v58, lastHScale:F
    const/16 v35, 0x0

    .line 1267
    .local v35, baseWordSpacing:F
    const/16 v33, 0x0

    .line 1268
    .local v33, baseCharacterSpacing:F
    const/16 v47, 0x0

    .line 1270
    .local v47, glueWidth:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->numberOfSpaces()I

    move-result v63

    .line 1271
    .local v63, numberOfSpaces:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->GetLineLengthUtf32()I

    move-result v60

    .line 1273
    .local v60, lineLen:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->hasToBeJustified()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v63, :cond_0

    const/4 v4, 0x1

    move/from16 v0, v60

    if-le v0, v4, :cond_e

    :cond_0
    const/16 v52, 0x1

    .line 1274
    .local v52, isJustified:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getSeparatorCount()I

    move-result v74

    .line 1275
    .local v74, separatorCount:I
    if-lez v74, :cond_f

    .line 1276
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v74

    int-to-float v6, v0

    div-float v47, v4, v6

    .line 1305
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getLastStrokeChunk()I

    move-result v57

    .line 1306
    .local v57, lastChunkStroke:I
    const/16 v39, 0x0

    .line 1307
    .local v39, chunkStrokeIdx:I
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v12

    .line 1308
    .local v12, xMarker:F
    move v5, v12

    .line 1309
    .local v5, baseXMarker:F
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getYTLM()F

    move-result v9

    .line 1310
    .local v9, yMarker:F
    const/16 v29, 0x0

    .line 1311
    .local v29, adjustMatrix:Z
    const/4 v14, 0x0

    .line 1314
    .local v14, tabPosition:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .local v53, j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    move/from16 v81, v14

    .end local v14           #tabPosition:F
    .local v81, tabPosition:F
    :goto_2
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1315
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/itextpdf/text/pdf/PdfChunk;

    .line 1316
    .local v38, chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->color()Lcom/itextpdf/text/BaseColor;

    move-result-object v40

    .line 1317
    .local v40, color:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v45

    .line 1318
    .local v45, fontSize:F
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v6, 0x1

    move/from16 v0, v45

    invoke-virtual {v4, v6, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v32

    .line 1319
    .local v32, ascender:F
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    const/4 v6, 0x3

    move/from16 v0, v45

    invoke-virtual {v4, v6, v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v43

    .line 1320
    .local v43, descender:F
    const/high16 v48, 0x3f80

    .line 1322
    .end local v18           #hScale:F
    .local v48, hScale:F
    move/from16 v0, v39

    move/from16 v1, v57

    if-gt v0, v1, :cond_4e

    .line 1324
    if-eqz v52, :cond_13

    .line 1325
    move-object/from16 v0, v38

    move/from16 v1, v33

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;->getWidthCorrected(FF)F

    move-result v88

    .line 1330
    .local v88, width:F
    :goto_3
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isStroked()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1331
    add-int/lit8 v4, v39, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfLine;->getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v62

    .line 1332
    .local v62, nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isSeparator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1333
    move/from16 v88, v47

    .line 1334
    const-string/jumbo v4, "SEPARATOR"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v73, v4

    check-cast v73, [Ljava/lang/Object;

    .line 1335
    .local v73, sep:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v73, v4

    check-cast v3, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1336
    .local v3, di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    const/4 v4, 0x1

    aget-object v87, v73, v4

    check-cast v87, Ljava/lang/Boolean;

    .line 1337
    .local v87, vertical:Ljava/lang/Boolean;
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1338
    add-float v6, v9, v43

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->getOriginalWidth()F

    move-result v4

    add-float v7, v5, v4

    sub-float v8, v32, v43

    move-object/from16 v4, p3

    invoke-interface/range {v3 .. v9}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1344
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v73           #sep:[Ljava/lang/Object;
    .end local v87           #vertical:Ljava/lang/Boolean;
    :cond_2
    :goto_4
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1345
    const-string/jumbo v4, "TAB"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v80, v4

    check-cast v80, [Ljava/lang/Object;

    .line 1346
    .local v80, tab:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v3, v80, v4

    check-cast v3, Lcom/itextpdf/text/pdf/draw/DrawInterface;

    .line 1347
    .restart local v3       #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    const/4 v4, 0x1

    aget-object v4, v80, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v4, 0x3

    aget-object v4, v80, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v14, v6, v4

    .line 1348
    .end local v81           #tabPosition:F
    .restart local v14       #tabPosition:F
    cmpl-float v4, v14, v12

    if-lez v4, :cond_3

    .line 1349
    add-float v13, v9, v43

    sub-float v15, v32, v43

    move-object v10, v3

    move-object/from16 v11, p3

    move/from16 v16, v9

    invoke-interface/range {v10 .. v16}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    .line 1351
    :cond_3
    move/from16 v84, v12

    .line 1352
    .local v84, tmp:F
    move v12, v14

    .line 1353
    move/from16 v14, v84

    .line 1355
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v80           #tab:[Ljava/lang/Object;
    .end local v84           #tmp:F
    :goto_5
    const-string/jumbo v4, "BACKGROUND"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1356
    move/from16 v79, v56

    .line 1357
    .local v79, subtract:F
    if-eqz v62, :cond_4

    const-string/jumbo v4, "BACKGROUND"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1358
    const/16 v79, 0x0

    .line 1359
    :cond_4
    if-nez v62, :cond_5

    .line 1360
    add-float v79, v79, v49

    .line 1361
    :cond_5
    const-string/jumbo v4, "BACKGROUND"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v36, v4

    check-cast v36, [Ljava/lang/Object;

    .line 1362
    .local v36, bgr:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v36, v4

    check-cast v4, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1363
    const/4 v4, 0x1

    aget-object v4, v36, v4

    check-cast v4, [F

    move-object/from16 v44, v4

    check-cast v44, [F

    .line 1364
    .local v44, extra:[F
    const/4 v4, 0x0

    aget v4, v44, v4

    sub-float v4, v12, v4

    add-float v6, v9, v43

    const/4 v7, 0x1

    aget v7, v44, v7

    sub-float/2addr v6, v7

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v7

    add-float/2addr v6, v7

    sub-float v7, v88, v79

    const/4 v8, 0x0

    aget v8, v44, v8

    add-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v44, v8

    add-float/2addr v7, v8

    sub-float v8, v32, v43

    const/4 v10, 0x1

    aget v10, v44, v10

    add-float/2addr v8, v10

    const/4 v10, 0x3

    aget v10, v44, v10

    add-float/2addr v8, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 1369
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayFill(F)V

    .line 1371
    .end local v36           #bgr:[Ljava/lang/Object;
    .end local v44           #extra:[F
    .end local v79           #subtract:F
    :cond_6
    const-string/jumbo v4, "UNDERLINE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1372
    move/from16 v79, v56

    .line 1373
    .restart local v79       #subtract:F
    if-eqz v62, :cond_7

    const-string/jumbo v4, "UNDERLINE"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1374
    const/16 v79, 0x0

    .line 1375
    :cond_7
    if-nez v62, :cond_8

    .line 1376
    add-float v79, v79, v49

    .line 1377
    :cond_8
    const-string/jumbo v4, "UNDERLINE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    move-object/from16 v86, v4

    check-cast v86, [[Ljava/lang/Object;

    .line 1378
    .local v86, unders:[[Ljava/lang/Object;
    const/16 v72, 0x0

    .line 1379
    .local v72, scolor:Lcom/itextpdf/text/BaseColor;
    const/16 v54, 0x0

    .local v54, k:I
    :goto_6
    move-object/from16 v0, v86

    array-length v4, v0

    move/from16 v0, v54

    if-ge v0, v4, :cond_15

    .line 1380
    aget-object v64, v86, v54

    .line 1381
    .local v64, obj:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v72, v64, v4

    .end local v72           #scolor:Lcom/itextpdf/text/BaseColor;
    check-cast v72, Lcom/itextpdf/text/BaseColor;

    .line 1382
    .restart local v72       #scolor:Lcom/itextpdf/text/BaseColor;
    const/4 v4, 0x1

    aget-object v4, v64, v4

    check-cast v4, [F

    move-object/from16 v68, v4

    check-cast v68, [F

    .line 1383
    .local v68, ps:[F
    if-nez v72, :cond_9

    .line 1384
    move-object/from16 v72, v40

    .line 1385
    :cond_9
    if-eqz v72, :cond_a

    .line 1386
    move-object/from16 v0, p3

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 1387
    :cond_a
    const/4 v4, 0x0

    aget v4, v68, v4

    const/4 v6, 0x1

    aget v6, v68, v6

    mul-float v6, v6, v45

    add-float/2addr v4, v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1388
    const/4 v4, 0x2

    aget v4, v68, v4

    const/4 v6, 0x3

    aget v6, v68, v6

    mul-float v6, v6, v45

    add-float v75, v4, v6

    .line 1389
    .local v75, shift:F
    const/4 v4, 0x4

    aget v4, v68, v4

    float-to-int v0, v4

    move/from16 v37, v0

    .line 1390
    .local v37, cap2:I
    if-eqz v37, :cond_b

    .line 1391
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 1392
    :cond_b
    add-float v4, v9, v75

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1393
    add-float v4, v12, v88

    sub-float v4, v4, v79

    add-float v6, v9, v75

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 1395
    if-eqz v72, :cond_c

    .line 1396
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetGrayStroke()V

    .line 1397
    :cond_c
    if-eqz v37, :cond_d

    .line 1398
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 1379
    :cond_d
    add-int/lit8 v54, v54, 0x1

    goto :goto_6

    .line 1273
    .end local v5           #baseXMarker:F
    .end local v9           #yMarker:F
    .end local v12           #xMarker:F
    .end local v14           #tabPosition:F
    .end local v29           #adjustMatrix:Z
    .end local v32           #ascender:F
    .end local v37           #cap2:I
    .end local v38           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v39           #chunkStrokeIdx:I
    .end local v40           #color:Lcom/itextpdf/text/BaseColor;
    .end local v43           #descender:F
    .end local v45           #fontSize:F
    .end local v48           #hScale:F
    .end local v52           #isJustified:Z
    .end local v53           #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .end local v54           #k:I
    .end local v57           #lastChunkStroke:I
    .end local v62           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v64           #obj:[Ljava/lang/Object;
    .end local v68           #ps:[F
    .end local v72           #scolor:Lcom/itextpdf/text/BaseColor;
    .end local v74           #separatorCount:I
    .end local v75           #shift:F
    .end local v79           #subtract:F
    .end local v86           #unders:[[Ljava/lang/Object;
    .end local v88           #width:F
    .restart local v18       #hScale:F
    :cond_e
    const/16 v52, 0x0

    goto/16 :goto_0

    .line 1278
    .restart local v52       #isJustified:Z
    .restart local v74       #separatorCount:I
    :cond_f
    if-eqz v52, :cond_1

    if-nez v74, :cond_1

    .line 1279
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v63

    int-to-float v6, v0

    mul-float v6, v6, p5

    move/from16 v0, v60

    int-to-float v7, v0

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    mul-float v6, v6, v56

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_11

    .line 1280
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isRTL()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v4

    move/from16 v0, v63

    int-to-float v6, v0

    mul-float v6, v6, p5

    move/from16 v0, v60

    int-to-float v7, v0

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v6, v7

    mul-float v6, v6, v56

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1283
    :cond_10
    mul-float v35, p5, v56

    .line 1284
    move/from16 v33, v56

    goto/16 :goto_1

    .line 1287
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->widthLeft()F

    move-result v88

    .line 1288
    .restart local v88       #width:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfLine;->getChunk(I)Lcom/itextpdf/text/pdf/PdfChunk;

    move-result-object v55

    .line 1289
    .local v55, last:Lcom/itextpdf/text/pdf/PdfChunk;
    if-eqz v55, :cond_12

    .line 1290
    invoke-virtual/range {v55 .. v55}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v71

    .line 1292
    .local v71, s:Ljava/lang/String;
    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    const-string/jumbo v4, ".,;:\'"

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v71

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .local v20, c:C
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_12

    .line 1293
    move/from16 v65, v88

    .line 1294
    .local v65, oldWidth:F
    invoke-virtual/range {v55 .. v55}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v4

    const v6, 0x3ecccccd

    mul-float/2addr v4, v6

    add-float v88, v88, v4

    .line 1295
    sub-float v49, v88, v65

    .line 1298
    .end local v20           #c:C
    .end local v65           #oldWidth:F
    .end local v71           #s:Ljava/lang/String;
    :cond_12
    move/from16 v0, v63

    int-to-float v4, v0

    mul-float v4, v4, p5

    move/from16 v0, v60

    int-to-float v6, v0

    add-float/2addr v4, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v4, v6

    div-float v34, v88, v4

    .line 1299
    .local v34, baseFactor:F
    mul-float v35, p5, v34

    .line 1300
    move/from16 v33, v34

    .line 1301
    move/from16 v56, v34

    goto/16 :goto_1

    .line 1328
    .end local v18           #hScale:F
    .end local v34           #baseFactor:F
    .end local v55           #last:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v88           #width:F
    .restart local v5       #baseXMarker:F
    .restart local v9       #yMarker:F
    .restart local v12       #xMarker:F
    .restart local v29       #adjustMatrix:Z
    .restart local v32       #ascender:F
    .restart local v38       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v39       #chunkStrokeIdx:I
    .restart local v40       #color:Lcom/itextpdf/text/BaseColor;
    .restart local v43       #descender:F
    .restart local v45       #fontSize:F
    .restart local v48       #hScale:F
    .restart local v53       #j:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfChunk;>;"
    .restart local v57       #lastChunkStroke:I
    .restart local v81       #tabPosition:F
    :cond_13
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v88

    .restart local v88       #width:F
    goto/16 :goto_3

    .line 1341
    .restart local v3       #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .restart local v62       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v73       #sep:[Ljava/lang/Object;
    .restart local v87       #vertical:Ljava/lang/Boolean;
    :cond_14
    add-float v13, v9, v43

    add-float v14, v12, v88

    sub-float v15, v32, v43

    move-object v10, v3

    move-object/from16 v11, p3

    move/from16 v16, v9

    invoke-interface/range {v10 .. v16}, Lcom/itextpdf/text/pdf/draw/DrawInterface;->draw(Lcom/itextpdf/text/pdf/PdfContentByte;FFFFF)V

    goto/16 :goto_4

    .line 1400
    .end local v3           #di:Lcom/itextpdf/text/pdf/draw/DrawInterface;
    .end local v73           #sep:[Ljava/lang/Object;
    .end local v81           #tabPosition:F
    .end local v87           #vertical:Ljava/lang/Boolean;
    .restart local v14       #tabPosition:F
    .restart local v54       #k:I
    .restart local v72       #scolor:Lcom/itextpdf/text/BaseColor;
    .restart local v79       #subtract:F
    .restart local v86       #unders:[[Ljava/lang/Object;
    :cond_15
    const/high16 v4, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1402
    .end local v54           #k:I
    .end local v72           #scolor:Lcom/itextpdf/text/BaseColor;
    .end local v79           #subtract:F
    .end local v86           #unders:[[Ljava/lang/Object;
    :cond_16
    const-string/jumbo v4, "ACTION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1403
    move/from16 v79, v56

    .line 1404
    .restart local v79       #subtract:F
    if-eqz v62, :cond_17

    const-string/jumbo v4, "ACTION"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1405
    const/16 v79, 0x0

    .line 1406
    :cond_17
    if-nez v62, :cond_18

    .line 1407
    add-float v79, v79, v49

    .line 1408
    :cond_18
    new-instance v15, Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v16, v0

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v18, v4, v6

    add-float v4, v12, v88

    sub-float v19, v4, v79

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v20, v4, v6

    const-string/jumbo v4, "ACTION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfAction;

    move/from16 v17, v12

    invoke-direct/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1410
    .end local v79           #subtract:F
    :cond_19
    const-string/jumbo v4, "REMOTEGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1411
    move/from16 v79, v56

    .line 1412
    .restart local v79       #subtract:F
    if-eqz v62, :cond_1a

    const-string/jumbo v4, "REMOTEGOTO"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1413
    const/16 v79, 0x0

    .line 1414
    :cond_1a
    if-nez v62, :cond_1b

    .line 1415
    add-float v79, v79, v49

    .line 1416
    :cond_1b
    const-string/jumbo v4, "REMOTEGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v64, v4

    check-cast v64, [Ljava/lang/Object;

    .line 1417
    .restart local v64       #obj:[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v16, v64, v4

    check-cast v16, Ljava/lang/String;

    .line 1418
    .local v16, filename:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v64, v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 1419
    const/4 v4, 0x1

    aget-object v17, v64, v4

    check-cast v17, Ljava/lang/String;

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v19, v4, v6

    add-float v4, v12, v88

    sub-float v20, v4, v79

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v21, v4, v6

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 1423
    .end local v16           #filename:Ljava/lang/String;
    .end local v64           #obj:[Ljava/lang/Object;
    .end local v79           #subtract:F
    :cond_1c
    :goto_7
    const-string/jumbo v4, "LOCALGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1424
    move/from16 v79, v56

    .line 1425
    .restart local v79       #subtract:F
    if-eqz v62, :cond_1d

    const-string/jumbo v4, "LOCALGOTO"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1426
    const/16 v79, 0x0

    .line 1427
    :cond_1d
    if-nez v62, :cond_1e

    .line 1428
    add-float v79, v79, v49

    .line 1429
    :cond_1e
    const-string/jumbo v4, "LOCALGOTO"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-float v4, v12, v88

    sub-float v10, v4, v79

    add-float v11, v9, v45

    move-object/from16 v6, p0

    move v8, v12

    invoke-virtual/range {v6 .. v11}, Lcom/itextpdf/text/pdf/PdfDocument;->localGoto(Ljava/lang/String;FFFF)V

    .line 1431
    .end local v79           #subtract:F
    :cond_1f
    const-string/jumbo v4, "LOCALDESTINATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1432
    move/from16 v79, v56

    .line 1433
    .restart local v79       #subtract:F
    if-eqz v62, :cond_20

    const-string/jumbo v4, "LOCALDESTINATION"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1434
    const/16 v79, 0x0

    .line 1435
    :cond_20
    if-nez v62, :cond_21

    .line 1436
    add-float v79, v79, v49

    .line 1437
    :cond_21
    const-string/jumbo v4, "LOCALDESTINATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfDestination;

    const/4 v7, 0x0

    add-float v8, v9, v45

    const/4 v10, 0x0

    invoke-direct {v6, v7, v12, v8, v10}, Lcom/itextpdf/text/pdf/PdfDestination;-><init>(IFFF)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    .line 1439
    .end local v79           #subtract:F
    :cond_22
    const-string/jumbo v4, "GENERICTAG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1440
    move/from16 v79, v56

    .line 1441
    .restart local v79       #subtract:F
    if-eqz v62, :cond_23

    const-string/jumbo v4, "GENERICTAG"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1442
    const/16 v79, 0x0

    .line 1443
    :cond_23
    if-nez v62, :cond_24

    .line 1444
    add-float v79, v79, v49

    .line 1445
    :cond_24
    new-instance v69, Lcom/itextpdf/text/Rectangle;

    add-float v4, v12, v88

    sub-float v4, v4, v79

    add-float v6, v9, v45

    move-object/from16 v0, v69

    invoke-direct {v0, v12, v9, v4, v6}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .line 1446
    .local v69, rect:Lcom/itextpdf/text/Rectangle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;

    move-result-object v67

    .line 1447
    .local v67, pev:Lcom/itextpdf/text/pdf/PdfPageEvent;
    if-eqz v67, :cond_25

    .line 1448
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const-string/jumbo v4, "GENERICTAG"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    move-object/from16 v2, v69

    invoke-interface {v0, v6, v1, v2, v4}, Lcom/itextpdf/text/pdf/PdfPageEvent;->onGenericTag(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Document;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 1450
    .end local v67           #pev:Lcom/itextpdf/text/pdf/PdfPageEvent;
    .end local v69           #rect:Lcom/itextpdf/text/Rectangle;
    .end local v79           #subtract:F
    :cond_25
    const-string/jumbo v4, "PDFANNOTATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1451
    move/from16 v79, v56

    .line 1452
    .restart local v79       #subtract:F
    if-eqz v62, :cond_26

    const-string/jumbo v4, "PDFANNOTATION"

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1453
    const/16 v79, 0x0

    .line 1454
    :cond_26
    if-nez v62, :cond_27

    .line 1455
    add-float v79, v79, v49

    .line 1456
    :cond_27
    const-string/jumbo v4, "PDFANNOTATION"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfFormField;->shallowDuplicate(Lcom/itextpdf/text/pdf/PdfAnnotation;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v30

    .line 1457
    .local v30, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfRectangle;

    add-float v7, v9, v43

    add-float v8, v12, v88

    sub-float v8, v8, v79

    add-float v10, v9, v32

    invoke-direct {v6, v12, v7, v8, v10}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1458
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1460
    .end local v30           #annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    .end local v79           #subtract:F
    :cond_28
    const-string/jumbo v4, "SKEW"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    move-object/from16 v66, v4

    check-cast v66, [F

    .line 1461
    .local v66, params:[F
    const-string/jumbo v4, "HSCALE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Float;

    .line 1462
    .local v50, hs:Ljava/lang/Float;
    if-nez v66, :cond_29

    if-eqz v50, :cond_4b

    .line 1463
    :cond_29
    const/16 v19, 0x0

    .local v19, b:F
    const/16 v20, 0x0

    .line 1464
    .local v20, c:F
    if-eqz v66, :cond_2a

    .line 1465
    const/4 v4, 0x0

    aget v19, v66, v4

    .line 1466
    const/4 v4, 0x1

    aget v20, v66, v4

    .line 1468
    :cond_2a
    if-eqz v50, :cond_4a

    .line 1469
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Float;->floatValue()F

    move-result v18

    .line 1470
    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    :goto_8
    const/high16 v21, 0x3f80

    move-object/from16 v17, p2

    move/from16 v22, v12

    move/from16 v23, v9

    invoke-virtual/range {v17 .. v23}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1472
    .end local v19           #b:F
    .end local v20           #c:F
    :goto_9
    const-string/jumbo v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1473
    const-string/jumbo v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Float;

    .line 1474
    .local v41, cs:Ljava/lang/Float;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1476
    .end local v41           #cs:Ljava/lang/Float;
    :cond_2b
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1477
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImage()Lcom/itextpdf/text/Image;

    move-result-object v22

    .line 1478
    .local v22, image:Lcom/itextpdf/text/Image;
    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v61

    .line 1479
    .local v61, matrix:[F
    const/4 v4, 0x4

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetX()F

    move-result v6

    add-float/2addr v6, v12

    const/4 v7, 0x4

    aget v7, v61, v7

    sub-float/2addr v6, v7

    aput v6, v61, v4

    .line 1480
    const/4 v4, 0x5

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getImageOffsetY()F

    move-result v6

    add-float/2addr v6, v9

    const/4 v7, 0x5

    aget v7, v61, v7

    sub-float/2addr v6, v7

    aput v6, v61, v4

    .line 1481
    const/4 v4, 0x0

    aget v23, v61, v4

    const/4 v4, 0x1

    aget v24, v61, v4

    const/4 v4, 0x2

    aget v25, v61, v4

    const/4 v4, 0x3

    aget v26, v61, v4

    const/4 v4, 0x4

    aget v27, v61, v4

    const/4 v4, 0x5

    aget v28, v61, v4

    move-object/from16 v21, p3

    invoke-virtual/range {v21 .. v28}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFF)V

    .line 1482
    add-float v4, v12, v56

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v6

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1485
    .end local v22           #image:Lcom/itextpdf/text/Image;
    .end local v50           #hs:Ljava/lang/Float;
    .end local v61           #matrix:[F
    .end local v62           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v66           #params:[F
    :cond_2c
    :goto_a
    add-float v12, v12, v88

    .line 1486
    add-int/lit8 v39, v39, 0x1

    .line 1489
    .end local v88           #width:F
    :goto_b
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfFont;->compareTo(Lcom/itextpdf/text/pdf/PdfFont;)I

    move-result v4

    if-eqz v4, :cond_2d

    .line 1490
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->font()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v42

    .line 1491
    invoke-virtual/range {v42 .. v42}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    invoke-virtual/range {v42 .. v42}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 1493
    :cond_2d
    const/16 v70, 0x0

    .line 1494
    .local v70, rise:F
    const-string/jumbo v4, "TEXTRENDERMODE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object/from16 v83, v4

    check-cast v83, [Ljava/lang/Object;

    .line 1495
    .local v83, textRender:[Ljava/lang/Object;
    const/16 v85, 0x0

    .line 1496
    .local v85, tr:I
    const/high16 v78, 0x3f80

    .line 1497
    .local v78, strokeWidth:F
    const/16 v77, 0x0

    .line 1498
    .local v77, strokeColor:Lcom/itextpdf/text/BaseColor;
    const-string/jumbo v4, "SUBSUPSCRIPT"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Float;

    .line 1499
    .local v46, fr:Ljava/lang/Float;
    if-eqz v83, :cond_32

    .line 1500
    const/4 v4, 0x0

    aget-object v4, v83, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v85, v4, 0x3

    .line 1501
    if-eqz v85, :cond_2e

    .line 1502
    move-object/from16 v0, p2

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 1503
    :cond_2e
    const/4 v4, 0x1

    move/from16 v0, v85

    if-eq v0, v4, :cond_2f

    const/4 v4, 0x2

    move/from16 v0, v85

    if-ne v0, v4, :cond_32

    .line 1504
    :cond_2f
    const/4 v4, 0x1

    aget-object v4, v83, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v78

    .line 1505
    const/high16 v4, 0x3f80

    cmpl-float v4, v78, v4

    if-eqz v4, :cond_30

    .line 1506
    move-object/from16 v0, p2

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1507
    :cond_30
    const/4 v4, 0x2

    aget-object v77, v83, v4

    .end local v77           #strokeColor:Lcom/itextpdf/text/BaseColor;
    check-cast v77, Lcom/itextpdf/text/BaseColor;

    .line 1508
    .restart local v77       #strokeColor:Lcom/itextpdf/text/BaseColor;
    if-nez v77, :cond_31

    .line 1509
    move-object/from16 v77, v40

    .line 1510
    :cond_31
    if-eqz v77, :cond_32

    .line 1511
    move-object/from16 v0, p2

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 1514
    :cond_32
    if-eqz v46, :cond_33

    .line 1515
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Float;->floatValue()F

    move-result v70

    .line 1516
    :cond_33
    if-eqz v40, :cond_34

    .line 1517
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1518
    :cond_34
    const/4 v4, 0x0

    cmpl-float v4, v70, v4

    if-eqz v4, :cond_35

    .line 1519
    move-object/from16 v0, p2

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRise(F)V

    .line 1520
    :cond_35
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isImage()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1521
    const/16 v29, 0x1

    .line 1568
    :goto_c
    const/4 v4, 0x0

    cmpl-float v4, v70, v4

    if-eqz v4, :cond_36

    .line 1569
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRise(F)V

    .line 1570
    :cond_36
    if-eqz v40, :cond_37

    .line 1571
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 1572
    :cond_37
    if-eqz v85, :cond_38

    .line 1573
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextRenderingMode(I)V

    .line 1574
    :cond_38
    if-eqz v77, :cond_39

    .line 1575
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 1576
    :cond_39
    const/high16 v4, 0x3f80

    cmpl-float v4, v78, v4

    if-eqz v4, :cond_3a

    .line 1577
    const/high16 v4, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 1578
    :cond_3a
    const-string/jumbo v4, "SKEW"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string/jumbo v4, "HSCALE"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1579
    :cond_3b
    const/16 v29, 0x1

    .line 1580
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 1582
    :cond_3c
    const-string/jumbo v4, "CHAR_SPACING"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1583
    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    :cond_3d
    move/from16 v81, v14

    .line 1585
    .end local v14           #tabPosition:F
    .restart local v81       #tabPosition:F
    goto/16 :goto_2

    .line 1421
    .end local v18           #hScale:F
    .end local v46           #fr:Ljava/lang/Float;
    .end local v70           #rise:F
    .end local v77           #strokeColor:Lcom/itextpdf/text/BaseColor;
    .end local v78           #strokeWidth:F
    .end local v81           #tabPosition:F
    .end local v83           #textRender:[Ljava/lang/Object;
    .end local v85           #tr:I
    .restart local v14       #tabPosition:F
    .restart local v16       #filename:Ljava/lang/String;
    .restart local v48       #hScale:F
    .restart local v62       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v64       #obj:[Ljava/lang/Object;
    .restart local v79       #subtract:F
    .restart local v88       #width:F
    :cond_3e
    const/4 v4, 0x1

    aget-object v4, v64, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-float v4, v9, v43

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v19, v4, v6

    add-float v4, v12, v88

    sub-float v20, v4, v79

    add-float v4, v9, v32

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->getTextRise()F

    move-result v6

    add-float v21, v4, v6

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v15 .. v21}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;IFFFF)V

    goto/16 :goto_7

    .line 1523
    .end local v16           #filename:Ljava/lang/String;
    .end local v48           #hScale:F
    .end local v62           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v64           #obj:[Ljava/lang/Object;
    .end local v79           #subtract:F
    .end local v88           #width:F
    .restart local v18       #hScale:F
    .restart local v46       #fr:Ljava/lang/Float;
    .restart local v70       #rise:F
    .restart local v77       #strokeColor:Lcom/itextpdf/text/BaseColor;
    .restart local v78       #strokeWidth:F
    .restart local v83       #textRender:[Ljava/lang/Object;
    .restart local v85       #tr:I
    :cond_3f
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isHorizontalSeparator()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1524
    new-instance v31, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1525
    .local v31, array:Lcom/itextpdf/text/pdf/PdfTextArray;
    move/from16 v0, v47

    neg-float v4, v0

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v4, v4, v18

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1526
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1528
    .end local v31           #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_40
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isTab()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1529
    new-instance v31, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1530
    .restart local v31       #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    sub-float v4, v14, v12

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v4, v4, v18

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1531
    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1535
    .end local v31           #array:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_41
    if-eqz v52, :cond_45

    if-lez v63, :cond_45

    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->isSpecialEncoding()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1536
    cmpl-float v4, v18, v58

    if-eqz v4, :cond_42

    .line 1537
    move/from16 v58, v18

    .line 1538
    div-float v4, v35, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1539
    div-float v4, v33, v18

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getCharacterSpacing()F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1541
    :cond_42
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v71

    .line 1542
    .restart local v71       #s:Ljava/lang/String;
    const/16 v4, 0x20

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v51

    .line 1543
    .local v51, idx:I
    if-gez v51, :cond_43

    .line 1544
    move-object/from16 v0, p2

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1546
    :cond_43
    move/from16 v0, v35

    neg-float v4, v0

    const/high16 v6, 0x447a

    mul-float/2addr v4, v6

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v6

    div-float/2addr v4, v6

    div-float v76, v4, v18

    .line 1547
    .local v76, spaceCorrection:F
    new-instance v82, Lcom/itextpdf/text/pdf/PdfTextArray;

    const/4 v4, 0x0

    move-object/from16 v0, v71

    move/from16 v1, v51

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v82, textArray:Lcom/itextpdf/text/pdf/PdfTextArray;
    move/from16 v59, v51

    .line 1549
    .local v59, lastIdx:I
    :goto_d
    const/16 v4, 0x20

    add-int/lit8 v6, v59, 0x1

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v51

    if-ltz v51, :cond_44

    .line 1550
    move-object/from16 v0, v82

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1551
    move-object/from16 v0, v71

    move/from16 v1, v59

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1552
    move/from16 v59, v51

    goto :goto_d

    .line 1554
    :cond_44
    move-object/from16 v0, v82

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    .line 1555
    move-object/from16 v0, v71

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p2

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    goto/16 :goto_c

    .line 1560
    .end local v51           #idx:I
    .end local v59           #lastIdx:I
    .end local v71           #s:Ljava/lang/String;
    .end local v76           #spaceCorrection:F
    .end local v82           #textArray:Lcom/itextpdf/text/pdf/PdfTextArray;
    :cond_45
    if-eqz v52, :cond_46

    cmpl-float v4, v18, v58

    if-eqz v4, :cond_46

    .line 1561
    move/from16 v58, v18

    .line 1562
    div-float v4, v35, v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1563
    div-float v4, v33, v18

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getCharacterSpacing()F

    move-result v6

    add-float/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1565
    :cond_46
    invoke-virtual/range {v38 .. v38}, Lcom/itextpdf/text/pdf/PdfChunk;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1586
    .end local v14           #tabPosition:F
    .end local v32           #ascender:F
    .end local v38           #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v40           #color:Lcom/itextpdf/text/BaseColor;
    .end local v43           #descender:F
    .end local v45           #fontSize:F
    .end local v46           #fr:Ljava/lang/Float;
    .end local v70           #rise:F
    .end local v77           #strokeColor:Lcom/itextpdf/text/BaseColor;
    .end local v78           #strokeWidth:F
    .end local v83           #textRender:[Ljava/lang/Object;
    .end local v85           #tr:I
    .restart local v81       #tabPosition:F
    :cond_47
    if-eqz v52, :cond_48

    .line 1587
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setWordSpacing(F)V

    .line 1588
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCharacterSpacing(F)V

    .line 1589
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfLine;->isNewlineSplit()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1590
    const/16 v56, 0x0

    .line 1592
    :cond_48
    if-eqz v29, :cond_49

    .line 1593
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->getXTLM()F

    move-result v4

    sub-float v4, v5, v4

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveText(FF)V

    .line 1594
    :cond_49
    const/4 v4, 0x0

    aput-object v42, p4, v4

    .line 1595
    const/4 v4, 0x1

    new-instance v6, Ljava/lang/Float;

    move/from16 v0, v56

    invoke-direct {v6, v0}, Ljava/lang/Float;-><init>(F)V

    aput-object v6, p4, v4

    .line 1596
    return-void

    .end local v18           #hScale:F
    .end local v81           #tabPosition:F
    .restart local v14       #tabPosition:F
    .restart local v19       #b:F
    .restart local v20       #c:F
    .restart local v32       #ascender:F
    .restart local v38       #chunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v40       #color:Lcom/itextpdf/text/BaseColor;
    .restart local v43       #descender:F
    .restart local v45       #fontSize:F
    .restart local v48       #hScale:F
    .restart local v50       #hs:Ljava/lang/Float;
    .restart local v62       #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v66       #params:[F
    .restart local v88       #width:F
    :cond_4a
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_8

    .end local v18           #hScale:F
    .end local v19           #b:F
    .end local v20           #c:F
    .restart local v48       #hScale:F
    :cond_4b
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_9

    .end local v14           #tabPosition:F
    .end local v18           #hScale:F
    .end local v50           #hs:Ljava/lang/Float;
    .end local v66           #params:[F
    .restart local v48       #hScale:F
    .restart local v81       #tabPosition:F
    :cond_4c
    move/from16 v14, v81

    .end local v81           #tabPosition:F
    .restart local v14       #tabPosition:F
    goto/16 :goto_5

    .end local v14           #tabPosition:F
    .end local v62           #nextChunk:Lcom/itextpdf/text/pdf/PdfChunk;
    .restart local v81       #tabPosition:F
    :cond_4d
    move/from16 v14, v81

    .end local v81           #tabPosition:F
    .restart local v14       #tabPosition:F
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_a

    .end local v14           #tabPosition:F
    .end local v18           #hScale:F
    .end local v88           #width:F
    .restart local v48       #hScale:F
    .restart local v81       #tabPosition:F
    :cond_4e
    move/from16 v14, v81

    .end local v81           #tabPosition:F
    .restart local v14       #tabPosition:F
    move/from16 v18, v48

    .end local v48           #hScale:F
    .restart local v18       #hScale:F
    goto/16 :goto_b
.end method

.method writeOutlines()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfOutline;->getKids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    :goto_0
    return-void

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDocument;->outlineTree(Lcom/itextpdf/text/pdf/PdfOutline;)V

    .line 1840
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfDocument;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfDocument;->rootOutline:Lcom/itextpdf/text/pdf/PdfOutline;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfOutline;->indirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0
.end method
