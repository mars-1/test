.class public Lcom/itextpdf/text/pdf/parser/RegionTextRenderFilter;
.super Lcom/itextpdf/text/pdf/parser/RenderFilter;
.source "RegionTextRenderFilter.java"


# instance fields
.field private final filterRect:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Ljava/awt/geom/Rectangle2D;)V
    .locals 0
    .parameter "filterRect"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/RenderFilter;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/RegionTextRenderFilter;->filterRect:Ljava/awt/geom/Rectangle2D;

    .line 64
    return-void
.end method


# virtual methods
.method public allowText(Lcom/itextpdf/text/pdf/parser/TextRenderInfo;)Z
    .locals 17
    .parameter "renderInfo"

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/parser/TextRenderInfo;->getBaseline()Lcom/itextpdf/text/pdf/parser/LineSegment;

    move-result-object v11

    .line 71
    .local v11, segment:Lcom/itextpdf/text/pdf/parser/LineSegment;
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v12

    .line 72
    .local v12, startPoint:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v10

    .line 74
    .local v10, endPoint:Lcom/itextpdf/text/pdf/parser/Vector;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v13

    .line 75
    .local v13, x1:F
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v15

    .line 76
    .local v15, y1:F
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v14

    .line 77
    .local v14, x2:F
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v16

    .line 79
    .local v16, y2:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/text/pdf/parser/RegionTextRenderFilter;->filterRect:Ljava/awt/geom/Rectangle2D;

    float-to-double v2, v13

    float-to-double v4, v15

    float-to-double v6, v14

    move/from16 v0, v16

    float-to-double v8, v0

    invoke-virtual/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D;->intersectsLine(DDDD)Z

    move-result v1

    return v1
.end method
