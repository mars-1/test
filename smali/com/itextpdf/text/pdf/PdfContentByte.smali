.class public Lcom/itextpdf/text/pdf/PdfContentByte;
.super Ljava/lang/Object;
.source "PdfContentByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x1

.field public static final ALIGN_LEFT:I = 0x0

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final LINE_CAP_BUTT:I = 0x0

.field public static final LINE_CAP_PROJECTING_SQUARE:I = 0x2

.field public static final LINE_CAP_ROUND:I = 0x1

.field public static final LINE_JOIN_BEVEL:I = 0x2

.field public static final LINE_JOIN_MITER:I = 0x0

.field public static final LINE_JOIN_ROUND:I = 0x1

.field public static final TEXT_RENDER_MODE_CLIP:I = 0x7

.field public static final TEXT_RENDER_MODE_FILL:I = 0x0

.field public static final TEXT_RENDER_MODE_FILL_CLIP:I = 0x4

.field public static final TEXT_RENDER_MODE_FILL_STROKE:I = 0x2

.field public static final TEXT_RENDER_MODE_FILL_STROKE_CLIP:I = 0x6

.field public static final TEXT_RENDER_MODE_INVISIBLE:I = 0x3

.field public static final TEXT_RENDER_MODE_STROKE:I = 0x1

.field public static final TEXT_RENDER_MODE_STROKE_CLIP:I = 0x5

.field private static abrev:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unitRect:[F


# instance fields
.field protected content:Lcom/itextpdf/text/pdf/ByteBuffer;

.field private inText:Z

.field protected layerDepth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mcDepth:I

.field protected pdf:Lcom/itextpdf/text/pdf/PdfDocument;

.field protected separator:I

.field protected state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

.field protected stateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;",
            ">;"
        }
    .end annotation
.end field

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 159
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    .line 190
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/BPC "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/CS "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/D "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/DP "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/F "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/H "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/IM "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTENT:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/Intent "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/I "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    const-string/jumbo v2, "/W "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void

    .line 159
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "wr"

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 172
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    .line 182
    const/16 v0, 0xa

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    .line 184
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 185
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 215
    :cond_0
    return-void
.end method

.method private HelperCMYK(FFFF)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 611
    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    .line 612
    const/4 p1, 0x0

    .line 615
    :cond_0
    :goto_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    .line 616
    const/4 p2, 0x0

    .line 619
    :cond_1
    :goto_1
    cmpg-float v0, p3, v1

    if-gez v0, :cond_6

    .line 620
    const/4 p3, 0x0

    .line 623
    :cond_2
    :goto_2
    cmpg-float v0, p4, v1

    if-gez v0, :cond_7

    .line 624
    const/4 p4, 0x0

    .line 627
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 628
    return-void

    .line 613
    :cond_4
    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    .line 614
    const/high16 p1, 0x3f80

    goto :goto_0

    .line 617
    :cond_5
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 618
    const/high16 p2, 0x3f80

    goto :goto_1

    .line 621
    :cond_6
    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    .line 622
    const/high16 p3, 0x3f80

    goto :goto_2

    .line 625
    :cond_7
    cmpl-float v0, p4, v2

    if-lez v0, :cond_3

    .line 626
    const/high16 p4, 0x3f80

    goto :goto_3
.end method

.method private HelperRGB(FFF)V
    .locals 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/16 v5, 0x20

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 532
    cmpg-float v0, p1, v3

    if-gez v0, :cond_3

    .line 533
    const/4 p1, 0x0

    .line 536
    :cond_0
    :goto_0
    cmpg-float v0, p2, v3

    if-gez v0, :cond_4

    .line 537
    const/4 p2, 0x0

    .line 540
    :cond_1
    :goto_1
    cmpg-float v0, p3, v3

    if-gez v0, :cond_5

    .line 541
    const/4 p3, 0x0

    .line 544
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 545
    return-void

    .line 534
    :cond_3
    cmpl-float v0, p1, v4

    if-lez v0, :cond_0

    .line 535
    const/high16 p1, 0x3f80

    goto :goto_0

    .line 538
    :cond_4
    cmpl-float v0, p2, v4

    if-lez v0, :cond_1

    .line 539
    const/high16 p2, 0x3f80

    goto :goto_1

    .line 542
    :cond_5
    cmpl-float v0, p3, v4

    if-lez v0, :cond_2

    .line 543
    const/high16 p3, 0x3f80

    goto :goto_2
.end method

.method private beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 4
    .parameter "layer"

    .prologue
    .line 3009
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-interface {p1}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .line 3010
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 3011
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-interface {p1}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addProperty(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 3012
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v3, "/OC "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " BDC"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3013
    return-void
.end method

.method public static bezierArc(FFFFFF)Ljava/util/ArrayList;
    .locals 25
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "startAng"
    .parameter "extent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 1836
    cmpl-float v19, p0, p2

    if-lez v19, :cond_0

    .line 1837
    move/from16 v16, p0

    .line 1838
    .local v16, tmp:F
    move/from16 p0, p2

    .line 1839
    move/from16 p2, v16

    .line 1841
    .end local v16           #tmp:F
    :cond_0
    cmpl-float v19, p3, p1

    if-lez v19, :cond_1

    .line 1842
    move/from16 v16, p1

    .line 1843
    .restart local v16       #tmp:F
    move/from16 p1, p3

    .line 1844
    move/from16 p3, v16

    .line 1849
    .end local v16           #tmp:F
    :cond_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x42b4

    cmpg-float v19, v19, v20

    if-gtz v19, :cond_2

    .line 1850
    move/from16 v5, p5

    .line 1851
    .local v5, fragAngle:F
    const/4 v2, 0x1

    .line 1857
    .local v2, Nfrag:I
    :goto_0
    add-float v19, p0, p2

    const/high16 v20, 0x4000

    div-float v17, v19, v20

    .line 1858
    .local v17, x_cen:F
    add-float v19, p1, p3

    const/high16 v20, 0x4000

    div-float v18, v19, v20

    .line 1859
    .local v18, y_cen:F
    sub-float v19, p2, p0

    const/high16 v20, 0x4000

    div-float v10, v19, v20

    .line 1860
    .local v10, rx:F
    sub-float v19, p3, p1

    const/high16 v20, 0x4000

    div-float v11, v19, v20

    .line 1861
    .local v11, ry:F
    float-to-double v0, v5

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4076800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v6, v0

    .line 1862
    .local v6, halfAng:F
    const-wide v19, 0x3ff5555555555555L

    const-wide/high16 v21, 0x3ff0

    float-to-double v0, v6

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    sub-double v21, v21, v23

    mul-double v19, v19, v21

    float-to-double v0, v6

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    div-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v8, v0

    .line 1863
    .local v8, kappa:F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    .local v9, pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 1865
    int-to-float v0, v7

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v19, v19, p4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v14, v0

    .line 1866
    .local v14, theta0:F
    add-int/lit8 v19, v7, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v5

    add-float v19, v19, p4

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x400921fb54442d18L

    mul-double v19, v19, v21

    const-wide v21, 0x4066800000000000L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v15, v0

    .line 1867
    .local v15, theta1:F
    float-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v3, v0

    .line 1868
    .local v3, cos0:F
    float-to-double v0, v15

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v4, v0

    .line 1869
    .local v4, cos1:F
    float-to-double v0, v14

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v12, v0

    .line 1870
    .local v12, sin0:F
    float-to-double v0, v15

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v13, v0

    .line 1871
    .local v13, sin1:F
    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-lez v19, :cond_3

    .line 1872
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-float v21, v10, v3

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x1

    mul-float v21, v11, v12

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x2

    mul-float v21, v8, v12

    sub-float v21, v3, v21

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x3

    mul-float v21, v8, v3

    add-float v21, v21, v12

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x4

    mul-float v21, v8, v13

    add-float v21, v21, v4

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x5

    mul-float v21, v8, v4

    sub-float v21, v13, v21

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x6

    mul-float v21, v10, v4

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x7

    mul-float v21, v11, v13

    sub-float v21, v18, v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1854
    .end local v2           #Nfrag:I
    .end local v3           #cos0:F
    .end local v4           #cos1:F
    .end local v5           #fragAngle:F
    .end local v6           #halfAng:F
    .end local v7           #i:I
    .end local v8           #kappa:F
    .end local v9           #pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .end local v10           #rx:F
    .end local v11           #ry:F
    .end local v12           #sin0:F
    .end local v13           #sin1:F
    .end local v14           #theta0:F
    .end local v15           #theta1:F
    .end local v17           #x_cen:F
    .end local v18           #y_cen:F
    :cond_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x42b4

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v2, v0

    .line 1855
    .restart local v2       #Nfrag:I
    int-to-float v0, v2

    move/from16 v19, v0

    div-float v5, p5, v19

    .restart local v5       #fragAngle:F
    goto/16 :goto_0

    .line 1882
    .restart local v3       #cos0:F
    .restart local v4       #cos1:F
    .restart local v6       #halfAng:F
    .restart local v7       #i:I
    .restart local v8       #kappa:F
    .restart local v9       #pointList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .restart local v10       #rx:F
    .restart local v11       #ry:F
    .restart local v12       #sin0:F
    .restart local v13       #sin1:F
    .restart local v14       #theta0:F
    .restart local v15       #theta1:F
    .restart local v17       #x_cen:F
    .restart local v18       #y_cen:F
    :cond_3
    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-float v21, v10, v3

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x1

    mul-float v21, v11, v12

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x2

    mul-float v21, v8, v12

    add-float v21, v21, v3

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x3

    mul-float v21, v8, v3

    sub-float v21, v12, v21

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x4

    mul-float v21, v8, v13

    sub-float v21, v4, v21

    mul-float v21, v21, v10

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x5

    mul-float v21, v8, v4

    add-float v21, v21, v13

    mul-float v21, v21, v11

    sub-float v21, v18, v21

    aput v21, v19, v20

    const/16 v20, 0x6

    mul-float v21, v10, v4

    add-float v21, v21, v17

    aput v21, v19, v20

    const/16 v20, 0x7

    mul-float v21, v11, v13

    sub-float v21, v18, v21

    aput v21, v19, v20

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1892
    .end local v3           #cos0:F
    .end local v4           #cos1:F
    .end local v12           #sin0:F
    .end local v13           #sin1:F
    .end local v14           #theta0:F
    .end local v15           #theta1:F
    :cond_4
    return-object v9
.end method

.method private compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z
    .locals 1
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 783
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    .line 785
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 787
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/text/pdf/ExtendedColor;

    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 789
    :cond_3
    invoke-virtual {p2, p1}, Lcom/itextpdf/text/BaseColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V
    .locals 3
    .parameter "b"
    .parameter "content"

    .prologue
    .line 1627
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1628
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1629
    aget-byte v0, p0, v1

    .line 1630
    .local v0, c:B
    sparse-switch v0, :sswitch_data_0

    .line 1652
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1628
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    :sswitch_0
    const-string/jumbo v2, "\\r"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1635
    :sswitch_1
    const-string/jumbo v2, "\\n"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1638
    :sswitch_2
    const-string/jumbo v2, "\\t"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1641
    :sswitch_3
    const-string/jumbo v2, "\\b"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1644
    :sswitch_4
    const-string/jumbo v2, "\\f"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1649
    :sswitch_5
    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 1655
    .end local v0           #c:B
    :cond_0
    const-string/jumbo v2, ")"

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1656
    return-void

    .line 1630
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xc -> :sswitch_4
        0xd -> :sswitch_0
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method static escapeString([B)[B
    .locals 2
    .parameter "b"

    .prologue
    .line 1615
    new-instance v0, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 1616
    .local v0, content:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1617
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getKernArray(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/PdfTextArray;
    .locals 10
    .parameter "text"
    .parameter "font"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1452
    new-instance v6, Lcom/itextpdf/text/pdf/PdfTextArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfTextArray;-><init>()V

    .line 1453
    .local v6, pa:Lcom/itextpdf/text/pdf/PdfTextArray;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1454
    .local v0, acc:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 1455
    .local v5, len:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1456
    .local v1, c:[C
    if-ltz v5, :cond_0

    .line 1457
    invoke-virtual {v0, v1, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1458
    :cond_0
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1459
    add-int/lit8 v7, v3, 0x1

    aget-char v2, v1, v7

    .line 1460
    .local v2, c2:C
    aget-char v7, v1, v3

    invoke-virtual {p1, v7, v2}, Lcom/itextpdf/text/pdf/BaseFont;->getKerning(II)I

    move-result v4

    .line 1461
    .local v4, kern:I
    if-nez v4, :cond_1

    .line 1462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1458
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1465
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1467
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v1, v7, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1468
    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(F)V

    goto :goto_1

    .line 1471
    .end local v2           #c2:C
    .end local v4           #kern:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfTextArray;->add(Ljava/lang/String;)V

    .line 1472
    return-object v6
.end method

.method private showText2(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1429
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1430
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "font.and.size.must.be.set.before.writing.any.text"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1431
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/FontDetails;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1432
    .local v0, b:[B
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-static {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->escapeString([BLcom/itextpdf/text/pdf/ByteBuffer;)V

    .line 1433
    return-void
.end method

.method private showTextAligned(ILjava/lang/String;FFFZ)V
    .locals 11
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"
    .parameter "kerned"

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1730
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "font.and.size.must.be.set.before.writing.any.text"

    invoke-static {v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1731
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p5, v1

    if-nez v1, :cond_2

    .line 1732
    packed-switch p1, :pswitch_data_0

    .line 1740
    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 1741
    if-eqz p6, :cond_1

    .line 1742
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextKerned(Ljava/lang/String;)V

    .line 1770
    :goto_1
    return-void

    .line 1734
    :pswitch_0
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    sub-float/2addr p3, v1

    .line 1735
    goto :goto_0

    .line 1737
    :pswitch_1
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    sub-float/2addr p3, v1

    goto :goto_0

    .line 1744
    :cond_1
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_1

    .line 1747
    :cond_2
    move/from16 v0, p5

    float-to-double v4, v0

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double v8, v4, v6

    .line 1748
    .local v8, alpha:D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1749
    .local v2, cos:F
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1751
    .local v3, sin:F
    packed-switch p1, :pswitch_data_1

    .line 1763
    :goto_2
    neg-float v4, v3

    move-object v1, p0

    move v5, v2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1764
    if-eqz p6, :cond_3

    .line 1765
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextKerned(Ljava/lang/String;)V

    .line 1768
    :goto_3
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    goto :goto_1

    .line 1753
    :pswitch_2
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v1

    const/high16 v4, 0x4000

    div-float v10, v1, v4

    .line 1754
    .local v10, len:F
    mul-float v1, v10, v2

    sub-float/2addr p3, v1

    .line 1755
    mul-float v1, v10, v3

    sub-float/2addr p4, v1

    .line 1756
    goto :goto_2

    .line 1758
    .end local v10           #len:F
    :pswitch_3
    move/from16 v0, p6

    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getEffectiveStringWidth(Ljava/lang/String;Z)F

    move-result v10

    .line 1759
    .restart local v10       #len:F
    mul-float v1, v10, v2

    sub-float/2addr p3, v1

    .line 1760
    mul-float v1, v10, v3

    sub-float/2addr p4, v1

    goto :goto_2

    .line 1767
    .end local v10           #len:F
    :cond_3
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_3

    .line 1732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1751
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 258
    iget-object v0, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-eq v0, v1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "inconsistent.writers.are.you.mixing.two.documents"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Lcom/itextpdf/text/pdf/ByteBuffer;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 261
    return-void
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 3042
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 3043
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;)V
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1094
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;Z)V

    .line 1095
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;FFFFFF)V
    .locals 9
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1127
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1128
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V
    .locals 39
    .parameter "image"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"
    .parameter "inlineImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1159
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1160
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 1161
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isImgTemplate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getTemplateData()Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v5

    .line 1164
    .local v5, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfTemplate;->getWidth()F

    move-result v38

    .line 1165
    .local v38, w:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfTemplate;->getHeight()F

    move-result v23

    .line 1166
    .local v23, h:F
    div-float v6, p2, v38

    div-float v7, p3, v38

    div-float v8, p4, v23

    div-float v9, p5, v23

    move-object/from16 v4, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 1233
    .end local v5           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    .end local v23           #h:F
    .end local v38           #w:F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->hasBorders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v38

    .line 1236
    .restart local v38       #w:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v23

    .line 1237
    .restart local v23       #h:F
    div-float v7, p2, v38

    div-float v8, p3, v38

    div-float v9, p4, v23

    div-float v10, p5, v23

    move-object/from16 v6, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 1238
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(Lcom/itextpdf/text/Rectangle;)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 1241
    .end local v23           #h:F
    .end local v38           #w:F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getLayer()Lcom/itextpdf/text/pdf/PdfOCG;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->endLayer()V

    .line 1243
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getAnnotation()Lcom/itextpdf/text/Annotation;

    move-result-object v14

    .line 1244
    .local v14, annot:Lcom/itextpdf/text/Annotation;
    if-nez v14, :cond_b

    .line 1271
    :goto_1
    return-void

    .line 1169
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v6, "q "

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v6, " cm"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1176
    if-eqz p8, :cond_9

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v6, "\nBI\n"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1178
    new-instance v31, Lcom/itextpdf/text/pdf/PdfImage;

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6}, Lcom/itextpdf/text/pdf/PdfImage;-><init>(Lcom/itextpdf/text/Image;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1179
    .local v31, pimage:Lcom/itextpdf/text/pdf/PdfImage;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/itextpdf/text/ImgJBIG2;

    if-eqz v4, :cond_4

    .line 1180
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/ImgJBIG2;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/itextpdf/text/ImgJBIG2;->getGlobalBytes()[B

    move-result-object v22

    .line 1181
    .local v22, globals:[B
    if-eqz v22, :cond_4

    .line 1182
    new-instance v19, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1183
    .local v19, decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->JBIG2GLOBALS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getReferenceJBIG2Globals([B)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1184
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1187
    .end local v19           #decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #globals:[B
    :cond_4
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfImage;->getKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfName;

    .line 1188
    .local v21, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v21

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v26, v0

    .line 1189
    .local v26, key:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfImage;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v37

    .line 1190
    .local v37, value:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->abrev:Ljava/util/HashMap;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 1191
    .local v34, s:Ljava/lang/String;
    if-eqz v34, :cond_5

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1194
    const/16 v17, 0x1

    .line 1195
    .local v17, check:Z
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1196
    move-object/from16 v0, v37

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object/from16 v16, v0

    .line 1197
    .local v16, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1203
    const/16 v17, 0x0

    .line 1207
    .end local v16           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    if-eqz v17, :cond_7

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v37 .. v37}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v18

    .line 1209
    .local v18, cs:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v32

    .line 1210
    .local v32, prs:Lcom/itextpdf/text/pdf/PageResources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1211
    move-object/from16 v37, v18

    .line 1213
    .end local v18           #cs:Lcom/itextpdf/text/pdf/PdfName;
    .end local v32           #prs:Lcom/itextpdf/text/pdf/PageResources;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v6}, Lcom/itextpdf/text/pdf/PdfObject;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1268
    .end local v17           #check:Z
    .end local v21           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v26           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v31           #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    .end local v34           #s:Ljava/lang/String;
    .end local v37           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v20

    .line 1269
    .local v20, ee:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 1216
    .end local v20           #ee:Ljava/lang/Exception;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v31       #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v6, "ID\n"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfImage;->writeContent(Ljava/io/OutputStream;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v6, "\nEI\nQ"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0

    .line 1222
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v31           #pimage:Lcom/itextpdf/text/pdf/PdfImage;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v32

    .line 1223
    .restart local v32       #prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getImageMask()Lcom/itextpdf/text/Image;

    move-result-object v29

    .line 1224
    .local v29, maskImage:Lcom/itextpdf/text/Image;
    if-eqz v29, :cond_a

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1226
    .local v30, name:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1228
    .end local v30           #name:Lcom/itextpdf/text/pdf/PdfName;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1229
    .restart local v30       #name:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v30

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v6, " Do Q"

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto/16 :goto_0

    .line 1246
    .end local v29           #maskImage:Lcom/itextpdf/text/Image;
    .end local v30           #name:Lcom/itextpdf/text/pdf/PdfName;
    .end local v32           #prs:Lcom/itextpdf/text/pdf/PageResources;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    :cond_b
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    array-length v4, v4

    new-array v0, v4, [F

    move-object/from16 v33, v0

    .line 1247
    .local v33, r:[F
    const/16 v25, 0x0

    .local v25, k:I
    :goto_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    array-length v4, v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_c

    .line 1248
    sget-object v4, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    aget v4, v4, v25

    mul-float v4, v4, p2

    sget-object v6, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    add-int/lit8 v7, v25, 0x1

    aget v6, v6, v7

    mul-float v6, v6, p4

    add-float/2addr v4, v6

    add-float v4, v4, p6

    aput v4, v33, v25

    .line 1249
    add-int/lit8 v4, v25, 0x1

    sget-object v6, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    aget v6, v6, v25

    mul-float v6, v6, p3

    sget-object v7, Lcom/itextpdf/text/pdf/PdfContentByte;->unitRect:[F

    add-int/lit8 v8, v25, 0x1

    aget v7, v7, v8

    mul-float v7, v7, p5

    add-float/2addr v6, v7

    add-float v6, v6, p7

    aput v6, v33, v4

    .line 1247
    add-int/lit8 v25, v25, 0x2

    goto :goto_3

    .line 1251
    :cond_c
    const/4 v4, 0x0

    aget v27, v33, v4

    .line 1252
    .local v27, llx:F
    const/4 v4, 0x1

    aget v28, v33, v4

    .line 1253
    .local v28, lly:F
    move/from16 v35, v27

    .line 1254
    .local v35, urx:F
    move/from16 v36, v28

    .line 1255
    .local v36, ury:F
    const/16 v25, 0x2

    :goto_4
    move-object/from16 v0, v33

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_d

    .line 1256
    aget v4, v33, v25

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 1257
    add-int/lit8 v4, v25, 0x1

    aget v4, v33, v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 1258
    aget v4, v33, v25

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v35

    .line 1259
    add-int/lit8 v4, v25, 0x1

    aget v4, v33, v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 1255
    add-int/lit8 v25, v25, 0x2

    goto :goto_4

    .line 1261
    :cond_d
    new-instance v15, Lcom/itextpdf/text/Annotation;

    invoke-direct {v15, v14}, Lcom/itextpdf/text/Annotation;-><init>(Lcom/itextpdf/text/Annotation;)V

    .line 1262
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    .local v15, annot:Lcom/itextpdf/text/Annotation;
    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/itextpdf/text/Annotation;->setDimensions(FFFF)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    new-instance v6, Lcom/itextpdf/text/Rectangle;

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    invoke-static {v4, v15, v6}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->convertAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Annotation;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v13

    .line 1264
    .local v13, an:Lcom/itextpdf/text/pdf/PdfAnnotation;
    if-nez v13, :cond_e

    move-object v14, v15

    .line 1265
    .end local v15           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    goto/16 :goto_1

    .line 1266
    .end local v14           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v15       #annot:Lcom/itextpdf/text/Annotation;
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v15

    .line 1271
    .end local v15           #annot:Lcom/itextpdf/text/Annotation;
    .restart local v14       #annot:Lcom/itextpdf/text/Annotation;
    goto/16 :goto_1
.end method

.method public addImage(Lcom/itextpdf/text/Image;Ljava/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "image"
    .parameter "transform"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1137
    const/4 v0, 0x6

    new-array v9, v0, [D

    .line 1138
    .local v9, matrix:[D
    invoke-virtual {p2, v9}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1139
    aget-wide v0, v9, v8

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-wide v0, v9, v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-wide v0, v9, v0

    double-to-float v4, v0

    const/4 v0, 0x3

    aget-wide v0, v9, v0

    double-to-float v5, v0

    const/4 v0, 0x4

    aget-wide v0, v9, v0

    double-to-float v6, v0

    const/4 v0, 0x5

    aget-wide v0, v9, v0

    double-to-float v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1141
    return-void
.end method

.method public addImage(Lcom/itextpdf/text/Image;Z)V
    .locals 10
    .parameter "image"
    .parameter "inlineImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1105
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->hasAbsoluteY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string/jumbo v1, "the.image.must.have.absolute.positioning"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->matrix()[F

    move-result-object v9

    .line 1108
    .local v9, matrix:[F
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteX()F

    move-result v0

    aget v1, v9, v6

    sub-float/2addr v0, v1

    aput v0, v9, v6

    .line 1109
    invoke-virtual {p1}, Lcom/itextpdf/text/Image;->getAbsoluteY()F

    move-result v0

    aget v1, v9, v7

    sub-float/2addr v0, v1

    aput v0, v9, v7

    .line 1110
    const/4 v0, 0x0

    aget v2, v9, v0

    const/4 v0, 0x1

    aget v3, v9, v0

    const/4 v0, 0x2

    aget v4, v9, v0

    const/4 v0, 0x3

    aget v5, v9, v0

    aget v6, v9, v6

    aget v7, v9, v7

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;FFFFFFZ)V

    .line 1111
    return-void
.end method

.method public addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V
    .locals 1
    .parameter "outline"
    .parameter "name"

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1666
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addOutline(Lcom/itextpdf/text/pdf/PdfOutline;Ljava/lang/String;)V

    .line 1667
    return-void
.end method

.method public addPSXObject(Lcom/itextpdf/text/pdf/PdfPSXObject;)V
    .locals 4
    .parameter "psobject"

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2056
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2057
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2058
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPSXObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2059
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " Do"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2060
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FF)V
    .locals 8
    .parameter "template"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 2125
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 2126
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V
    .locals 5
    .parameter "template"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v4, 0x20

    .line 2074
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2075
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkNoPattern(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 2076
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2077
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2078
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2079
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v3, "q "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2080
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2081
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2082
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2083
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2084
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2085
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " cm "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2086
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " Do Q"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2087
    return-void
.end method

.method public addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;Ljava/awt/geom/AffineTransform;)V
    .locals 9
    .parameter "template"
    .parameter "transform"

    .prologue
    .line 2096
    const/4 v0, 0x6

    new-array v8, v0, [D

    .line 2097
    .local v8, matrix:[D
    invoke-virtual {p2, v8}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 2098
    const/4 v0, 0x0

    aget-wide v0, v8, v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-wide v0, v8, v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-wide v0, v8, v0

    double-to-float v4, v0

    const/4 v0, 0x3

    aget-wide v0, v8, v0

    double-to-float v5, v0

    const/4 v0, 0x4

    aget-wide v0, v8, v0

    double-to-float v6, v0

    const/4 v0, 0x5

    aget-wide v0, v8, v0

    double-to-float v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->addTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;FFFFFF)V

    .line 2101
    return-void
.end method

.method addTemplateReference(Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfName;FFFFFF)V
    .locals 4
    .parameter "template"
    .parameter "name"
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v3, 0x20

    .line 2104
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2105
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    .line 2106
    .local v0, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/text/pdf/PageResources;->addXObject(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object p2

    .line 2107
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v2, "q "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2108
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2109
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2110
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2111
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2112
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p7}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2113
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1, p8}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string/jumbo v2, " cm "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2114
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string/jumbo v2, " Do Q"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2115
    return-void
.end method

.method public arc(FFFFFF)V
    .locals 10
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "startAng"
    .parameter "extent"

    .prologue
    .line 1908
    invoke-static/range {p1 .. p6}, Lcom/itextpdf/text/pdf/PdfContentByte;->bezierArc(FFFFFF)Ljava/util/ArrayList;

    move-result-object v7

    .line 1909
    .local v7, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    :cond_0
    return-void

    .line 1911
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 1912
    .local v9, pt:[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 1913
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1914
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #pt:[F
    check-cast v9, [F

    .line 1915
    .restart local v9       #pt:[F
    const/4 v0, 0x2

    aget v1, v9, v0

    const/4 v0, 0x3

    aget v2, v9, v0

    const/4 v0, 0x4

    aget v3, v9, v0

    const/4 v0, 0x5

    aget v4, v9, v0

    const/4 v0, 0x6

    aget v5, v9, v0

    const/4 v0, 0x7

    aget v6, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 1913
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public beginLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 2987
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2988
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "a.title.is.not.a.layer"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2989
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2990
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    .line 2991
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/text/pdf/PdfLayerMembership;

    if-eqz v2, :cond_2

    .line 2992
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 3006
    :goto_0
    return-void

    .line 2996
    :cond_2
    const/4 v1, 0x0

    .local v1, n:I
    move-object v0, p1

    .line 2997
    check-cast v0, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2998
    .local v0, la:Lcom/itextpdf/text/pdf/PdfLayer;
    :goto_1
    if-eqz v0, :cond_4

    .line 2999
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 3000
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginLayer2(Lcom/itextpdf/text/pdf/PdfOCG;)V

    .line 3001
    add-int/lit8 v1, v1, 0x1

    .line 3003
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLayer;->getParent()Lcom/itextpdf/text/pdf/PdfLayer;

    move-result-object v0

    goto :goto_1

    .line 3005
    :cond_4
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 3146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;Z)V

    .line 3147
    return-void
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;Z)V
    .locals 6
    .parameter "tag"
    .parameter "property"
    .parameter "inline"

    .prologue
    .line 3114
    if-nez p2, :cond_0

    .line 3115
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " BMC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3139
    :goto_0
    return-void

    .line 3118
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3119
    if-eqz p3, :cond_1

    .line 3121
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p2, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3137
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v5, " BDC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3138
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    goto :goto_0

    .line 3123
    :catch_0
    move-exception v0

    .line 3124
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 3128
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->propertyExists(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3129
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 3132
    .local v2, objs:[Lcom/itextpdf/text/pdf/PdfObject;
    :goto_2
    const/4 v4, 0x0

    aget-object v1, v2, v4

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 3133
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 3134
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v3, v1, v4}, Lcom/itextpdf/text/pdf/PageResources;->addProperty(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 3135
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_1

    .line 3131
    .end local v1           #name:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #objs:[Lcom/itextpdf/text/pdf/PdfObject;
    .end local v3           #prs:Lcom/itextpdf/text/pdf/PageResources;
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .restart local v2       #objs:[Lcom/itextpdf/text/pdf/PdfObject;
    goto :goto_2
.end method

.method public beginMarkedContentSequence(Lcom/itextpdf/text/pdf/PdfStructureElement;)V
    .locals 7
    .parameter "struc"

    .prologue
    .line 3063
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfStructureElement;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 3064
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->getMarkPoint()I

    move-result v2

    .line 3065
    .local v2, mark:I
    if-eqz v3, :cond_3

    .line 3066
    const/4 v0, 0x0

    .line 3067
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3068
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 3069
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3070
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v0}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3079
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->MCR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 3080
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3081
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v5, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3082
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3083
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->setPageMark(II)V

    .line 3089
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDocument;->incMarkPoint()V

    .line 3090
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 3091
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " <</MCID "

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, ">> BDC"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3092
    return-void

    .line 3072
    .restart local v0       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 3073
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 3074
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3075
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "the.structure.has.kids"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3078
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unknown.object.at.k.1"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3086
    .end local v0           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4, v2}, Lcom/itextpdf/text/pdf/PdfStructureElement;->setPageMark(II)V

    .line 3087
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/text/pdf/PdfStructureElement;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public beginText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_0

    .line 1300
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.begin.end.text.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 1303
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1304
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1305
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "BT"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1306
    return-void
.end method

.method checkNoPattern(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2682
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2683
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid.use.of.a.pattern.a.template.was.expected"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2684
    :cond_0
    return-void
.end method

.method protected checkWriter()V
    .locals 2

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v0, :cond_0

    .line 2508
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the.writer.in.pdfcontentbyte.is.null"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2509
    :cond_0
    return-void
.end method

.method public circle(FFF)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 759
    const v7, 0x3f0d6388

    .line 760
    .local v7, b:F
    add-float v0, p1, p3

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 761
    add-float v1, p1, p3

    mul-float v0, p3, v7

    add-float v2, p2, v0

    mul-float v0, p3, v7

    add-float v3, p1, v0

    add-float v4, p2, p3

    add-float v6, p2, p3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 762
    mul-float v0, p3, v7

    sub-float v1, p1, v0

    add-float v2, p2, p3

    sub-float v3, p1, p3

    mul-float v0, p3, v7

    add-float v4, p2, v0

    sub-float v5, p1, p3

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 763
    sub-float v1, p1, p3

    mul-float v0, p3, v7

    sub-float v2, p2, v0

    mul-float v0, p3, v7

    sub-float v3, p1, v0

    sub-float v4, p2, p3

    sub-float v6, p2, p3

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 764
    mul-float v0, p3, v7

    add-float v1, p1, v0

    sub-float v2, p2, p3

    add-float v3, p1, p3

    mul-float v0, p3, v7

    sub-float v4, p2, v0

    add-float v5, p1, p3

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 765
    return-void
.end method

.method public clip()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "W"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 471
    return-void
.end method

.method public closePath()V
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "h"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1013
    return-void
.end method

.method public closePathEoFillStroke()V
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "b*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1085
    return-void
.end method

.method public closePathFillStroke()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "b"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1069
    return-void
.end method

.method public closePathStroke()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1037
    return-void
.end method

.method public concatCTM(FFFFFF)V
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "e"
    .parameter "f"

    .prologue
    const/16 v1, 0x20

    .line 1794
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1795
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " cm"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1796
    return-void
.end method

.method public concatCTM(Ljava/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "transform"

    .prologue
    .line 1804
    const/4 v0, 0x6

    new-array v7, v0, [D

    .line 1805
    .local v7, matrix:[D
    invoke-virtual {p1, v7}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1806
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    double-to-float v1, v0

    const/4 v0, 0x1

    aget-wide v2, v7, v0

    double-to-float v2, v2

    const/4 v0, 0x2

    aget-wide v3, v7, v0

    double-to-float v3, v3

    const/4 v0, 0x3

    aget-wide v4, v7, v0

    double-to-float v4, v4

    const/4 v0, 0x4

    aget-wide v5, v7, v0

    double-to-float v5, v5

    const/4 v0, 0x5

    aget-wide v8, v7, v0

    double-to-float v6, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 1808
    return-void
.end method

.method public createAppearance(FF)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2037
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->createAppearance(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    return-object v0
.end method

.method createAppearance(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2042
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 2043
    .local v0, template:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfAppearance;->setWidth(F)V

    .line 2044
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setHeight(F)V

    .line 2045
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2046
    return-object v0
.end method

.method public createGraphics(FF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 2850
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphics(FFLcom/itextpdf/text/pdf/FontMapper;)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"

    .prologue
    const/4 v5, 0x0

    .line 2922
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphics(FFLcom/itextpdf/text/pdf/FontMapper;ZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 2947
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphics(FFZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 2873
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphicsShapes(FF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2829
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createGraphicsShapes(FFZF)Ljava/awt/Graphics2D;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"

    .prologue
    .line 2898
    new-instance v0, Lcom/itextpdf/text/pdf/PdfGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZF)V

    return-object v0
.end method

.method public createPattern(FF)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1963
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FFFF)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v0

    return-object v0
.end method

.method public createPattern(FFFF)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "xstep"
    .parameter "ystep"

    .prologue
    const/4 v2, 0x0

    .line 1943
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1944
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_0

    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    .line 1945
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "xstep.or.ystep.can.not.be.zero"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1946
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 1947
    .local v0, painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setWidth(F)V

    .line 1948
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setHeight(F)V

    .line 1949
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setXStep(F)V

    .line 1950
    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setYStep(F)V

    .line 1951
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1952
    return-object v0
.end method

.method public createPattern(FFFFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "xstep"
    .parameter "ystep"
    .parameter "color"

    .prologue
    const/4 v2, 0x0

    .line 1979
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1980
    cmpl-float v1, p3, v2

    if-eqz v1, :cond_0

    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    .line 1981
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "xstep.or.ystep.can.not.be.zero"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1982
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1, p5}, Lcom/itextpdf/text/pdf/PdfPatternPainter;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/BaseColor;)V

    .line 1983
    .local v0, painter:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setWidth(F)V

    .line 1984
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setHeight(F)V

    .line 1985
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setXStep(F)V

    .line 1986
    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->setYStep(F)V

    .line 1987
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    .line 1988
    return-object v0
.end method

.method public createPattern(FFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 2001
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->createPattern(FFFFLcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v0

    return-object v0
.end method

.method public createPrinterGraphics(FFLcom/itextpdf/text/pdf/FontMapper;Ljava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "printerJob"

    .prologue
    const/4 v5, 0x0

    .line 2934
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, v5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFLcom/itextpdf/text/pdf/FontMapper;ZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "fontMapper"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 2961
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "printerJob"

    .prologue
    const/4 v5, 0x0

    .line 2861
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v5

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphics(FFZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 2886
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphicsShapes(FFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "printerJob"

    .prologue
    .line 2840
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createPrinterGraphicsShapes(FFZFLjava/awt/print/PrinterJob;)Ljava/awt/Graphics2D;
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "convertImagesToJPEG"
    .parameter "quality"
    .parameter "printerJob"

    .prologue
    .line 2911
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfPrinterGraphics2D;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;FFLcom/itextpdf/text/pdf/FontMapper;ZZFLjava/awt/print/PrinterJob;)V

    return-object v0
.end method

.method public createTemplate(FF)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2017
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->createTemplate(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v0

    return-object v0
.end method

.method createTemplate(FFLcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfTemplate;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "forcedName"

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2022
    new-instance v0, Lcom/itextpdf/text/pdf/PdfTemplate;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfTemplate;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 2023
    .local v0, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->setWidth(F)V

    .line 2024
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->setHeight(F)V

    .line 2025
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2026
    return-object v0
.end method

.method public curveFromTo(FFFF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 749
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " y"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 750
    return-void
.end method

.method public curveTo(FFFF)V
    .locals 2
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 736
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " v"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 737
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    const/16 v1, 0x20

    .line 723
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " c"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 724
    return-void
.end method

.method public drawButton(FFFFLjava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 8
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "text"
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 2784
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v6, p1

    .local v6, x:F
    move p1, p3

    move p3, v6

    .line 2785
    .end local v6           #x:F
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    move v7, p2

    .local v7, y:F
    move p2, p4

    move p4, v7

    .line 2787
    .end local v7           #y:F
    :cond_1
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2788
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2789
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2790
    sub-float v0, p3, p1

    sub-float v1, p4, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2791
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2793
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2794
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2795
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2796
    const/high16 v0, 0x3f00

    add-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v1, p2

    sub-float v2, p3, p1

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    sub-float v3, p4, p2

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2797
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2799
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2800
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2802
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2803
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2804
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2805
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2807
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xa0

    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2808
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2809
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2810
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2811
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2812
    const/high16 v0, 0x3f80

    sub-float v0, p3, v0

    const/high16 v1, 0x3f80

    sub-float v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2813
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2815
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 2816
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 2817
    invoke-virtual {p0, p6, p7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 2818
    const/4 v1, 0x1

    sub-float v0, p3, p1

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float v3, p1, v0

    sub-float v0, p4, p2

    sub-float/2addr v0, p7

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float v4, p2, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFF)V

    .line 2819
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 2820
    return-void
.end method

.method public drawRadioField(FFFFZ)V
    .locals 9
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "on"

    .prologue
    .line 2695
    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    move v7, p1

    .local v7, x:F
    move p1, p3

    move p3, v7

    .line 2696
    .end local v7           #x:F
    :cond_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    move v8, p2

    .local v8, y:F
    move p2, p4

    move p4, v8

    .line 2698
    .end local v8           #y:F
    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2700
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xc0

    const/16 v2, 0xc0

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2701
    const/high16 v0, 0x3f80

    add-float v1, p1, v0

    const/high16 v0, 0x3f80

    add-float v2, p2, v0

    const/high16 v0, 0x3f80

    sub-float v3, p3, v0

    const/high16 v0, 0x3f80

    sub-float v4, p4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2702
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2704
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2706
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/16 v1, 0xa0

    const/16 v2, 0xa0

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2707
    const/high16 v0, 0x3f00

    add-float v1, p1, v0

    const/high16 v0, 0x3f00

    add-float v2, p2, v0

    const/high16 v0, 0x3f00

    sub-float v3, p3, v0

    const/high16 v0, 0x3f00

    sub-float v4, p4, v0

    const/high16 v5, 0x4234

    const/high16 v6, 0x4334

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2708
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2710
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2712
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2713
    const/high16 v0, 0x3fc0

    add-float v1, p1, v0

    const/high16 v0, 0x3fc0

    add-float v2, p2, v0

    const/high16 v0, 0x3fc0

    sub-float v3, p3, v0

    const/high16 v0, 0x3fc0

    sub-float v4, p4, v0

    const/high16 v5, 0x4234

    const/high16 v6, 0x4334

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2714
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2715
    if-eqz p5, :cond_2

    .line 2717
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2718
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2719
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2720
    const/high16 v0, 0x4080

    add-float v1, p1, v0

    const/high16 v0, 0x4080

    add-float v2, p2, v0

    const/high16 v0, 0x4080

    sub-float v3, p3, v0

    const/high16 v0, 0x4080

    sub-float v4, p4, v0

    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 2721
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2723
    :cond_2
    return-void
.end method

.method public drawTextField(FFFF)V
    .locals 11
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/high16 v10, 0x3fc0

    const/16 v9, 0xc0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 2733
    cmpl-float v2, p1, p3

    if-lez v2, :cond_0

    move v0, p1

    .local v0, x:F
    move p1, p3

    move p3, v0

    .line 2734
    .end local v0           #x:F
    :cond_0
    cmpl-float v2, p2, p4

    if-lez v2, :cond_1

    move v1, p2

    .local v1, y:F
    move p2, p4

    move p4, v1

    .line 2736
    .end local v1           #y:F
    :cond_1
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v9, v9, v9}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2737
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2738
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2739
    sub-float v2, p3, p1

    sub-float v3, p4, p2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2740
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2742
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2743
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2744
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 2745
    const/high16 v2, 0x3f00

    add-float/2addr v2, p1

    const/high16 v3, 0x3f00

    add-float/2addr v3, p2

    sub-float v4, p3, p1

    sub-float/2addr v4, v6

    sub-float v5, p4, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 2746
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 2748
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v9, v9, v9}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2749
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2750
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2751
    add-float v2, p1, v6

    add-float v3, p2, v10

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2752
    sub-float v2, p3, v10

    add-float v3, p2, v10

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2753
    sub-float v2, p3, v10

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2754
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2756
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    const/16 v3, 0xa0

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2757
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2758
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2759
    add-float v2, p1, v6

    add-float v3, p2, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2760
    add-float v2, p1, v6

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2761
    sub-float v2, p3, v6

    sub-float v3, p4, v6

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2762
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2764
    new-instance v2, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v2, v7, v7, v7}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 2765
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 2766
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 2767
    add-float v2, p1, v8

    add-float v3, p2, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2768
    add-float v2, p1, v8

    sub-float v3, p4, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2769
    sub-float v2, p3, v8

    sub-float v3, p4, v8

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2770
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 2771
    return-void
.end method

.method public ellipse(FFFF)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 1928
    const/4 v5, 0x0

    const/high16 v6, 0x43b4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 1929
    return-void
.end method

.method public endLayer()V
    .locals 4

    .prologue
    .line 3019
    const/4 v0, 0x1

    .line 3020
    .local v0, n:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3021
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3022
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    .line 3026
    .end local v0           #n:I
    .local v1, n:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #n:I
    .restart local v0       #n:I
    if-lez v1, :cond_1

    .line 3027
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v3, "EMC"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move v1, v0

    .end local v0           #n:I
    .restart local v1       #n:I
    goto :goto_0

    .line 3024
    .end local v1           #n:I
    .restart local v0       #n:I
    :cond_0
    new-instance v2, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v3, "unbalanced.layer.operators"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3028
    :cond_1
    return-void
.end method

.method public endMarkedContentSequence()V
    .locals 2

    .prologue
    .line 3098
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    if-nez v0, :cond_0

    .line 3099
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.begin.end.marked.content.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3101
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    .line 3102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "EMC"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3103
    return-void
.end method

.method public endText()V
    .locals 2

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-nez v0, :cond_0

    .line 1313
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.begin.end.text.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    .line 1316
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "ET"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1317
    return-void
.end method

.method public eoClip()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "W*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 480
    return-void
.end method

.method public eoFill()V
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "f*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1053
    return-void
.end method

.method public eoFillStroke()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "B*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1077
    return-void
.end method

.method public fill()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "f"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1045
    return-void
.end method

.method public fillStroke()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1061
    return-void
.end method

.method public getCharacterSpacing()F
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    return v0
.end method

.method public getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 2

    .prologue
    .line 2586
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    return-object v0
.end method

.method public getEffectiveStringWidth(Ljava/lang/String;Z)F
    .locals 8
    .parameter "text"
    .parameter "kerned"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1690
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/FontDetails;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 1693
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    if-eqz p2, :cond_3

    .line 1694
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    invoke-virtual {v0, p1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPointKerned(Ljava/lang/String;F)F

    move-result v3

    .line 1698
    .local v3, w:F
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 1699
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1702
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    .line 1703
    .local v1, ft:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    if-eqz v1, :cond_1

    if-eq v1, v7, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 1704
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    .line 1705
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 1706
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    add-float/2addr v3, v4

    .line 1704
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1696
    .end local v1           #ft:I
    .end local v2           #i:I
    .end local v3           #w:F
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    invoke-virtual {v0, p1, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v3

    .restart local v3       #w:F
    goto :goto_0

    .line 1709
    .restart local v1       #ft:I
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4059

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_5

    .line 1710
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    mul-float/2addr v4, v3

    const/high16 v5, 0x42c8

    div-float v3, v4, v5

    .line 1713
    :cond_5
    return v3
.end method

.method public getHorizontalScaling()F
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    return v0
.end method

.method public getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    return-object v0
.end method

.method public getLeading()F
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    return v0
.end method

.method getPageResources()Lcom/itextpdf/text/pdf/PageResources;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    return-object v0
.end method

.method public getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    return-object v0
.end method

.method public getPdfWriter()Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    return-object v0
.end method

.method public getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1675
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v0

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    return v0
.end method

.method public getXTLM()F
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    return v0
.end method

.method public getYTLM()F
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    return v0
.end method

.method public lineTo(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " l"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 709
    return-void
.end method

.method public localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z
    .locals 1
    .parameter "name"
    .parameter "destination"

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    move-result v0

    return v0
.end method

.method public localGoto(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->localGoto(Ljava/lang/String;FFFF)V

    .line 2564
    return-void
.end method

.method public moveText(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1572
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1573
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Td"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1574
    return-void
.end method

.method public moveTextWithLeading(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1586
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1587
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    neg-float v1, p2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 1588
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " TD"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1589
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " m"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 697
    return-void
.end method

.method public newPath()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1021
    return-void
.end method

.method public newlineShowText(FFLjava/lang/String;)V
    .locals 3
    .parameter "wordSpacing"
    .parameter "charSpacing"
    .parameter "text"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1510
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1511
    invoke-direct {p0, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1516
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p2, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 1517
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 1518
    return-void
.end method

.method public newlineShowText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1497
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1499
    return-void
.end method

.method public newlineText()V
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1596
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "T*"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1597
    return-void
.end method

.method outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V
    .locals 6
    .parameter "color"
    .parameter "tint"

    .prologue
    const/high16 v5, 0x437f

    const/16 v4, 0x20

    .line 2350
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2351
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v1

    .line 2352
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 2373
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "invalid.color.type"

    invoke-static {v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2354
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2355
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2356
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2357
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2358
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2375
    .end local p1
    :goto_0
    return-void

    .line 2361
    .restart local p1
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .restart local p1
    :pswitch_2
    move-object v0, p1

    .line 2364
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2365
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2366
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2370
    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public paintShading(Lcom/itextpdf/text/pdf/PdfShading;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2458
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShading(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 2459
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2460
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getShadingReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addShading(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2461
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " sh"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2462
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShading;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2463
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2464
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2465
    :cond_0
    return-void
.end method

.method public paintShading(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 1
    .parameter "shading"

    .prologue
    .line 2472
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getShading()Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->paintShading(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 2473
    return-void
.end method

.method public rectangle(FFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v1, 0x20

    .line 779
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " re"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 780
    return-void
.end method

.method public rectangle(Lcom/itextpdf/text/Rectangle;)V
    .locals 8
    .parameter "rectangle"

    .prologue
    .line 936
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v2

    .line 937
    .local v2, x1:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v4

    .line 938
    .local v4, y1:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v3

    .line 939
    .local v3, x2:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v5

    .line 942
    .local v5, y2:F
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v0

    .line 943
    .local v0, background:Lcom/itextpdf/text/BaseColor;
    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 945
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 946
    sub-float v6, v3, v2

    sub-float v7, v5, v4

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 947
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 948
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 952
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->hasBorders()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 959
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->isUseVariableBorders()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 960
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->variableRectangle(Lcom/itextpdf/text/Rectangle;)V

    goto :goto_0

    .line 964
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidth()F

    move-result v6

    const/high16 v7, -0x4080

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_4

    .line 965
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidth()F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 969
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/Rectangle;->getBorderColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v1

    .line 970
    .local v1, color:Lcom/itextpdf/text/BaseColor;
    if-eqz v1, :cond_5

    .line 971
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    .line 975
    :cond_5
    const/16 v6, 0xf

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 976
    sub-float v6, v3, v2

    sub-float v7, v5, v4

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 998
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 1000
    if-eqz v1, :cond_1

    .line 1001
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    goto :goto_0

    .line 980
    :cond_7
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 981
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 982
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 984
    :cond_8
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 985
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 986
    invoke-virtual {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 988
    :cond_9
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 989
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 990
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 992
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/Rectangle;->hasBorder(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 993
    invoke-virtual {p0, v2, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 994
    invoke-virtual {p0, v3, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    goto :goto_1
.end method

.method public remoteGoto(Ljava/lang/String;IFFFF)V
    .locals 7
    .parameter "filename"
    .parameter "page"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;IFFFF)V

    .line 2613
    return-void
.end method

.method public remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 7
    .parameter "filename"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfDocument;->remoteGoto(Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 2600
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset(Z)V

    .line 1279
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "validateContent"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->reset()V

    .line 1288
    if-eqz p1, :cond_0

    .line 1289
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->sanityCheck()V

    .line 1291
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 1292
    return-void
.end method

.method public resetCMYKColorFill()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 0 0 1 k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 657
    return-void
.end method

.method public resetCMYKColorStroke()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 0 0 1 K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 686
    return-void
.end method

.method public resetGrayFill()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 501
    return-void
.end method

.method public resetGrayStroke()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 522
    return-void
.end method

.method public resetRGBColorFill()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 572
    return-void
.end method

.method public resetRGBColorStroke()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "0 G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 600
    return-void
.end method

.method public restoreState()V
    .locals 3

    .prologue
    .line 1333
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v2, "Q"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1334
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1335
    .local v0, idx:I
    if-gez v0, :cond_0

    .line 1336
    new-instance v1, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v2, "unbalanced.save.restore.state.operators"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    .line 1338
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1339
    return-void
.end method

.method public roundRectangle(FFFFF)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "r"

    .prologue
    const/4 v1, 0x0

    .line 2624
    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    .line 2625
    add-float/2addr p1, p3

    .line 2626
    neg-float p3, p3

    .line 2628
    :cond_0
    cmpg-float v0, p4, v1

    if-gez v0, :cond_1

    .line 2629
    add-float/2addr p2, p4

    .line 2630
    neg-float p4, p4

    .line 2632
    :cond_1
    cmpg-float v0, p5, v1

    if-gez v0, :cond_2

    .line 2633
    neg-float p5, p5

    .line 2634
    :cond_2
    const v7, 0x3ee538ef

    .line 2635
    .local v7, b:F
    add-float v0, p1, p5

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 2636
    add-float v0, p1, p3

    sub-float/2addr v0, p5

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2637
    add-float v0, p1, p3

    mul-float v1, p5, v7

    sub-float v1, v0, v1

    add-float v3, p1, p3

    mul-float v0, p5, v7

    add-float v4, p2, v0

    add-float v5, p1, p3

    add-float v6, p2, p5

    move-object v0, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2638
    add-float v0, p1, p3

    add-float v1, p2, p4

    sub-float/2addr v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2639
    add-float v1, p1, p3

    add-float v0, p2, p4

    mul-float v2, p5, v7

    sub-float v2, v0, v2

    add-float v0, p1, p3

    mul-float v3, p5, v7

    sub-float v3, v0, v3

    add-float v4, p2, p4

    add-float v0, p1, p3

    sub-float v5, v0, p5

    add-float v6, p2, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2640
    add-float v0, p1, p5

    add-float v1, p2, p4

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2641
    mul-float v0, p5, v7

    add-float v1, p1, v0

    add-float v2, p2, p4

    add-float v0, p2, p4

    mul-float v3, p5, v7

    sub-float v4, v0, v3

    add-float v0, p2, p4

    sub-float v6, v0, p5

    move-object v0, p0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2642
    add-float v0, p2, p5

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 2643
    mul-float v0, p5, v7

    add-float v2, p2, v0

    mul-float v0, p5, v7

    add-float v3, p1, v0

    add-float v5, p1, p5

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 2644
    return-void
.end method

.method public sanityCheck()V
    .locals 2

    .prologue
    .line 3161
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->mcDepth:I

    if-eqz v0, :cond_0

    .line 3162
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.marked.content.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3164
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->inText:Z

    if-eqz v0, :cond_1

    .line 3165
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.begin.end.text.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3167
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->layerDepth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3168
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.layer.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3170
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3171
    new-instance v0, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;

    const-string/jumbo v1, "unbalanced.save.restore.state.operators"

    invoke-static {v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/exceptions/IllegalPdfSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3173
    :cond_3
    return-void
.end method

.method public saveState()V
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "q"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1325
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->stateList:Ljava/util/ArrayList;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    return-void
.end method

.method public setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V
    .locals 6
    .parameter "action"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfDocument;->setAction(Lcom/itextpdf/text/pdf/PdfAction;FFFF)V

    .line 2655
    return-void
.end method

.method public setCMYKColorFill(IIII)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x437f

    .line 2147
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2148
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2149
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2150
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2151
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p3, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2152
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p4, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2154
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2155
    return-void
.end method

.method public setCMYKColorFillF(FFFF)V
    .locals 2
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperCMYK(FFFF)V

    .line 647
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " k"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 648
    return-void
.end method

.method public setCMYKColorStroke(IIII)V
    .locals 4
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    const/16 v3, 0x20

    const/high16 v2, 0x437f

    .line 2174
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2175
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2176
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2177
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2178
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p3, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2179
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2180
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    and-int/lit16 v1, p4, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2181
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2182
    return-void
.end method

.method public setCMYKColorStrokeF(FFFF)V
    .locals 2
    .parameter "cyan"
    .parameter "magenta"
    .parameter "yellow"
    .parameter "black"

    .prologue
    .line 675
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperCMYK(FFFF)V

    .line 676
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " K"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 677
    return-void
.end method

.method public setCharacterSpacing(F)V
    .locals 2
    .parameter "charSpace"

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->charSpace:F

    .line 1348
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Tc"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1349
    return-void
.end method

.method public setColorFill(Lcom/itextpdf/text/BaseColor;)V
    .locals 9
    .parameter "color"

    .prologue
    .line 2269
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v6, 0x1

    invoke-static {v5, v6, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2270
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v4

    .line 2271
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 2297
    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setRGBColorFill(III)V

    .line 2299
    .end local p1
    :goto_0
    return-void

    .line 2273
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayFill(F)V

    goto :goto_0

    .restart local p1
    :pswitch_1
    move-object v0, p1

    .line 2277
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2278
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v7

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCMYKColorFillF(FFFF)V

    goto :goto_0

    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    move-object v3, p1

    .line 2282
    check-cast v3, Lcom/itextpdf/text/pdf/SpotColor;

    .line 2283
    .local v3, spot:Lcom/itextpdf/text/pdf/SpotColor;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    goto :goto_0

    .end local v3           #spot:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_3
    move-object v1, p1

    .line 2287
    check-cast v1, Lcom/itextpdf/text/pdf/PatternColor;

    .line 2288
    .local v1, pat:Lcom/itextpdf/text/pdf/PatternColor;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PatternColor;->getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    goto :goto_0

    .end local v1           #pat:Lcom/itextpdf/text/pdf/PatternColor;
    :pswitch_4
    move-object v2, p1

    .line 2292
    check-cast v2, Lcom/itextpdf/text/pdf/ShadingColor;

    .line 2293
    .local v2, shading:Lcom/itextpdf/text/pdf/ShadingColor;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ShadingColor;->getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingFill(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto :goto_0

    .line 2271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setColorFill(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 4
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2308
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2309
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2310
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2311
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2312
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " cs "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " scn"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2313
    return-void
.end method

.method public setColorStroke(Lcom/itextpdf/text/BaseColor;)V
    .locals 9
    .parameter "color"

    .prologue
    .line 2232
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v6, 0x1

    invoke-static {v5, v6, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2233
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v4

    .line 2234
    .local v4, type:I
    packed-switch v4, :pswitch_data_0

    .line 2260
    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v5

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v6

    invoke-virtual {p1}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfContentByte;->setRGBColorStroke(III)V

    .line 2262
    .end local p1
    :goto_0
    return-void

    .line 2236
    .restart local p1
    :pswitch_0
    check-cast p1, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setGrayStroke(F)V

    goto :goto_0

    .restart local p1
    :pswitch_1
    move-object v0, p1

    .line 2240
    check-cast v0, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 2241
    .local v0, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v5

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v6

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v7

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->setCMYKColorStrokeF(FFFF)V

    goto :goto_0

    .end local v0           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    move-object v3, p1

    .line 2245
    check-cast v3, Lcom/itextpdf/text/pdf/SpotColor;

    .line 2246
    .local v3, spot:Lcom/itextpdf/text/pdf/SpotColor;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V

    goto :goto_0

    .end local v3           #spot:Lcom/itextpdf/text/pdf/SpotColor;
    :pswitch_3
    move-object v1, p1

    .line 2250
    check-cast v1, Lcom/itextpdf/text/pdf/PatternColor;

    .line 2251
    .local v1, pat:Lcom/itextpdf/text/pdf/PatternColor;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PatternColor;->getPainter()Lcom/itextpdf/text/pdf/PdfPatternPainter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V

    goto :goto_0

    .end local v1           #pat:Lcom/itextpdf/text/pdf/PatternColor;
    :pswitch_4
    move-object v2, p1

    .line 2255
    check-cast v2, Lcom/itextpdf/text/pdf/ShadingColor;

    .line 2256
    .local v2, shading:Lcom/itextpdf/text/pdf/ShadingColor;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ShadingColor;->getPdfShadingPattern()Lcom/itextpdf/text/pdf/PdfShadingPattern;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->setShadingStroke(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    goto :goto_0

    .line 2234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setColorStroke(Lcom/itextpdf/text/pdf/PdfSpotColor;F)V
    .locals 4
    .parameter "sp"
    .parameter "tint"

    .prologue
    .line 2321
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2322
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2323
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2324
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2325
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->colorDetails:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2326
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " CS "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " SCN"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2327
    return-void
.end method

.method public setDefaultColorspace(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 3052
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v0

    .line 3053
    .local v0, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PageResources;->addDefaultColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3054
    return-void
.end method

.method public setFlatness(F)V
    .locals 2
    .parameter "flatness"

    .prologue
    .line 327
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c8

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " i"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 330
    :cond_0
    return-void
.end method

.method public setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V
    .locals 5
    .parameter "bf"
    .parameter "size"

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 1392
    const v2, 0x38d1b717

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const v2, -0x472e48e9

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 1393
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "font.size.too.small.1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1394
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->size:F

    .line 1395
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;

    move-result-object v3

    iput-object v3, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    .line 1396
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 1397
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getFontName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 1398
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v2, v2, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addFont(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 1399
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " Tf"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1400
    return-void
.end method

.method public setGState(Lcom/itextpdf/text/pdf/PdfGState;)V
    .locals 5
    .parameter "gstate"

    .prologue
    .line 2972
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleExtGState(Lcom/itextpdf/text/pdf/PdfDictionary;)[Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 2973
    .local v1, obj:[Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2974
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addExtGState(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2975
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " gs"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2976
    return-void
.end method

.method public setGrayFill(F)V
    .locals 2
    .parameter "gray"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " g"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 493
    return-void
.end method

.method public setGrayStroke(F)V
    .locals 2
    .parameter "gray"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " G"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 514
    return-void
.end method

.method public setHorizontalScaling(F)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->scale:F

    .line 1368
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Tz"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1369
    return-void
.end method

.method public setLeading(F)V
    .locals 2
    .parameter "leading"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->leading:F

    .line 1381
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " TL"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1382
    return-void
.end method

.method public setLineCap(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 343
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " J"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 346
    :cond_0
    return-void
.end method

.method public setLineDash(F)V
    .locals 2
    .parameter "phase"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "[] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 361
    return-void
.end method

.method public setLineDash(FF)V
    .locals 2
    .parameter "unitsOn"
    .parameter "phase"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 377
    return-void
.end method

.method public setLineDash(FFF)V
    .locals 2
    .parameter "unitsOn"
    .parameter "unitsOff"
    .parameter "phase"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " d"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 394
    return-void
.end method

.method public final setLineDash([FF)V
    .locals 3
    .parameter "array"
    .parameter "phase"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 410
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 412
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 410
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string/jumbo v2, " d"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 415
    return-void
.end method

.method public setLineJoin(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 428
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " j"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 431
    :cond_0
    return-void
.end method

.method public setLineWidth(F)V
    .locals 2
    .parameter "w"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " w"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 444
    return-void
.end method

.method public setLiteral(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2669
    return-void
.end method

.method public setLiteral(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2676
    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2662
    return-void
.end method

.method public setMiterLimit(F)V
    .locals 2
    .parameter "miterLimit"

    .prologue
    .line 458
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " M"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 461
    :cond_0
    return-void
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 2334
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2335
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getDefaultColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V

    .line 2343
    :goto_0
    return-void

    .line 2338
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2339
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2340
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2341
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2342
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " cs "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " scn"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "p"
    .parameter "color"

    .prologue
    .line 2382
    invoke-static {p2}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 2383
    check-cast v0, Lcom/itextpdf/text/pdf/SpotColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 2386
    :goto_0
    return-void

    .line 2385
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    goto :goto_0
.end method

.method public setPatternFill(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 6
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 2394
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2395
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2396
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "an.uncolored.pattern.was.expected"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2397
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 2398
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2399
    .local v2, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2400
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePatternColorspace(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v1

    .line 2401
    .local v1, csDetail:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2402
    .local v0, cName:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " cs"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2403
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V

    .line 2404
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " scn"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2405
    return-void
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 2442
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2443
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getDefaultColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V

    .line 2451
    :goto_0
    return-void

    .line 2446
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2447
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v1

    .line 2448
    .local v1, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2449
    .local v0, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2450
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " CS "

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    const-string/jumbo v3, " SCN"

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "p"
    .parameter "color"

    .prologue
    .line 2412
    invoke-static {p2}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    move-object v0, p2

    .line 2413
    check-cast v0, Lcom/itextpdf/text/pdf/SpotColor;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/SpotColor;->getTint()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    .line 2416
    :goto_0
    return-void

    .line 2415
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V

    goto :goto_0
.end method

.method public setPatternStroke(Lcom/itextpdf/text/pdf/PdfPatternPainter;Lcom/itextpdf/text/BaseColor;F)V
    .locals 6
    .parameter "p"
    .parameter "color"
    .parameter "tint"

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->checkWriter()V

    .line 2425
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->isStencil()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2426
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "an.uncolored.pattern.was.expected"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2427
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v3

    .line 2428
    .local v3, prs:Lcom/itextpdf/text/pdf/PageResources;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2429
    .local v2, name:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v2

    .line 2430
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimplePatternColorspace(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v1

    .line 2431
    .local v1, csDetail:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    .line 2432
    .local v0, cName:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " CS"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2433
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->outputColorNumbers(Lcom/itextpdf/text/BaseColor;F)V

    .line 2434
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    const-string/jumbo v5, " SCN"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2435
    return-void
.end method

.method public setRGBColorFill(III)V
    .locals 4
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/high16 v3, 0x437f

    .line 2202
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    and-int/lit16 v2, p3, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 2203
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " rg"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2204
    return-void
.end method

.method public setRGBColorFillF(FFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 563
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " rg"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 564
    return-void
.end method

.method public setRGBColorStroke(III)V
    .locals 4
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    const/high16 v3, 0x437f

    .line 2223
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v3

    and-int/lit16 v1, p2, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    and-int/lit16 v2, p3, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 2224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " RG"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2225
    return-void
.end method

.method public setRGBColorStrokeF(FFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"

    .prologue
    .line 589
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfContentByte;->HelperRGB(FFF)V

    .line 590
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, " RG"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 591
    return-void
.end method

.method public setShadingFill(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2480
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShadingPattern(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    .line 2481
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2482
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2483
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " cs "

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " scn"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2484
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2485
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2486
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2487
    :cond_0
    return-void
.end method

.method public setShadingStroke(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 5
    .parameter "shading"

    .prologue
    .line 2494
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShadingPattern(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V

    .line 2495
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getPageResources()Lcom/itextpdf/text/pdf/PageResources;

    move-result-object v2

    .line 2496
    .local v2, prs:Lcom/itextpdf/text/pdf/PageResources;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getPatternReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addPattern(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 2497
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " CS "

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    const-string/jumbo v4, " SCN"

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2498
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getColorDetails()Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v0

    .line 2499
    .local v0, details:Lcom/itextpdf/text/pdf/ColorDetails;
    if-eqz v0, :cond_0

    .line 2500
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getColorName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PageResources;->addColor(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    .line 2501
    :cond_0
    return-void
.end method

.method public setTextMatrix(FF)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 1561
    move-object v0, p0

    move v3, v2

    move v4, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1562
    return-void
.end method

.method public setTextMatrix(FFFFFF)V
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "d"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0x20

    .line 1533
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p5, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->xTLM:F

    .line 1534
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p6, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->yTLM:F

    .line 1535
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Tm"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1538
    return-void
.end method

.method public setTextMatrix(Ljava/awt/geom/AffineTransform;)V
    .locals 10
    .parameter "transform"

    .prologue
    .line 1547
    const/4 v0, 0x6

    new-array v7, v0, [D

    .line 1548
    .local v7, matrix:[D
    invoke-virtual {p1, v7}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 1549
    const/4 v0, 0x0

    aget-wide v0, v7, v0

    double-to-float v1, v0

    const/4 v0, 0x1

    aget-wide v2, v7, v0

    double-to-float v2, v2

    const/4 v0, 0x2

    aget-wide v3, v7, v0

    double-to-float v3, v3

    const/4 v0, 0x3

    aget-wide v4, v7, v0

    double-to-float v4, v4

    const/4 v0, 0x4

    aget-wide v5, v7, v0

    double-to-float v5, v5

    const/4 v0, 0x5

    aget-wide v8, v7, v0

    double-to-float v6, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FFFFFF)V

    .line 1551
    return-void
.end method

.method public setTextRenderingMode(I)V
    .locals 2
    .parameter "rendering"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Tr"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1409
    return-void
.end method

.method public setTextRise(F)V
    .locals 2
    .parameter "rise"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Ts"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1420
    return-void
.end method

.method public setWordSpacing(F)V
    .locals 2
    .parameter "wordSpace"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iput p1, v0, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->wordSpace:F

    .line 1358
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    const-string/jumbo v1, " Tw"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1359
    return-void
.end method

.method public showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 2516
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v4, v4, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v4, :cond_0

    .line 2517
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "font.and.size.must.be.set.before.writing.any.text"

    invoke-static {v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2518
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2519
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTextArray;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2520
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 2521
    .local v2, lastWasNumber:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2522
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2523
    check-cast v3, Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 2524
    const/4 v2, 0x0

    goto :goto_0

    .line 2527
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_1
    if-eqz v2, :cond_2

    .line 2528
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2531
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    check-cast v3, Ljava/lang/Float;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    goto :goto_0

    .line 2530
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 2534
    .end local v3           #obj:Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v5, "]TJ"

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 2535
    return-void
.end method

.method public showText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1441
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText2(Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "Tj"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1443
    return-void
.end method

.method public showTextAligned(ILjava/lang/String;FFF)V
    .locals 7
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1725
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFFZ)V

    .line 1726
    return-void
.end method

.method public showTextAlignedKerned(ILjava/lang/String;FFF)V
    .locals 7
    .parameter "alignment"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "rotation"

    .prologue
    .line 1781
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->showTextAligned(ILjava/lang/String;FFFZ)V

    .line 1782
    return-void
.end method

.method public showTextKerned(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1481
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    if-nez v1, :cond_0

    .line 1482
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "font.and.size.must.be.set.before.writing.any.text"

    invoke-static {v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->state:Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;

    iget-object v1, v1, Lcom/itextpdf/text/pdf/PdfContentByte$GraphicState;->fontDetails:Lcom/itextpdf/text/pdf/FontDetails;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/FontDetails;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 1484
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->hasKernPairs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1485
    invoke-static {p1, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getKernArray(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/PdfTextArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Lcom/itextpdf/text/pdf/PdfTextArray;)V

    .line 1488
    :goto_0
    return-void

    .line 1487
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public stroke()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const-string/jumbo v1, "S"

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1029
    return-void
.end method

.method public toPdf(Lcom/itextpdf/text/pdf/PdfWriter;)[B
    .locals 1
    .parameter "writer"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->sanityCheck()V

    .line 246
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)V
    .locals 5
    .parameter "af"

    .prologue
    const/16 v4, 0x20

    .line 3035
    const/4 v1, 0x6

    new-array v0, v1, [D

    .line 3036
    .local v0, arr:[D
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    .line 3037
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3038
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->content:Lcom/itextpdf/text/pdf/ByteBuffer;

    const/4 v2, 0x3

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x5

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(D)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    const-string/jumbo v2, " cm"

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfContentByte;->separator:I

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/ByteBuffer;->append_i(I)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 3039
    return-void
.end method

.method public variableRectangle(Lcom/itextpdf/text/Rectangle;)V
    .locals 24
    .parameter "rect"

    .prologue
    .line 799
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v17

    .line 800
    .local v17, t:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v3

    .line 801
    .local v3, b:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    .line 802
    .local v16, r:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v15

    .line 803
    .local v15, l:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthTop()F

    move-result v21

    .line 804
    .local v21, wt:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthBottom()F

    move-result v18

    .line 805
    .local v18, wb:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthRight()F

    move-result v20

    .line 806
    .local v20, wr:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderWidthLeft()F

    move-result v19

    .line 807
    .local v19, wl:F
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorTop()Lcom/itextpdf/text/BaseColor;

    move-result-object v14

    .line 808
    .local v14, ct:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorBottom()Lcom/itextpdf/text/BaseColor;

    move-result-object v6

    .line 809
    .local v6, cb:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorRight()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    .line 810
    .local v13, cr:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Rectangle;->getBorderColorLeft()Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    .line 811
    .local v11, cl:Lcom/itextpdf/text/BaseColor;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 812
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 813
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 814
    const/4 v12, 0x0

    .line 815
    .local v12, clw:F
    const/4 v8, 0x0

    .line 816
    .local v8, cdef:Z
    const/4 v7, 0x0

    .line 817
    .local v7, ccol:Lcom/itextpdf/text/BaseColor;
    const/4 v9, 0x0

    .line 818
    .local v9, cdefi:Z
    const/4 v10, 0x0

    .line 820
    .local v10, cfil:Lcom/itextpdf/text/BaseColor;
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-lez v22, :cond_0

    .line 821
    move/from16 v12, v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 822
    const/4 v8, 0x1

    .line 823
    if-nez v14, :cond_13

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 827
    :goto_0
    move-object v7, v14

    .line 828
    const/high16 v22, 0x4000

    div-float v22, v21, v22

    sub-float v22, v17, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 829
    const/high16 v22, 0x4000

    div-float v22, v21, v22

    sub-float v22, v17, v22

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 834
    :cond_0
    const/16 v22, 0x0

    cmpl-float v22, v18, v22

    if-lez v22, :cond_4

    .line 835
    cmpl-float v22, v18, v12

    if-eqz v22, :cond_1

    .line 836
    move/from16 v12, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 837
    :cond_1
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 838
    :cond_2
    const/4 v8, 0x1

    .line 839
    if-nez v6, :cond_14

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 843
    :goto_1
    move-object v7, v6

    .line 845
    :cond_3
    const/high16 v22, 0x4000

    div-float v22, v18, v22

    add-float v22, v22, v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 846
    const/high16 v22, 0x4000

    div-float v22, v18, v22

    add-float v22, v22, v3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 851
    :cond_4
    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-lez v22, :cond_a

    .line 852
    cmpl-float v22, v20, v12

    if-eqz v22, :cond_5

    .line 853
    move/from16 v12, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 854
    :cond_5
    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 855
    :cond_6
    const/4 v8, 0x1

    .line 856
    if-nez v13, :cond_15

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 860
    :goto_2
    move-object v7, v13

    .line 862
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v5

    .line 863
    .local v5, bt:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v4

    .line 864
    .local v4, bb:Z
    const/high16 v22, 0x4000

    div-float v22, v20, v22

    sub-float v23, v16, v22

    if-eqz v5, :cond_16

    move/from16 v22, v17

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 865
    const/high16 v22, 0x4000

    div-float v22, v20, v22

    sub-float v23, v16, v22

    if-eqz v4, :cond_17

    move/from16 v22, v3

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 867
    if-eqz v5, :cond_8

    if-nez v4, :cond_a

    .line 868
    :cond_8
    const/4 v9, 0x1

    .line 869
    if-nez v13, :cond_18

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 873
    :goto_5
    move-object v10, v13

    .line 874
    if-nez v5, :cond_9

    .line 875
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 876
    sub-float v22, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 877
    sub-float v22, v16, v20

    sub-float v23, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 880
    :cond_9
    if-nez v4, :cond_a

    .line 881
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 882
    add-float v22, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 883
    sub-float v22, v16, v20

    add-float v23, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 890
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_a
    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-lez v22, :cond_12

    .line 891
    cmpl-float v22, v19, v12

    if-eqz v22, :cond_b

    .line 892
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineWidth(F)V

    .line 893
    :cond_b
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 894
    :cond_c
    if-nez v11, :cond_19

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorStroke()V

    .line 899
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v5

    .line 900
    .restart local v5       #bt:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v4

    .line 901
    .restart local v4       #bb:Z
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v23, v15, v22

    if-eqz v5, :cond_1a

    move/from16 v22, v17

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 902
    const/high16 v22, 0x4000

    div-float v22, v19, v22

    add-float v23, v15, v22

    if-eqz v4, :cond_1b

    move/from16 v22, v3

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 904
    if-eqz v5, :cond_e

    if-nez v4, :cond_12

    .line 905
    :cond_e
    if-eqz v9, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->compareColors(Lcom/itextpdf/text/BaseColor;Lcom/itextpdf/text/BaseColor;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 906
    :cond_f
    if-nez v11, :cond_1c

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->resetRGBColorFill()V

    .line 911
    :cond_10
    :goto_9
    if-nez v5, :cond_11

    .line 912
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 913
    sub-float v22, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 914
    add-float v22, v15, v19

    sub-float v23, v17, v21

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 917
    :cond_11
    if-nez v4, :cond_12

    .line 918
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 919
    add-float v22, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 920
    add-float v22, v15, v19

    add-float v23, v3, v18

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 925
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 926
    return-void

    .line 826
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_0

    .line 842
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_1

    .line 859
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_2

    .line 864
    .restart local v4       #bb:Z
    .restart local v5       #bt:Z
    :cond_16
    sub-float v22, v17, v21

    goto/16 :goto_3

    .line 865
    :cond_17
    add-float v22, v3, v18

    goto/16 :goto_4

    .line 872
    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_5

    .line 897
    .end local v4           #bb:Z
    .end local v5           #bt:Z
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorStroke(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_6

    .line 901
    .restart local v4       #bb:Z
    .restart local v5       #bt:Z
    :cond_1a
    sub-float v22, v17, v21

    goto/16 :goto_7

    .line 902
    :cond_1b
    add-float v22, v3, v18

    goto/16 :goto_8

    .line 909
    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_9
.end method
